# MongoDB Assignment Setup

This repository contains instructions and steps to set up a MongoDB database for the assignment.

## Prerequisites

Before starting the assignment, ensure you have the following:

1. Access to https://cloud.mongodb.com/
2. MongoDB Atlas account.
3. Access to create a database using Shared Cluster.

## Steps to Setup MongoDB Assignment

1. **Login to MongoDB Atlas**
   - Login to https://cloud.mongodb.com/ using your credentials.

2. **Create Database**
   - Create a database using a Shared Cluster.
   - Give the cluster a name, e.g., "Assignment".

3. **Create Database User**
   - Create a user for database access:
     - Username: admin
     - Password: Admin@123

4. **Network Access Setting**
   - Allow access from your current IP address.

5. **Connect to Database**
   - Click on Connect and choose to connect via MongoDB Shell.
   - If you don't have MongoDB Shell installed:
     - Download mongosh 1.8.0.
     - Extract the zip file.
     - Place the folder inside "C:\Program Files (x86)\mongosh-1.8.0-win32-x64".
     - Add the mongosh binary to your PATH environment variable.

6. **Run Connection String**
   - Run the connection string in your command line (Windows Terminal or Command Prompt):
     ```
     mongosh "mongodb+srv://assignment.g4b75fj.mongodb.net/Assignment" --apiVersion 1 --username admin --password Admin@123
     ```

7. **Execute Script**
   - Copy the contents of movie.Script.txt from the provided URL.
   - Paste the script content inside the Command Prompt after connecting to MongoDB.

8. **Proof of Execution**
   - Upon successful execution, you will receive an output with details like acknowledged status and inserted IDs for the created collections.

## Proof of Execution

acknowledged: true,
insertedIds: {
'0': 'movie:1',
'1': 'movie:2',
'2': 'movie:3',
'3': 'movie:4',
'4': 'movie:5',
'5': 'movie:6',
'6': 'movie:7',
'7': 'movie:8',
'8': 'movie:9',
}


## Note

- Make sure to replace the connection string, username, and password with your actual MongoDB Atlas credentials.
- Ensure that the provided script is copied and executed accurately to create the required collections in the database.
