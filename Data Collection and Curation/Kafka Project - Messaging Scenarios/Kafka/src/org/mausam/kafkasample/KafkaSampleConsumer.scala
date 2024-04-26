package org.mausam.kafkasample

import java.util.Properties
import org.apache.kafka.clients.consumer.{ConsumerRecord, KafkaConsumer}
import scala.collection.JavaConverters._

class KafkaSampleConsumer(private val consumerName: String) extends Runnable {
  private val TOPIC_NAME = "spark_topic"
  private val GROUP_ID = "test-consumer"
  private val POLL_DURATION_MS = 50

  override def run(): Unit = {
    val consumer = new KafkaConsumer[String, String](getConfig())
    consumer.subscribe(java.util.Collections.singletonList(TOPIC_NAME))

    try {
      while (true) {
        val records = consumer.poll(POLL_DURATION_MS).asScala
        for (record <- records) {
          println(s"Consumer - $consumerName, Partition: ${record.partition()}, offset: ${record.offset()}, ${record.key()}, ${record.value()}")
        }
        Thread.sleep(2000) // Sleep for 2 seconds
      }
    } catch {
      case ex: Exception => ex.printStackTrace()
    } finally {
      consumer.close()
    }
  }

  private def getConfig(): Properties = {
    val config = new Properties()
    config.put("bootstrap.servers", "localhost:9092")
    config.put("group.id", GROUP_ID)
    config.put("enable.auto.commit", "true")
    config.put("auto.commit.interval.ms", "1000")
    config.put("connections.max.idle.ms", "1000")
    config.put("key.deserializer", "org.apache.kafka.common.serialization.StringDeserializer")
    config.put("value.deserializer", "org.apache.kafka.common.serialization.StringDeserializer")
    config
  }
}
