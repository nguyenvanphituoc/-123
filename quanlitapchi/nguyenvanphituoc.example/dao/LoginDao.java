package dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import model.User;
import dbprovider.DBConnection;
public class LoginDao {
	public String authenticateUser(User loginBean)
	{

		String userName = loginBean.getUsername(); //Keeping user entered values in temporary variables.
		String password = loginBean.getPassword();

		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;

		String userNameDB = "";
		String passwordDB = "";

		try
		{
			con = DBConnection.createConnection(); //establishing connection
			statement = con.createStatement(); //Statement is used to write queries. Read more about it.
			resultSet = statement.executeQuery("select * from userlogin where uLoginName =" + "'" + userName +"'"); //Here table name is users and userName,password are columns. fetching all the records and storing in a resultSet.

			while(resultSet.next()) // Until next row is present otherwise it return false
			{
				userNameDB = resultSet.getString("uLoginName"); //fetch the values present in database
				passwordDB = resultSet.getString("uLoginPass");

				if(userName.equals(userNameDB) && password.equals(passwordDB))
				{
					loginBean.setuhashCode(resultSet.getString("uCode"));
					loginBean.setID(resultSet.getString("idUser"));
					loginBean.setuActive(resultSet.getInt("uActive"));
					loginBean.setuFirstname(resultSet.getString("uFirstname"));
					loginBean.setuLastname(resultSet.getString("uLastname"));
					loginBean.setuuEmail(resultSet.getString("uEmail"));
					loginBean.setuClass(resultSet.getInt("uClass"));					
					return "SUCCESS"; ////If the user entered values are already present in database, which means user has already registered so I will return SUCCESS message.
				}
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return "Invalid user credentials"; // Just returning appropriate message otherwise

	}
}