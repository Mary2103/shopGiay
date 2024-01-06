package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import bo.ThuongHieuBo;

/**
 * Servlet implementation class AdminThemTH
 */
@WebServlet("/AdminThemTH")
public class AdminThemTH extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminThemTH() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");// client gui len server bang utf-8
		response.setCharacterEncoding("UTF-8");
		
		ThuongHieuBo thbo = new ThuongHieuBo();
		
		
		DiskFileItemFactory factory = new DiskFileItemFactory();
		DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
		String dirUrl1 = request.getServletContext().getRealPath("") + File.separator + "image_sach";
//		response.getWriter().println(dirUrl1);

		try {
			if (request.getContentLength() <= 0) {// Chay lan dau
				RequestDispatcher rd = request.getRequestDispatcher("admin/themthuonghieu.jsp");
				rd.forward(request, response);
				return;
			}
			String thembtn = null;
			String tenth = null, anh = null;
			boolean trangthai = true;
			List<FileItem> fileItems = upload.parseRequest(request);
			for (FileItem fileItem : fileItems) {
				if (!fileItem.isFormField()) {
					
					String nameimg = fileItem.getName();
					anh = "imgbrand/" + nameimg;
					if (!nameimg.equals("")) {
						
						String dirUrl = request.getServletContext().getRealPath(File.separator + "imgbrand") ;
						File dir = new File(dirUrl);
						if (!dir.exists()) {
							dir.mkdir();
						}

						String fileImg = dirUrl + File.separator + nameimg;
						File file = new File(fileImg);
						
						try {
							fileItem.write(file);
							System.out.println("UPLOAD THÀNH CÔNG...!");
							System.out.println("File path: " + dirUrl);
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
				} else { // Neu la control
					String tentk = fileItem.getFieldName();

					if (tentk.equals("tenth"))
						tenth = fileItem.getString("UTF-8");

					if (tentk.equals("trangthai"))
						trangthai = Boolean.parseBoolean(fileItem.getString("UTF-8"));
						System.out.println("Trang thai là: " +trangthai);

					if (tentk.equals("them"))
						thembtn = fileItem.getString("UTF-8");
				}

			}
			
			
			System.out.println("what" + thembtn);
			if (thembtn != null) {
				if(thbo.ktrThemTH(tenth) == false) {
					thbo.ThemTH(tenth, anh, trangthai);
					request.setAttribute("success", "Thêm thương hiệu mới thành công!");
				}
				else 
					request.setAttribute("fail", "Tên thương hiệu bị trùng! Thêm mới thất bại.");
				
			}

			RequestDispatcher rd = request.getRequestDispatcher("admin/themthuonghieu.jsp");
			rd.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
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
