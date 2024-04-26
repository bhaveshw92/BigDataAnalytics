# Container (Docker) Setup with Hadoop, Hive, Spark, Kafka, and MongoDB

This project aims to create a Docker image containing Hadoop, Hive, Spark, Kafka, and MongoDB, and deploy it as a container. The Docker image will be exported to Docker Hub as a public image under the group number.

## Steps:

1. **Create Docker Image:**
   - Build a Docker image including Hadoop, Hive, Spark, Kafka, and MongoDB.
   - Name the image according to the group number.

2. **Export to Docker Hub:**
   - Push the Docker image to Docker Hub as a public image.

3. **Launch Container:**
   - Use the Docker image created in step 1 to launch a container.
   - Verify the functionality of each component:
     - Ensure all Hadoop services are up and running. Execute an HDFS command.
     - Start Hive and verify its functionality (`Hive> `).
     - Start Spark and verify its functionality (`Scala> `).
     - Start Kafka and send a message from producer to consumer to demonstrate its functionality.
     - Start MongoDB and log in to verify its functionality.

## Video Demonstration:

- 3-minute video demonstrating the setup and functionality of each component in the Docker container.

## File Structure:

- **Dockerfile:** Contains instructions to build the Docker image.
- **docker-compose.yml:** Defines the services to be run in the Docker container.
- **hdfs_commands.txt:** Includes sample HDFS commands to verify Hadoop functionality.
- **hive_commands.txt:** Includes sample Hive commands to verify Hive functionality.
- **spark_commands.txt:** Includes sample Spark commands to verify Spark functionality.
- **kafka_commands.txt:** Includes sample Kafka commands to verify Kafka functionality.
- **mongo_commands.txt:** Includes sample MongoDB commands to verify MongoDB functionality.

## Execution Steps:

1. Build the Docker image: docker build -t group_number_image 

2. Push the Docker image to Docker Hub: docker push group_number_image

3. Launch the Docker container: docker-compose up -d


## Conclusion:

This project demonstrates the creation of a Docker image containing various big data technologies and the deployment of a container with these components. It provides a convenient and portable environment for testing and development purposes.
