package dbprovider;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnection {
	public static Connection createConnection()
	 {
		 Connection con = null;
		 String url = "jdbc:mysql://127.0.0.1:3306/qltc?autoReconnect=true&useSSL=false"; //for SQL and oracle or any other db server this url differs. where ravi is the database name and 3306 is the port where mysql is running
		 String username = "root"; //username of database user
		 String password = "123123123"; //password
	
		try
		 {
			 try
			 {
				 Class.forName("com.mysql.jdbc.Driver");// differs from DB server to server
			 }
			 catch (ClassNotFoundException e)
			 {
				 e.printStackTrace();
			 }		
			con = DriverManager.getConnection(url, username, password);	
		 }
		 catch (Exception e)
		 {
			 e.printStackTrace();
		 }
	
		return con;
	 }
	public static ResultSet fnExecuteQuery(String sqlStatement, StringBuilder error){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try{
			con = DBConnection.createConnection(); //establishing connection
			statement = con.createStatement(); //Statement is used to write queries. Read more about it.
			resultSet = statement.executeQuery(sqlStatement); //Here table name is users and userName,password are columns. fetching all the records and storing in a resultSet.

		}
		catch(SQLException sqlex){
			if(error != null)
			error.append("\r\n"+sqlex.getMessage());
		}
		catch(Exception ex){
			if(error != null)
			error.append("\r\n"+ex.getMessage());
		}
		return resultSet;
	}
	public static int fnExecuteUpdate(String sqlStatement, StringBuilder error){
		Connection con = null;
		Statement statement = null;
		int resultSet = 0;
		try{
			con = DBConnection.createConnection(); //establishing connection
			statement = con.createStatement(); //Statement is used to write queries. Read more about it.
			resultSet = statement.executeUpdate(sqlStatement); //Here table name is users and userName,password are columns. fetching all the records and storing in a resultSet.

		}
		catch(SQLException sqlex){
			if(error != null)
			error.append("\r\n"+sqlex.getMessage());
		}
		catch(Exception ex){
			if(error != null)
			error.append("\r\n"+ex.getMessage());
		}
		return resultSet;
	}
}

