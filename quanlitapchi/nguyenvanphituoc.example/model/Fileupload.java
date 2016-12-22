package model;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class Fileupload {
	// location to store file uploaded
	private static final String UPLOAD_DIRECTORY = "journals";
	// upload settings
	private static final int MEMORY_THRESHOLD 	= 1024 * 1024 * 3; 	// 3MB
	private static final int MAX_FILE_SIZE 		= 1024 * 1024 * 40; // 40MB
	private static final int MAX_REQUEST_SIZE	= 1024 * 1024 * 50; // 50MB
	public Fileupload() {
		super();
		// TODO Auto-generated constructor stub
	}
	public static void Upload(HttpServletRequest request, List<FileItem> fileitems, String filenewname, StringBuilder error){
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
		String uploadPath = request.getServletContext().getRealPath("")
				+ File.separator + UPLOAD_DIRECTORY;
		// creates the directory if it does not exist
		File uploadDir = new File(uploadPath);
		if (!uploadDir.exists()) {
			uploadDir.mkdir();
		}

		try {
			// parses the request's content to extract file data
			if (fileitems != null && fileitems.size() > 0) {
				// iterates over form's fields
				for (FileItem item : fileitems) {
					// processes only fields that are not form fields
					if (!item.isFormField()) {
						item.getFieldName();
						String filePath = uploadPath + File.separator + filenewname;
						File storeFile = new File(filePath);

						// saves the file on disk
						item.write(storeFile);								
					}
				}
			}
		} catch (Exception ex) {
			error.append(ex.getMessage());
		}
	}
}
