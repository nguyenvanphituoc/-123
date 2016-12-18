package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.ArrayList;

import dao.DAO;
import model.Journal;



@WebServlet("/searchJournal")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public SearchController() {
		super();
		// TODO Auto-generated constructor stub
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		String searchText=request.getParameter("keyword");
		StringBuilder error = new StringBuilder();
		try 
		{			
			ArrayList<Journal> list=new ArrayList<Journal>();	
			DAO da = new DAO();
			list = da.search(searchText, error);

			if(error.toString().equals(""))
			{	
				request.getServletContext().setAttribute("checksearch", true);
				request.getServletContext().setAttribute("listjournal", list);
				response.sendRedirect(request.getContextPath()+"/jsp/search.jsp");
			}
			else {
				//If authenticateUser() function returns other than SUCCESS string it will be sent to Login page again. Here the error message returned from function has been stored in a errMessage key.				
				getServletContext().setAttribute("errMessage", error);
				response.sendRedirect(request.getContextPath()+"/jsp/404.jsp");
				
			}
		} 
		catch (Exception e) {
			error.append(e.getMessage());
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		String searchText=request.getParameter("keyword");
		StringBuilder error = new StringBuilder();
		try 
		{			
			ArrayList<Journal> list=new ArrayList<Journal>();	
			DAO da = new DAO();
			list = da.search(searchText, error);

			request.setAttribute("checksearch","TRUE");
			request.setAttribute("listjournal", list);

			if(error.equals(""))
			{	

			}
			else {
				//If authenticateUser() function returns other than SUCCESS string it will be sent to Login page again. Here the error message returned from function has been stored in a errMessage key.				
				getServletContext().setAttribute("errMessage", error);
				response.sendRedirect(request.getContextPath()+"/jsp/404.jsp");
			}
		} 
		catch (Exception e) {
			error.append(e.getMessage());
			e.printStackTrace();
		}
	}

}
