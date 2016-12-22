package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;
import model.User;

/**
 * Servlet implementation class UpdaeUserController
 */
@WebServlet("/jsp/adminupdate")
public class UpdaeUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdaeUserController() {
		super();
		// TODO Auto-generated constructor stub
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User loginBean = new User(); //creating object for LoginBean class, which is a normal java class, contains just setters and getters. Bean classes are efficiently used in java to access user information wherever required in the application.

		loginBean.setUsername(request.getParameter("username")); //1//setting the username and password through the loginBean object then only you can get it in future.
		loginBean.setPassword(request.getParameter("passwd"));//2
		loginBean.setuClass(Integer.parseInt(request.getParameter("role")));//3
		loginBean.setuFirstname(request.getParameter("firstname"));//4
		loginBean.setuLastname(request.getParameter("lastname"));//5
		loginBean.setID(request.getParameter("idU"));//6
		loginBean.setuActive(Integer.parseInt(request.getParameter("stt")));//7
		loginBean.setuuEmail(request.getParameter("idU"));//8

		DAO da  = new DAO(); //creating object for LoginDao. This class contains main logic of the application.
		StringBuilder error = new StringBuilder();
		try{
			int userValidate = da.updateUser(loginBean, error);

			if(userValidate != 0) //If function returns success string then user will be rooted to Home page
			{
				//request.setAttribute("user", loginBean); //with setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
				request.getServletContext().setAttribute("action_actor", "Cập nhật thành công user : " + loginBean.getUsername()
																		+"\r\n Email : " + loginBean.getuEmail());
				response.sendRedirect(request.getContextPath() + "/jsp/admin.jsp");
				//response.sendRedirect(request.getContextPath()+"/jsp/success.jsp");
			}
			else
			{				
				request.getServletContext().setAttribute("errMessage", error);
				response.sendRedirect(request.getContextPath() + "/jsp/404.jsp");
			}
		}
		catch(Exception ex){
			error.append(ex.getMessage());
			request.getServletContext().setAttribute("errMessage", error);
			response.sendRedirect(request.getContextPath() + "/jsp/404.jsp");
		}
	}

}
