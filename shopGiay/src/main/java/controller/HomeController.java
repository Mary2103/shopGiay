package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.SanPhamBean;
import bo.SanPhamBo;
import bo.ThuongHieuBo;
import dao.ThuongHieuDao;

/**
 * Servlet implementation class HomeController
 */
@WebServlet("/HomeController")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HomeController() {
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
			request.setCharacterEncoding("UTF-8");// client gui len server bang utf-8
			request.setCharacterEncoding("UTF-8");
			ThuongHieuBo thbo = new ThuongHieuBo();
			SanPhamBo spbo = new SanPhamBo();
			
			//get all brand
			request.setAttribute("dsthuonghieu", thbo.getThuongHieu());
			
			ArrayList<SanPhamBean> ds = spbo.getSanPhamTop8();
			
			request.setAttribute("dssanpham", ds);
			RequestDispatcher rd = request.getRequestDispatcher("user/index.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
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
