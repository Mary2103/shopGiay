package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.TaiKhoanBo;

/**
 * Servlet implementation class DangKyController
 */
@WebServlet("/DangKyController")
public class DangKyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangKyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");// client gui len server bang utf-8
		request.setCharacterEncoding("UTF-8");
		
		try {
		String hoten = request.getParameter("hoten");
		String diachi = request.getParameter("diachi");
		String sdt = request.getParameter("sdt");
		String tendn = request.getParameter("tendn");
		String pass = request.getParameter("pass");
		String email = request.getParameter("email");
		
		
		TaiKhoanBo tkbo = new TaiKhoanBo();
		
		if(hoten != null & diachi != null && sdt != null && tendn != null && pass != null && email != null) {
			tkbo.insertTk(hoten, diachi, sdt, tendn, pass, email);
			response.sendRedirect("HomeController");
			return;
		}
		
		
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		RequestDispatcher rd = request.getRequestDispatcher("DangKy.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
