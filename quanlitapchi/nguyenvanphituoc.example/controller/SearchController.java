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



@WebServlet("/jsp/searchJournal")
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

			request.setAttribute("checksearch", true);
			request.setAttribute("listjournal", list);

		} 
		catch (Exception e) {
			error.append(e.getMessage());
			e.printStackTrace();
		}
		request.setAttribute("errMessage", error);
		RequestDispatcher rd = request.getRequestDispatcher("search.jsp");
		rd.forward(request,response);
//		request.getRequestDispatcher("search.jsp").forward(request, response);//RequestDispatcher is used to send the control to the invoked page.
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

			request.setAttribute("checksearch", true);
			request.setAttribute("listjournal", list);

		} 
		catch (Exception e) {
			error.append(e.getMessage());
			e.printStackTrace();
		}
		request.setAttribute("errMessage", error);
		RequestDispatcher rd = request.getRequestDispatcher("search.jsp");
		rd.forward(request,response);
	}

}
