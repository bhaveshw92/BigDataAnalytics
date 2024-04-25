import java.sql.{Connection, DriverManager, PreparedStatement}
import scala.io.Source

object MaliciousIPFetcher {
  def main(args: Array[String]): Unit = {
    val url = "https://raw.githubusercontent.com/BlancRay/Malicious-ip/master/ips" // Replace with the actual URL containing the malicious IPs
    
    // MySQL database configuration
    val dbUrl = "jdbc:mysql://localhost:3306/threat_ intelligence" 
    val dbUsername = "root" 
    val dbPassword = "root" 
    
    // Establish a connection to the MySQL database
    Class.forName("com.mysql.jdbc.Driver")
    val connection: Connection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword)
    
    // Delete the 'malicious_ips' table if it exists
    deleteTableIfExists(connection)
    
    // Create the table if it doesn't exist
    createTable(connection)
    
    // Read the contents of the URL
    val maliciousIPs = Source.fromURL(url).getLines().toList
    
    // Prepare the SQL statement for inserting malicious IPs into the database
    val insertStatement: PreparedStatement = connection.prepareStatement("INSERT INTO malicious_ips (ip_address) VALUES (?)")
    
    // Iterate over the malicious IPs and insert them into the database one at a time
    maliciousIPs.foreach { ip =>
      val ipAddress = ip.split("/")(0).trim() // Extract the IP address
      
      insertStatement.setString(1, ipAddress)
      insertStatement.executeUpdate()
    }
    
    // Close the database connection and resources
    insertStatement.close()
    connection.close()
  }
  
  def deleteTableIfExists(connection: Connection): Unit = {
    val deleteTableStatement: PreparedStatement = connection.prepareStatement("DROP TABLE IF EXISTS malicious_ips")
    deleteTableStatement.executeUpdate()
    deleteTableStatement.close()
  }
  
  def createTable(connection: Connection): Unit = {
    val createTableStatement: PreparedStatement = connection.prepareStatement(
      """
        |CREATE TABLE malicious_ips (
        |  id INT AUTO_INCREMENT PRIMARY KEY,
        |  ip_address VARCHAR(500)
        |)
        |""".stripMargin
    )
    createTableStatement.executeUpdate()
    createTableStatement.close()
  }
}
