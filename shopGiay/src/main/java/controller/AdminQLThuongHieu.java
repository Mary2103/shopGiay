package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.ThuongHieuBo;
import dao.ThuongHieuDao;

/**
 * Servlet implementation class AdminQLThuongHieu
 */
@WebServlet("/AdminQLThuongHieu")
public class AdminQLThuongHieu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminQLThuongHieu() {
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
			
			ThuongHieuBo thbo = new ThuongHieuBo();
			ThuongHieuDao thdao = new ThuongHieuDao();
			request.setAttribute("dsthuonghieu", thbo.getThuongHieu());
			
			String math = request.getParameter("math");
			if(math != null) {
				System.out.println("Ma thunog hieu: "+ math);
				thdao.deleteById(Integer.parseInt(math));
			}	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		RequestDispatcher rd = request.getRequestDispatcher("admin/qlthuonghieu.jsp");
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
