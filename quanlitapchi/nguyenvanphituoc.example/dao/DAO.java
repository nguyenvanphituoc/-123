package dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

import model.Journal;
import model.User;
import dbprovider.DBConnection;
public class DAO {
	public String authenticateUser(User  loginBean)
	{

		String userName = loginBean.getUsername(); //Keeping user entered values in temporary variables.
		String password = loginBean.getPassword();
		int 	role = loginBean.getuClass();
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;

		String userNameDB = "";
		String passwordDB = "";
		String IDUserDB ="";
		int    roleDB   = -1;
		try
		{
			con = DBConnection.createConnection(); //establishing connection
			statement = con.createStatement(); //Statement is used to write queries. Read more about it.
			resultSet = statement.executeQuery("select * from userlogin where uLoginName =" + "'" + userName +"'"); //Here table name is users and userName,password are columns. fetching all the records and storing in a resultSet.

			//			while(resultSet.next()) // Until next row is present otherwise it return false
			//			{

			if(resultSet.next()){

				userNameDB = resultSet.getString("uLoginName"); //fetch the values present in database
				passwordDB = resultSet.getString("uLoginPass");
				IDUserDB  = resultSet.getString("idUserLogin");	

				resultSet.close();				

				resultSet = statement.executeQuery("select * from user where idUser =" + "'" + IDUserDB +"'"); //Here table name is users and userName,password are columns. fetching all the records and storing in a resultSet.
				resultSet.next();

				roleDB = resultSet.getInt("uClass");

				loginBean.setuhashCode(resultSet.getString("uCode"));
				loginBean.setID(resultSet.getString("idUser"));
				loginBean.setuActive(resultSet.getInt("uActive"));
				loginBean.setuFirstname(resultSet.getString("uFirstname"));
				loginBean.setuLastname(resultSet.getString("uLastname"));
				loginBean.setuuEmail(resultSet.getString("uEmail"));
				loginBean.setuClass(resultSet.getInt("uClass"));

				resultSet.close();
			}
			if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB == role && loginBean.getuActive() == 1)
			{	
				return "SUCCESS"; ////If the user entered values are already present in database, which means user has already registered so I will return SUCCESS message.
			}
			else{
				loginBean.setuhashCode(null);
				loginBean.setID(null);
				loginBean.setuActive(-1);
				loginBean.setuFirstname(null);
				loginBean.setuLastname(null);
				loginBean.setuuEmail(null);
				loginBean.setuClass(-1);
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return "Invalid user credentials. Please check your username or passwd. \n Make sure you chose correct role"; // Just returning appropriate message otherwise
	}
	public int register(User Bean, StringBuilder error){
		Connection con = null;
		Statement statement = null;
		int resultSet = 0;
		try{
			con = DBConnection.createConnection(); //establishing connection
			statement = con.createStatement(); //Statement is used to write queries. Read more about it.
			resultSet = statement.executeUpdate("INSERT INTO `qltc`.`user` (`idUser`, `uFirstname`, `uLastname`, `uEmail`, `uCode`, `uActive`, `uClass`) VALUES "
					+ "('"+Bean.getID()+"', CAST('" + Bean.getuFirstname() + "' as char character set utf8), CAST('" + Bean.getuLastname() + "' as char character set utf8),'" + 
					Bean.getuEmail() + "','" + Bean.gethashCode() + "',"+ Bean.getuActive()  +"," + Bean.getuClass() + ")");	
			resultSet = statement.executeUpdate("INSERT INTO `qltc`.`userlogin` (`idUserLogin`, `uLoginName`, `uLoginPass`) VALUES  ('"+
					Bean.getID()+"','" + Bean.getUsername() + "','" + Bean.getPassword()+ "')") & resultSet;
			// send mail
			if(resultSet > 0){
				return 1;
			}
		}
		catch(SQLException e)
		{
			error.append(e.getMessage());
			e.printStackTrace();
		}
		return 0;
	}
	public int manuscriptJournal(Journal jo, ArrayList<String> author, ArrayList<String> autDes, StringBuilder error){
		Connection con = null;
		Statement statement = null;
		int resultSet = 0;
		try{
			con = DBConnection.createConnection(); //establishing connection
			statement = con.createStatement(); //Statement is used to write queries. Read more about it.
			resultSet = statement.executeUpdate("INSERT INTO `qltc`.`journal` (`joName`, `joSubmit`, `joStt`, `subID`, `joComent`, `jobyKeywd`) VALUES " +
					"(CAST('"+jo.getName()+"' as char character set utf8), '" + jo.getSubmitDate() + "', " + jo.getStatus() + "," + 
					jo.getSubID() + ",'" + jo.getComent() + "', '"+ jo.getKeywd()  +"')");
			ResultSet rs= statement.executeQuery("select  jo.joID as id from journal jo order by jo.joID desc limit 1");
			//get id inserted nearly
			rs.next(); int joID = rs.getInt("id");
			
			int n = author.size();
			for(int i = 0; i <= n; i++){
				resultSet = statement.executeUpdate("INSERT INTO `qltc`.`joandaut` (`idUser`, `joID`, `byDescription`) VALUES  ('"+
				author.get(i)+"','" + joID + "','" + autDes.get(i)+ "')");
			}

			// send mail
			if(resultSet > 0){
				return 1;
			}
		}
		catch(SQLException e)
		{
			error.append(e.getMessage());
			e.printStackTrace();
		}
		return 0;
	}
	public ArrayList<Journal> search(String query, StringBuilder error){
		Connection con = null;
		Statement statement = null;
		ArrayList<Journal> list=new ArrayList<Journal>();
		try{
			String myquery = "%"+query + "%";
			con = DBConnection.createConnection(); //establishing connection
			String sql = "select distinct jo.joID as id, jo.joName as name, jo.joSubmit as submitdate, jo.joStt as status,  "+
					"jo.joComent as coment, jo.subID as subid, jo.jobyKeywd as keywd, sj.subName as subjectname "+
					"from `qltc`.`journal` jo  inner join subject sj on jo.subID = sj.subID "+
					"where match(jo.jobyKeywd, jo.joName, jo.joComent) against('"+myquery+"' in natural language mode) ;";
			statement = con.createStatement(); //Statement is used to write queries. Read more about it.
			ResultSet rs= statement.executeQuery(sql);			
			while(rs.next()){

				int joID = rs.getInt("id");
				String joName = rs.getString("name") ;
				String joSubmit = rs.getString("submitdate");
				int joStt = rs.getInt("status");
				int subID =  rs.getInt("subid");
				String subName = rs.getString("subjectname");
				String joComent = rs.getString("coment") ;
				String keywd = rs.getString("keywd");
				Journal jo = new Journal(joID, joName, joSubmit, joStt, subID, subName, joComent, keywd);

				list.add(jo);
			}
			rs.close();
		}
		catch(SQLException e)
		{
			error.append(e.getMessage());
			e.printStackTrace();
		}
		return list;
	}

}