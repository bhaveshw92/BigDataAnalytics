package org.mausam.kafkasample

object Initiator {
  def main(args: Array[String]): Unit = {
    val producerThread = new Thread(KafkaSampleProducer)
    val consumerThread = new Thread(new KafkaSampleConsumer("kafka_consumer"))

    producerThread.start()
    consumerThread.start()

    producerThread.join()
    consumerThread.join()
  }
}
