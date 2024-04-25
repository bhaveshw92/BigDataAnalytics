import org.apache.spark.SparkConf
import org.apache.spark.streaming.{Seconds, StreamingContext}
import org.apache.spark.storage.StorageLevel
import org.apache.spark.streaming.kinesis.KinesisUtils
import com.amazonaws.services.kinesis.clientlibrary.lib.worker.InitialPositionInStream
import com.amazonaws.services.kinesis.AmazonKinesisClientBuilder
import java.util.regex.Pattern
import java.net.InetAddress
import java.nio.charset.StandardCharsets
import java.util.UUID
import org.apache.spark.rdd.RDD
import org.apache.spark.streaming.dstream.DStream
import org.apache.spark.storage.StorageLevel
import java.sql.{Connection, DriverManager, PreparedStatement}
import scala.collection.JavaConverters._
import java.sql.{Connection, DriverManager, ResultSet}


object KinesisSparkStreamingApp {
  // Regular expression pattern to extract IP addresses
  val ipAddressPattern: Pattern = Pattern.compile("\\b(?:\\d{1,3}\\.){3}\\d{1,3}\\b")

  // Function to check if an IP address is malicious
  def isMaliciousIP(ip: String, maliciousIPs: Set[String]): Boolean = {
    maliciousIPs.contains(ip)
  }

  def main(args: Array[String]): Unit = {
    // Set up Spark Streaming context
    val sparkConf = new SparkConf().setAppName("KinesisSparkStreamingApp")
    val ssc = new StreamingContext(sparkConf, Seconds(5))

    // Set up Kinesis client and worker
    val kinesisClient = AmazonKinesisClientBuilder.defaultClient()
    val workerId = s"${InetAddress.getLocalHost.getCanonicalHostName}:${UUID.randomUUID()}"
    val kinesisConfig = new KinesisClientLibConfiguration(
      "kinesis_app",
      "kinesis_stream",
      kinesisClient,
      workerId
    ).withInitialPositionInStream(InitialPositionInStream.LATEST)
    val worker = new Worker.Builder()
      .recordProcessorFactory(new KinesisRecordProcessorFactory())
      .config(kinesisConfig)
      .build()

    // Start the worker to process Kinesis stream
    val streamProcessingThread = new Thread(worker)
    streamProcessingThread.start()

    // Load malicious IPs from database or external source
    val maliciousIPs: Set[String] = loadMaliciousIPs()

    // Create a connection to the database
    val connection: Connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/threat_ intelligence", "root", "root")

    // Function to insert malicious events into the database
    def insertMaliciousEvent(rawEvent: String, maliciousIPs: List[String]): Unit = {
      val insertStatement: PreparedStatement = connection.prepareStatement("INSERT INTO malicious_event_details (raw_event, malicious_ips) VALUES (?, ?)")
      insertStatement.setString(1, rawEvent)
      insertStatement.setString(2, maliciousIPs.toArray.mkString(","))
      insertStatement.executeUpdate()
    }

    // Process the Kinesis stream
    val kinesisStream = KinesisUtils.createStream(
      ssc,
      "kinesis_app",
      "accesslogs",
      "kinesis.us-east-1.amazonaws.com:443",
      "us-east-1",
      InitialPositionInStream.LATEST,
      Seconds(5),
      StorageLevel.MEMORY_AND_DISK_2
    )

    kinesisStream.foreachRDD { rdd =>
    rdd.foreachPartition { partition =>
      val connection: Connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/threat_ intelligence", "root", "root")
      val insertStatement: PreparedStatement = connection.prepareStatement("INSERT INTO malicious_event_details (raw_event, malicious_ips) VALUES (?, ?)")
  
      partition.foreach { record =>
        val event = new String(record.getData.array(), StandardCharsets.UTF_8)
        val ips = ipAddressPattern.matcher(event).findAll().asScala.toList
  
        ips.foreach { ip =>
          if (isMaliciousIP(ip, maliciousIPs)) {
            insertStatement.setString(1, event)
            insertStatement.setString(2, maliciousIPs.toArray.mkString(","))
            insertStatement.executeUpdate()
          }
        }
      }
  
      insertStatement.close()
      connection.close()
    }
  }

    // Start the Spark Streaming context
    ssc.start()
    ssc.awaitTermination()
  }

  // Function to load malicious IPs from a database table
  def loadMaliciousIPs(): Set[String] = {
    val connection: Connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/threat_ intelligence", "root", "root")
    val query: String = "SELECT ip_address FROM malicious_ips_2"
    val statement = connection.createStatement()
    val resultSet: ResultSet = statement.executeQuery(query)
    
    var maliciousIPs: Set[String] = Set.empty[String]
    while (resultSet.next()) {
      val ip: String = resultSet.getString("ip_address")
      maliciousIPs += ip
    }
    
    resultSet.close()
    statement.close()
    connection.close()
    
    maliciousIPs
  }
}
