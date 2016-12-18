package controller;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;
import model.EmailUtility;
import model.User;

/**
 * Servlet implementation class RegController
 */
@WebServlet("/register")
public class RegController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		StringBuilder error = new StringBuilder();
		User user = new User();
		user.setuFirstname(request.getParameter("first_name"));
		user.setuLastname(request.getParameter("last_name"));
		user.setuuEmail(request.getParameter("email"));
		user.setuClass(Integer.parseInt(request.getParameter("class")));
		user.setUsername(request.getParameter("user_name"));
		user.setPassword(request.getParameter("user_password"));
		user.setuhashCode(Integer.toHexString(request.getParameter("email").hashCode()));
		user.setuActive(1);
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
		LocalDateTime now = LocalDateTime.now();
		user.setID(dtf.format(now).toString());

		try{
			DAO register = new DAO();			
			int result = register.register(user, error); //Calling authenticateUser function
			request.getSession().setAttribute("user", user);
			getServletContext().setAttribute("user", user);
			if(result > 0){
				request.setAttribute("email", user.getuEmail());
				getServletContext().getRequestDispatcher("/EmailSendingServlet").forward(
						request, response);
			}
			else {
				if(!error.toString().equals(""))
				{				
					//If authenticateUser() function returns other than SUCCESS string it will be sent to Login page again. Here the error message returned from function has been stored in a errMessage key.				
					getServletContext().setAttribute("errMessage", error);
					response.sendRedirect(request.getContextPath()+"/jsp/404.jsp");

				}
			}		
		}
		catch (Exception e){
			e.printStackTrace();
			error.append("\n").append(e.getMessage());
		}
	}

}
