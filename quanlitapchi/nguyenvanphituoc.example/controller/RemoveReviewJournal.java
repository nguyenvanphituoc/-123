package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;
import model.Reviewer;

/**
 * Servlet implementation class RemoveReviewJournal
 */
@WebServlet("/jsp/rrj.html")
public class RemoveReviewJournal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveReviewJournal() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DAO da  = new DAO(); 
		StringBuilder error = new StringBuilder();
		try{
			String usid = request.getParameter("usid");
			String joid = request.getParameter("joid");
			String tablename = request.getParameter("tb");
			int userValidate = da.deleteUnit(usid, joid, tablename, error);

			if(userValidate != 0) //If function returns success string then user will be rooted to Home page
			{				
				//request.setAttribute("user", loginBean); //with setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
				request.getServletContext().setAttribute("action_actor", "Hủy Biện Luận Tập Chí THành Công");
				response.sendRedirect(request.getContextPath() + "/jsp/reviewer.jsp");
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
