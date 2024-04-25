import com.amazonaws.auth.BasicAWSCredentials
import com.amazonaws.auth.AWSStaticCredentialsProvider
import com.amazonaws.services.kinesis.AmazonKinesis
import com.amazonaws.services.kinesis.AmazonKinesisClientBuilder
import com.amazonaws.services.kinesis.model.{PutRecordRequest, PutRecordResult}
import java.nio.ByteBuffer
import java.util.UUID
import scala.util.Random

object LogSimulator {
  def main(args: Array[String]): Unit = {
    // Set up AWS credentials using the default provider chain
    
    val accessKey = ""
    val secretKey = ""

    val credentials = new BasicAWSCredentials(accessKey, secretKey)

    // Create an instance of the Kinesis client
    val kinesisClient = AmazonKinesisClientBuilder.standard()
      .withCredentials(new AWSStaticCredentialsProvider(credentials))
      .withRegion("us-east-1")
      .build()

    // Define the stream name
    val streamName = "accesslogs"

    
    // Generate logs and send them to Kinesis
    while (true) {
      val logMessage = generateLogMessage() // Generate log message in Apache Access Log - Common log format
      sendLogToKinesis(logMessage, streamName, kinesisClient)
      Thread.sleep(1000) // Sleep for 1 second between log generations
    }
  }

  def generateLogMessage(): String = {
    // Generate a log message in Apache Access Log - Common log format
    val random = new Random()

    // Generate random IP address
    val ipAddress = s"${random.nextInt(256)}.${random.nextInt(256)}.${random.nextInt(256)}.${random.nextInt(256)}"

    // Generate random timestamp
    val timestamp = System.currentTimeMillis()

    // Generate random request method
    val requestMethod = getRandomElement(List("GET", "POST", "PUT", "DELETE"))

    // Generate random request path
    val requestPath = getRandomElement(List("/path1", "/path2", "/path3", "/path4"))

    // Generate random HTTP status code
    val statusCode = getRandomElement(List("200", "404", "500"))

    // Generate random user agent
    val userAgent = getRandomElement(List("Chrome", "Firefox", "Safari", "Edge"))

    
    val logMessage = s"""$ipAddress - bhavesh - [$timestamp] "${requestMethod} ${requestPath} HTTP/1.1" $statusCode - "-" "$userAgent""""
    println(logMessage) // Print the log message
    logMessage // Return the log message
  }

  def getRandomElement[T](list: List[T]): T = {
    val random = new Random()
    list(random.nextInt(list.length))
  }

  def sendLogToKinesis(logMessage: String, streamName: String, kinesisClient: AmazonKinesis): PutRecordResult = {
    val partitionKey = UUID.randomUUID().toString
    val data = ByteBuffer.wrap(logMessage.getBytes("UTF-8"))

    val putRecordRequest = new PutRecordRequest()
      .withStreamName(streamName)
      .withPartitionKey(partitionKey)
      .withData(data)

    kinesisClient.putRecord(putRecordRequest)
  }
}
