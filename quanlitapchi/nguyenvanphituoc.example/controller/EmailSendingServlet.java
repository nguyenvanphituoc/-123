package controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.EmailUtility;

/**
 * A servlet that takes message details from user and send it as a new e-mail
 * through an SMTP server.
 *
 * @author www.codejava.net
 *
 */
@WebServlet("/EmailSendingServlet")
public class EmailSendingServlet extends HttpServlet {
	private String host;
	private String port;
	private String user;
	private String pass;

	public void init() {
		// reads SMTP server setting from web.xml file
		ServletContext context = getServletContext();
		host = context.getInitParameter("host");
		port = context.getInitParameter("port");
		user = context.getInitParameter("user");
		pass = context.getInitParameter("pass");
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// reads form fields
		StringBuilder error = new StringBuilder();
		error.append("");
		String recipient = request.getParameter("email");
		String subject = "Complete Registration";
		String content = "Welcome to Web Science Journal \r\n"
				+ " \r\nYou can access members area at:http://localhost:8080/quanlitapchi/index.html \r\n"
				+ " \r\nYour email verify: "+ recipient+"\r\n"
				+ " \r\nOur members area allows you to enter control panel, setup new domains, access website builder, get file upload and account details and request support.\r\n"
				+ " \r\nIf you have any questions, please submit a ticket and we will be more than happy to assist you.\r\n"
				+ " \r\nSincerely,\r\n"
				+ " \r\nOur team\r\n"
				+ " \r\n..........\r\n"
				+" \r\nDo not reply to this email, this is automatically generated message.\r\n"; 
		try {
			EmailUtility.sendEmail(host, port, user, pass, recipient, subject,
					content);
			response.sendRedirect(request.getContextPath()+"/jsp/register_complete.jsp");
		} catch (Exception ex) {
			ex.printStackTrace();
			error.append("\n").append(ex.getMessage());
			getServletContext().setAttribute("errMessage", error);
			response.sendRedirect(request.getContextPath()+"/jsp/404.jsp");
		} 
				//If authenticateUser() function returns other than SUCCESS string it will be sent to Login page again. Here the error message returned from function has been stored in a errMessage key.				
				
				//request.getRequestDispatcher("jsp/404.jsp").forward(request, response);//forwarding the request
	}
}