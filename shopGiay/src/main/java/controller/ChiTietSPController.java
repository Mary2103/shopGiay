package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.SanPhamBean;
import bo.SanPhamBo;
import bo.SizeBo;

/**
 * Servlet implementation class ChiTietSPController
 */
@WebServlet("/ChiTietSPController")
public class ChiTietSPController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChiTietSPController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("spid");
		System.out.println("thu nhat: "+ id);
		try {
			
			if(id != null) {
				int spid = Integer.parseInt(id);
				SanPhamBo spbo = new SanPhamBo();
				SizeBo szbo = new SizeBo();
				
				SanPhamBean spbean = spbo.getSanPhamByID(spid);
				request.setAttribute("spbean", spbean);
				
				request.setAttribute("dssize", szbo.getSizeByProductID(spid));
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	
		RequestDispatcher rd = request.getRequestDispatcher("user/chitietsanpham.jsp");
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
