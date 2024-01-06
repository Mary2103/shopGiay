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

/**
 * Servlet implementation class SanPhamController
 */
@WebServlet("/SanPhamController")
public class SanPhamController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SanPhamController() {
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

			request.setAttribute("dsthuonghieu", thbo.getThuongHieu());

			ArrayList<SanPhamBean> ds = spbo.getSanPham();
			String ml = request.getParameter("ml");
			String key = request.getParameter("search");
			String selectedValue = request.getParameter("selectedValue");

			if (key != null)
				ds = spbo.Tim(key);
			if(ml != null)
				ds = spbo.TimMa(Integer.parseInt(ml));
			
			if(selectedValue != null && selectedValue.equals("az")) {
				ds = spbo.SortByPrice("asc");
			}else if(selectedValue != null && selectedValue.equals("za"))
				ds = spbo.SortByPrice("desc");
			
			request.setAttribute("dssanpham", ds);
				
			
			
		
			RequestDispatcher rd = request.getRequestDispatcher("user/sanpham.jsp");
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
