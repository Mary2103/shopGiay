package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.TaiKhoanBean;
import bo.TaiKhoanBo;

/**
 * Servlet implementation class DangNhapController
 */
@WebServlet("/DangNhapController")
public class DangNhapController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DangNhapController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			
			TaiKhoanBo tkbo = new TaiKhoanBo();
			String un = request.getParameter("tendn");
			String pass = request.getParameter("pass");
			String dnbtn = request.getParameter("dnbtn");
		

			if (un != null && pass != null && dnbtn != null) {
				TaiKhoanBean tkbean = tkbo.checkdn(un, pass);

				if (tkbean != null) {
					HttpSession session = request.getSession();
					session.setAttribute("dn", tkbean);
					
					if (tkbean.getMaVT() == 1) {
						response.sendRedirect("Admin");
						return;
					} else {
						response.sendRedirect("HomeController");
						return;
					}
				} else {
					request.setAttribute("kt", "dns");
				}

			}

			RequestDispatcher rd = request.getRequestDispatcher("DangNhap.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
