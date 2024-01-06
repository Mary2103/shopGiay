package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.ThuongHieuBean;
import dao.ThuongHieuDao;

/**
 * Servlet implementation class AdminSuaTh
 */
@WebServlet("/AdminSuaTh")
public class AdminSuaTh extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminSuaTh() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String math = request.getParameter("math");
			
			ThuongHieuDao thdao = new ThuongHieuDao();
//			ThuongHieuBean thbean = new ThuongHieuBean();
			
			
			
			if(math != null) {
				ThuongHieuBean thbean = thdao.getThuongHieuByid(Integer.parseInt(math));
				if(thbean != null) {
					
					request.setAttribute("suath", thbean);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("admin/suathuonghieu.jsp");
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
