package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.GioHangBean;
import bean.SanPhamBean;
import bo.GioHangBo;
import bo.SanPhamBo;

/**
 * Servlet implementation class ChiTietSanPhamController
 */
@WebServlet("/ChiTietSanPhamController")
public class ChiTietSanPhamController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ChiTietSanPhamController() {
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
			SanPhamBo spbo = new SanPhamBo();
			String msp = request.getParameter("msp");

			if (msp != null) {
				SanPhamBean list = null;
				list = spbo.getchitietsanpham(msp);
				request.setAttribute("item", list);
				RequestDispatcher rd = request.getRequestDispatcher("KhachHang/ChiTietSanPham.jsp");
				rd.forward(request, response);
	
			} else {
				response.sendRedirect("SanPhamController");
			}

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
