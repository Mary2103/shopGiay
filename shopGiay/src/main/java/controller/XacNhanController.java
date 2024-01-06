package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.GioHangBean;
import bean.TaiKhoanBean;

import bo.ChiTietHoaDonBo;
import bo.GioHangBo;
import bo.HoaDonBo;


/**
 * Servlet implementation class XacNhanController
 */
@WebServlet("/XacNhanController")
public class XacNhanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public XacNhanController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		try {
			// Kiem tra dang nhap
			HttpSession session = request.getSession();
			TaiKhoanBean tk = (TaiKhoanBean) session.getAttribute("dn");
			if (tk == null)
				response.sendRedirect("DangNhapController");
			else {// dn roi
				HoaDonBo hdbo = new HoaDonBo();
				ChiTietHoaDonBo cthdbo = new ChiTietHoaDonBo();

				// tao ra 1 hoa don
				if(tk.getMaVT() == 2) {
					System.out.println(tk.getMaVT());
					hdbo.Them(tk.getMaTK());
					System.out.println(tk.getMaTK());
					int maxhd = hdbo.getMaxHD();

					// them vao bang chitietHD
					GioHangBo gh = (GioHangBo) session.getAttribute("gh");

					for (GioHangBean h : gh.ds) {
						cthdbo.Them(h.getMaSP(),maxhd,h.getSize(), h.getSoLuongMua());
						
					}
					request.getSession().setAttribute("thanhcong", "BẠN ĐÃ ĐẶT HÀNG THÀNH CÔNG!");
					session.removeAttribute("gh");
					response.sendRedirect("GioHang");
					
				}
				
			}
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
