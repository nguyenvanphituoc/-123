package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import dao.DAO;
import model.Fileupload;
import model.Journal;

/**
 * Servlet implementation class FileUploadController
 */
@WebServlet("/jsp/uploadfile")
public class SubmitManuscriptController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// location to store file uploaded
	private static final String UPLOAD_DIRECTORY = "journals";

	// upload settings
	private static final int MEMORY_THRESHOLD 	= 1024 * 1024 * 3; 	// 3MB
	private static final int MAX_FILE_SIZE 		= 1024 * 1024 * 40; // 40MB
	private static final int MAX_REQUEST_SIZE	= 1024 * 1024 * 50; // 50MB
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SubmitManuscriptController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		// checks if the request actually contains upload file
		StringBuilder error = new StringBuilder();
		Journal jo = new Journal();
		ArrayList<String> author = new ArrayList<String>();
		ArrayList<String> autDes = new ArrayList<String>();
		if (!ServletFileUpload.isMultipartContent(request)) {
			// if not, we stop here
			error.append(" Form must has enctype=multipart/form-data.");
			return;
		}

		// configures upload settings
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// sets memory threshold - beyond which files are stored in disk 
		factory.setSizeThreshold(MEMORY_THRESHOLD);
		// sets temporary location to store files
		factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

		ServletFileUpload upload = new ServletFileUpload(factory);

		// sets maximum size of upload file
		upload.setFileSizeMax(MAX_FILE_SIZE);

		// sets maximum size of request (include file + form data)
		upload.setSizeMax(MAX_REQUEST_SIZE);

		// constructs the directory path to store upload file
		// this path is relative to application's directory

		try {
			// parses the request's content to extract file data
			// preparing data
			@SuppressWarnings("unchecked")
			List<FileItem> formItems = upload.parseRequest(request);
			List<FileItem> fileitems = formItems;
			if (formItems != null && formItems.size() > 0) {
				StringBuilder keywd = new StringBuilder();
				String contentype = new String();
				// iterates over form's fields
				for (FileItem item : formItems) {	
					String fieldname = item.getFieldName();
					String fieldvalue = item.getString();
					// processes only fields that are not form fields
					if(item.isFormField()){						
						if (fieldname.equals("fullname")) {
							jo.setAuthor(fieldvalue.trim());
							author.add(fieldvalue);
						} else if (fieldname.equals("desc")) {
							autDes.add(fieldvalue.trim());
							jo.setComent(fieldvalue.trim());//4
						}
						else if(fieldname.contains("keywd")){
							keywd.append(fieldvalue + ", ");
						}						
						else if(fieldname.equals("subject")){
							jo.setSubID(Integer.parseInt(fieldvalue));//2
						}
						else if(fieldname.equals("joname")){
							jo.setName(fieldvalue.trim());//3
						}					
					}
					else{
						
						contentype = item.getName().substring(item.getName().indexOf("."));
					}
				}
				jo.setStt(0);//5						
				DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
				LocalDate now = LocalDate.now();
				jo.setSubmitDate(dtf.format(now).toString());//6
				jo.setKeywd(keywd.toString());//1
				
				String filename = fileName(Integer.toString(jo.getSubID()), jo.getSubmitDate(), jo.getName(), contentype);
				//up file before up to database
				Fileupload.Upload(request, fileitems, filename, error);
				// up to database
				if(error.toString().equals("") || error == null){
					DAO da = new DAO();
					da.manuscriptJournal(jo, author, autDes, error);
				}
				
			}
		}
		catch (Exception ex) 
		{
			error.append(ex.getMessage());
			request.getServletContext().setAttribute("errMessage", error);
			response.sendRedirect(request.getContextPath() + "/jsp/404.jsp");
		}
		//request.getRequestDispatcher(request.getHeader("referer").substring(request.getHeader("referer").lastIndexOf("/")+1)).forward(request, response);
		request.getServletContext().setAttribute("action_actor", "Thêm Thành Công Tạp Chí");
		response.sendRedirect(request.getContextPath() + "/jsp/author.jsp");
	}
	private String fileName(String subid,String submitDate, String Name, String type){
		return subid.trim()+"+"+submitDate.trim()+"+"+Name.trim()+type;
	}
}

