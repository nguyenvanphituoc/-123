package controller;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.javafx.scene.layout.region.Margins.Converter;
import com.sun.javafx.scene.paint.GradientUtils.Parser;

import dao.DAO;
import model.User;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/jsp/login")
public class LoginControll extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginControll() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**/
	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);

	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Here username and password are the names which I have given in the input box in Login.jsp page. Here I am retrieving the values entered by the user and keeping in instance variables for further use.

		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		int userRole = Integer.parseInt(request.getParameter("class"));
		User loginBean = new User(); //creating object for LoginBean class, which is a normal java class, contains just setters and getters. Bean classes are efficiently used in java to access user information wherever required in the application.

		loginBean.setUsername(userName); //setting the username and password through the loginBean object then only you can get it in future.
		loginBean.setPassword(password);
		loginBean.setuClass(userRole);
		DAO loginDao  = new DAO(); //creating object for LoginDao. This class contains main logic of the application.

		String userValidate = loginDao.authenticateUser(loginBean); //Calling authenticateUser function

		request.getSession().setAttribute("user", loginBean);
		request.getSession().setMaxInactiveInterval(60*60);
		getServletContext().setAttribute("user", loginBean);
		getServletContext().setAttribute("errMessage", userValidate);
		if(userValidate.equals("SUCCESS")) //If function returns success string then user will be rooted to Home page
		{
			//request.setAttribute("user", loginBean); //with setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
			request.getRequestDispatcher("/jsp/success.jsp").forward(request, response);//RequestDispatcher is used to send the control to the invoked page.	

			//response.sendRedirect(request.getContextPath()+"/jsp/success.jsp");
		}
		else
		{				
			//If authenticateUser() function returns other than SUCCESS string it will be sent to Login page again. Here the error message returned from function has been stored in a errMessage key.
			//request.getRequestDispatcher("/jsp/failed.jsp").forward(request, response);//forwarding the request
			//getServletContext().setAttribute("error", userValidate);
			request.setAttribute("error", userValidate);
			request.getRequestDispatcher("/jsp/signin.jsp").forward(request, response);
			//response.sendRedirect(request.getContextPath()+"/jsp/signin.jsp");
		}

	}


}
