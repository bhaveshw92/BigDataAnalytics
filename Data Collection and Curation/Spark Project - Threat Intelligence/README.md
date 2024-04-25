**Threat Intelligence Data Engineering Project README**

This repository contains the documentation and code for a Threat Intelligence project focusing on static and dynamic detection using Data Engineering techniques.

### Project Overview

The project aims to detect malicious events in real-time by analyzing streaming data. It employs both static and dynamic detection methods to identify potential threats.
The solution aims to collect random logs from scala code, process them using Spark, and store the identified malicious logs in a database for future querying.
The project involves several steps, including setting up Logstash on a local system, configuring an IAM user with access to S3 and Kinesis, uploading a malicious IP (MIP) file to S3, saving the malicious IP addresses to the database, utilizing a Kinesis Data Stream, installing and creating a JAR file using Maven, running Spark services on Hadoop, and executing Spark commands on Hortonworks.

### Static Detection

In static detection, a preloaded list of malicious IPs is used within the Spark code. The Spark Streaming application listens to a Kinesis stream, processes incoming events, extracts IP addresses using regex, and checks them against the preloaded list. If a match is found, the event is considered malicious and inserted into a database for further analysis.

### Dynamic Detection

Dynamic detection involves using a pipeline created with Logstash for ETL (Extract, Transform, Load) operations. Logstash reads data from text files stored in an S3 bucket, extracts IPs from each line, and inserts them into a MySQL table. The Spark Streaming application then listens to the Kinesis stream, performs similar IP extraction and verification against the dynamic database of malicious IPs stored in MySQL.

### Database Schema

The project utilizes a MySQL database with two tables:
1. **malicious_ips**: Stores dynamically detected malicious IPs.
2. **malicious_event_details**: Stores details of detected malicious events, including raw event data and associated malicious IPs.

### Instructions for Reproduction

To reproduce the project, follow these steps:
1. Set up a Kinesis stream for data ingestion.
2. Update the necessary configuration constants in the Spark and Logstash code.
3. Create an IAM user with appropriate permissions for accessing Kinesis and S3.
4. Create an S3 bucket for storing text files containing malicious IPs.
5. Set up an RDS instance with MySQL and create the required database tables.
6. Configure Logstash for ETL operations, pointing to the S3 bucket and MySQL database.
7. Build and deploy the Spark application on an EMR cluster.
8. Monitor application status and data processing using the provided URLs.
9. Optionally, switch between static and dynamic modes for threat detection by following the specified steps.

### Walkthrough Video

A walkthrough video demonstrating the project setup, configuration, and execution will be added soon for reference.

### Conclusion

This project showcases proficiency in Data Engineering skills, including real-time data processing, database management, ETL pipeline creation, and streaming analytics for threat detection.
