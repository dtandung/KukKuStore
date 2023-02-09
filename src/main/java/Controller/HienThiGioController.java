package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.KhachHangBean;
import bo.GioHangBo;

/**
 * Servlet implementation class HienThiGioController
 */
@WebServlet(urlPatterns = {"/HienThiGioController","/HienThiGioController/confirm"})
public class HienThiGioController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HienThiGioController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	
	protected void GioHang(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		GioHangBo gh = (GioHangBo) session.getAttribute("gio");
		if (gh != null) {
			if (request.getParameter("update-quantity") != null) {
				String masp = request.getParameter("update-quantity");
				long soluong = Long.parseLong(request.getParameter("t" + masp));
				System.out.println(soluong);
				if (soluong == 0) {
					gh.Xoa(masp);
				} else {
					gh.Sua(masp, soluong);
					System.out.println(soluong);
				}

			}
			if (request.getParameter("delete-one") != null) {
				String masp = request.getParameter("delete-one");
				gh.Xoa(masp);

			}
			if (request.getParameter("delete-check") != null) {
				String[] gtcheck = request.getParameterValues("check");
				if (gtcheck != null) {
					for (String ss : gtcheck)
						gh.Xoa(ss);
				}
			}

			if (request.getParameter("clear-cart") != null) {
				gh.xoaTC();
			}
			session.setAttribute("gio", gh);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("KhachHang/GioHang.jsp");
			rd.forward(request, response);
		}
		RequestDispatcher rd = request.getRequestDispatcher("KhachHang/GioHang.jsp");
		rd.forward(request, response);
	}
	
	protected void xacNhanThanhToan(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();

		KhachHangBean kh = (KhachHangBean) session.getAttribute("khachhang");

		if (kh == null) {
			
			session.setAttribute("backToCart", "isBack");
			
			response.sendRedirect("/KukKuStore/CustomerLoginController");
			return;
		}
		else {
			response.sendRedirect("/KukKuStore/thanh-toan");
			return;
		}
	
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String uri = request.getServletPath();

		try {
			if (uri.contains("/confirm")) {
				xacNhanThanhToan(request, response);
			} else {
				GioHang(request, response);
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
