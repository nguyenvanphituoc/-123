package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;

/**
 * Servlet implementation class DeleteUserController
 */
@WebServlet("/jsp/deleteuser.html")
public class DeleteUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteUserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		DAO da  = new DAO(); 
		StringBuilder error = new StringBuilder();
		try{
			String id = request.getParameter("id");
			String tablename = request.getParameter("tb");
			String email = request.getParameter("email");
			int userValidate = da.deleteUnit(id, null, tablename, error);

			if(userValidate != 0) //If function returns success string then user will be rooted to Home page
			{				
				//request.setAttribute("user", loginBean); //with setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
				request.getServletContext().setAttribute("action_actor", "Xóa Thành Công tài khoản đăng ký ngày :" + id
														+"\r\n Email : " + email);
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
