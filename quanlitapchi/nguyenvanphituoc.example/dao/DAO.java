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
import model.Reviewer;
import model.Subject;
import model.User;
import dbprovider.DBConnection;
public class DAO {
	public ArrayList<User> managerAccount(StringBuilder error){
		ArrayList<User> list=new ArrayList<User>();
		try{
			String mySql = "SELECT us.idUser as submitdate, us.uFirstname as firstname, us.uLastname as lastname, "+
					"us.uEmail as email, us.uActive as active, us.uCode as hashcode, us.uClass as role, "+
					"lg.uLoginName as username, lg.uLoginPass as passwd "+
					"FROM qltc.user us inner join userlogin lg on us.idUser = lg.idUserLogin; ";
			ResultSet rs= DBConnection.fnExecuteQuery(mySql, error);			
			while(rs.next()){

				String submitdate = rs.getString("submitdate");
				String firstname = rs.getString("firstname") ;
				String lastname = rs.getString("lastname");
				String email = rs.getString("email");
				int active =  rs.getInt("active");
				String hashcode = rs.getString("hashcode");
				int role = rs.getInt("role") ;
				String username = rs.getString("username");
				String passwd = rs.getString("passwd");
				User us = new User(username, passwd, firstname, lastname, email, role, active, submitdate, hashcode);

				list.add(us);
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
	public String authenticateUser(User  loginBean)
	{

		String userName = loginBean.getUsername(); //Keeping user entered values in temporary variables.
		String password = loginBean.getPassword();
		int 	role = loginBean.getuClass();
		ResultSet resultSet = null;

		String userNameDB = "";
		String passwordDB = "";
		String IDUserDB ="";
		int    roleDB   = -1;
		String error = "";
		try
		{
			String sql = "select * from userlogin where uLoginName ='" + userName +"'";
			resultSet = DBConnection.fnExecuteQuery(sql, null); //Here table name is users and userName,password are columns. fetching all the records and storing in a resultSet.

			//			while(resultSet.next()) // Until next row is present otherwise it return false
			//			{

			if(resultSet.next()){

				userNameDB = resultSet.getString("uLoginName"); //fetch the values present in database
				passwordDB = resultSet.getString("uLoginPass");
				IDUserDB  = resultSet.getString("idUserLogin");	

				resultSet.close();				
				sql = "select * from user where idUser =" + "'" + IDUserDB +"'";
				resultSet = DBConnection.fnExecuteQuery(sql, null); //Here table name is users and userName,password are columns. fetching all the records and storing in a resultSet.
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
			if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB == role && loginBean.getuActive() > 0)
			{	
				return "SUCCESS"; ////If the user entered values are already present in database, which means user has already registered so I will return SUCCESS message.
			}
			else{
				if(loginBean.getuActive() == 0){
					error += " Your account was blocked!";
				}
				loginBean.setuhashCode(null);
				loginBean.setID(null);
				loginBean.setuActive(-1);
				loginBean.setuFirstname(null);
				loginBean.setuLastname(null);
				loginBean.setuuEmail(null);
				loginBean.setuClass(-1);
				error += "\r\n Invalid user credentials. Please check your username or passwd. \n Make sure you chose correct role";

			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return error; // Just returning appropriate message otherwise
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
			resultSet = statement.executeUpdate("INSERT INTO `qltc`.`journal` (`joName`, `joSubmit`, `joStt`, `subID`, `joComent`, `jobyKeywd`, `joAuthor`) VALUES " +
					"(CAST('"+jo.getName()+"' as char character set utf8), '" + jo.getSubmitDate() + "', " + jo.getStatus() + "," + 
					jo.getSubID() + ",'" + jo.getComent() + "', '"+ jo.getKeywd()  +"', '"+ jo.getAuthor() +"')");
			//			ResultSet rs= statement.executeQuery("select  jo.joID as id from journal jo order by jo.joID desc limit 1");
			//			//get id inserted nearly
			//			rs.next(); int joID = rs.getInt("id");

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
					"jo.joComent as coment, jo.subID as subid, jo.jobyKeywd as keywd, jo.joAuthor as author, sj.subName as subjectname "+
					"from `qltc`.`journal` jo  inner join subject sj on jo.subID = sj.subID "+
					"where match(jo.jobyKeywd, jo.joName, jo.joComent, jo.joAuthor) against('"+myquery+"' in natural language mode) or "+
					"match(sj.subName, sj.subDescription) against('"+myquery+"' in natural language mode) and jo.joStt = 5;";
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
				String author = rs.getString("author");
				Journal jo = new Journal(joID, joName, joSubmit, joStt, subID, subName, joComent, keywd, author);

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
	public ArrayList<Subject> searchSubject(StringBuilder error){
		Connection con = null;
		Statement statement = null;
		ArrayList<Subject> list=new ArrayList<Subject>();
		try{
			con = DBConnection.createConnection(); //establishing connection
			String sql = "select distinct * from qltc.subject";
			statement = con.createStatement(); //Statement is used to write queries. Read more about it.
			ResultSet rs= statement.executeQuery(sql);			
			while(rs.next()){

				int id = rs.getInt("subID");
				String name = rs.getString("subName") ;
				String desc = rs.getString("subDescription");
				Subject sub = new Subject(id, name, desc);

				list.add(sub);
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
	public int updateUser(User Bean, StringBuilder error){
		int resultSet = 0;
		try{
			String sql = "Update  user set uFirstname='"+Bean.getuFirstname()+"', uLastname = '"+Bean.getuLastname()+"', "
					+ " uActive = "+Bean.getuActive()+", uClass = "+ Bean.getuClass() +
					" where idUser = '"+Bean.getID()+"';";
			resultSet = DBConnection.fnExecuteUpdate(sql, error);
			if(resultSet > 0){
				sql = "Update  userlogin set uLoginPass='"+Bean.getPassword()+"' "+
						" where idUserLogin = '"+Bean.getID()+"' and uLoginName ='"+Bean.getUsername()+"'; ";
				resultSet = DBConnection.fnExecuteUpdate(sql, error);
				// send mail
				if(resultSet > 0){
					return 1;
				}
			}
		}
		catch(Exception e)
		{
			error.append(e.getMessage());
			e.printStackTrace();
		}
		return 0;
	}
	public int deleteUnit(String id, String id2, String tablename, StringBuilder error){
		int resultSet = 0;
		try{
			switch (tablename) {
			case "user":
				String sql = "Delete  from userlogin where  idUserLogin ='"+id+"';";
				resultSet = DBConnection.fnExecuteUpdate(sql, error);
				if(resultSet > 0){
					sql = "Delete  from "+tablename+" where  idUser ='"+id+"';";
					resultSet = DBConnection.fnExecuteUpdate(sql, error);
					// send mail
					if(resultSet > 0){
						return 1;
					}
				}
				break;
			case "review":
					String mySql = "Delete  from "+tablename+" where  joID ='"+id2+"' and idUser ='"+id+"';";
					resultSet= DBConnection.fnExecuteUpdate(mySql, error);
					if(resultSet > 0){
						return 1;
					}
				break;
			default:
				break;
			}
			
		}
		catch(Exception e)
		{
			error.append(e.getMessage());
			e.printStackTrace();
		}
		return 0;
	}
	public int myListReview(User Bean, StringBuilder error){
		try{
			String mySql = "SELECT distinct jo.*, rev.revComment, rev.revStt, sub.subName " +
							" FROM qltc.review rev inner join journal jo "+
							" on rev.joID = jo.joID inner join user us "+
							" on us.idUser = rev.idUser inner join subject sub "+
							" on sub.subID = jo.joID"+
							" where us.idUser = '"+Bean.getID()+"';";
			ResultSet rs= DBConnection.fnExecuteQuery(mySql, error);
			Bean.listRev.clear();
			while(rs.next()){

				int joID = rs.getInt("joID");
				String joName = rs.getString("joName") ;
				String joSubmit = rs.getString("joSubmit");
				int joStt = rs.getInt("joStt");
				int subID =  rs.getInt("subID");
				String subName = rs.getString("subName");
				String joComent = rs.getString("joComent") ;
				String keywd = rs.getString("jobyKeywd");
				String author = rs.getString("joAuthor");
				Journal jo = new Journal(joID, joName, joSubmit, joStt, subID, subName, joComent, keywd, author);
				
				int revstt = rs.getInt("revStt");
				String revComment = rs.getString("revComment");
				
				Reviewer rev = new Reviewer(revComment, revstt, jo, null);
				
				Bean.listRev.add(rev);
			}
			rs.close();
			return 1;
		}
		catch(SQLException e)
		{
			error.append(e.getMessage());
			e.printStackTrace();
		}
		return 0;
	}
}