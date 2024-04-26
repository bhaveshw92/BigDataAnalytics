package org.mausam.kafkasample

import java.util.Properties
import org.apache.kafka.clients.producer.{KafkaProducer, ProducerRecord}

object KafkaSampleProducer extends Runnable {
  private val TOPIC_NAME = "spark_topic"
  private var ID: Long = 0

  override def run(): Unit = {
    val kafkaConfig = getConfig()
    val producer: KafkaProducer[String, String] = new KafkaProducer[String, String](kafkaConfig)

    while (true) {
      Thread.sleep(1000) // This will run in a loop. Every 1 second, it writes a message.
      val messageKey = "Key" + ID
      val messageValue = generateMessageContent()

      producer.send(new ProducerRecord[String, String](TOPIC_NAME, messageKey, messageValue))
      println(s"Producer-$messageKey: Message sent successfully")

      ID += 1
    }
    producer.close()
  }

  private def getConfig(): Properties = {
    val config = new Properties()
    config.put("bootstrap.servers", "localhost:9092")
    config.put("key.serializer", "org.apache.kafka.common.serialization.StringSerializer")
    config.put("value.serializer", "org.apache.kafka.common.serialization.StringSerializer")
    config
  }

  private def generateMessageContent(): String = {
    val name = s"John$ID"
    s"""{"name":"$name", "age":31, "city":"New York"}"""
  }
}
