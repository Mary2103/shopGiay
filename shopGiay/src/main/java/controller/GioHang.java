package controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.GioHangBo;
import bo.SizeBo;

/**
 * Servlet implementation class GioHang
 */
@WebServlet("/GioHang")
public class GioHang extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GioHang() {
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
			SizeBo szbo = new SizeBo();

			HttpSession session = request.getSession();
			String size = request.getParameter("size");
			String slm = request.getParameter("slm");
			String masp = request.getParameter("masp");
			String anh = request.getParameter("anh");
			String tensp = request.getParameter("tensp");
			String gia = request.getParameter("gia");
			String gt = request.getParameter("gt");


			if (size != null && size != null && slm != null && masp != null && tensp != null && gia != null
					&& gt != null) {
				if (Long.parseLong(slm) > szbo.getSoLuongBySize(Integer.parseInt(size), Integer.parseInt(masp))) {
					request.setAttribute("thieu", "Sản phẩm với size này không đủ số lượng bạn yêu cầu");
				}

				else {
					GioHangBo gh = null;

					if (session.getAttribute("gh") == null) {
						gh = new GioHangBo();
						session.setAttribute("gh", gh);
					}
					gh = (GioHangBo) session.getAttribute("gh");
//				// gan session gh vao bien g

//
//				// Them hang vao bien: g
					gh.Them(Integer.parseInt(masp), tensp, Integer.parseInt(size), anh, Long.parseLong(gia),
							Long.parseLong(slm), gt);
//
//				// Luu bien vao session
					session.setAttribute("gh", gh);

				}
			}

			String msp = request.getParameter("msp");
			String sz = request.getParameter("sz");
			if (msp != null && sz != null) {
				GioHangBo gh = (GioHangBo) session.getAttribute("gh");

				gh.Xoa(Integer.parseInt(msp), Integer.parseInt(sz));
				session.setAttribute("gh", gh);

			}

			String mspsua = request.getParameter("mspsua");
			String szsua = request.getParameter("szsua");
			String slSua = request.getParameter("txtsua");
			if (mspsua != null && slSua != null && szsua != null) {
				if (Long.parseLong(slSua) <= szbo.getSoLuongBySize(Integer.parseInt(szsua), Integer.parseInt(mspsua))) {
					GioHangBo gh = (GioHangBo) session.getAttribute("gh");
					gh.Capnhatsoluong(Integer.parseInt(mspsua), Integer.parseInt(szsua), Long.parseLong(slSua));
					session.setAttribute("gh", gh);
				}
				else {
					request.setAttribute("thieu", "Sản phẩm với size này không đủ số lượng bạn yêu cầu");
				}

			}
			
			String xoatatca = request.getParameter("xoatatca");
			if (xoatatca != null) {
				session.removeAttribute("gh");// Thu hoi lai session gh
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("user/giohang.jsp");
		rd.forward(request, response);
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
