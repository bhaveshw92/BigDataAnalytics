# Big Data Analytics Assignment

This repository contains the solutions and documentation for the Big Data Analytics assignment. The assignment consists of two main tasks related to Hadoop Distributed File System (HDFS) and MapReduce.

## Task 1: Transfer a File to HDP and Run HDFS Commands

### Description
In this task, we create a test file larger than 500 MB (e.g., zip a movie) and upload it to the Hadoop Distributed Platform (HDP). Then, we execute various HDFS commands.

#### Subtasks
- **a. Upload File to HDP**
  - Create a test file larger than 500 MB and upload it to HDP using WinSCP for file transfer.
  - Create a directory in HDFS and transfer the RAR file to the server.
- **b. Explore HDFS Commands**
  - Use the provided link to explore and execute five commands each from the DFS and FSCK commands.
    - **DFS Commands:**
      1. dfs -du
      2. dfs appendToFile
      3. dfs -ls
      4. dfs -mkdir
      5. dfs -put
      6. dfs -rmr
    - **FSCK Commands:**
      1. fsck block
      2. fsck file
      3. fsck location
      4. fsck racks
      5. fsck openforwrite

## Task 2: Run MapReduce Jar File

### Description
This task involves running a MapReduce Jar file on the Hadoop cluster. We follow the slides provided in Week 7 - Hadoop MapReduce Framework.

#### Subtasks
- **a. Transfer Files and Jar to Hadoop Cluster**
  - Use WinSCP to transfer the salesjan2009 file and the Jar file to the Hadoop cluster.
- **b. Execute MapReduce Command**
  - Login to Putty and execute the Hadoop command for running the MapReduce job.

## Usage
1. Clone this repository to your local machine.
2. Follow the instructions provided in the README.md file within each task folder to complete the tasks.
3. Refer to the provided lecture slides and documentation for guidance.
4. Execute commands mentioned in the documentation and provide necessary explanations and screenshots where required.

## Note
- Make sure to have access to a Hadoop cluster or Hadoop Distributed Platform (HDP) to execute the commands mentioned in the tasks.
- Ensure that you have necessary permissions and configurations set up for transferring files and executing Hadoop commands.
- Check the screenshots attached and the pdf file document for the execution of these tasks. 
