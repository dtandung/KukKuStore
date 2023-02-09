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

import bean.ChiTietLSMHBean;
import bo.ChiTietLSMHBo;
import bo.LichSuMuaHangBo;

/**
 * Servlet implementation class AdminOrderDetailController
 */
@WebServlet("/AdminOrderDetailController")
public class AdminOrderDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminOrderDetailController() {
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
			HttpSession session = request.getSession();
			response.setCharacterEncoding("utf-8");
			request.setCharacterEncoding("utf-8");

			if (session.getAttribute("admin") != null) {
				String maHD = request.getParameter("mhd");
				String maCTiet = request.getParameter("mct");

				if (maHD != null) {

					ChiTietLSMHBo ctbo = new ChiTietLSMHBo();
					LichSuMuaHangBo xnbo = new LichSuMuaHangBo();

					ArrayList<ChiTietLSMHBean> dsctdh = null;

					request.setAttribute("dsctdh", dsctdh);
					if (maHD != null) {
						Integer maDH = Integer.valueOf(maHD);
						Integer maCT = Integer.valueOf(maCTiet);

						System.out.println(maDH + "maDH");
						System.out.println(maCT + "maCT");
						if (request.getParameter("btndetail") != null) {
							ctbo.xacnhanOneCTHD(maCT);
							xnbo.xacnhanHDwCT(maDH);
							if(xnbo.SLchitiet(maDH) == 0) {
								RequestDispatcher rd = request.getRequestDispatcher("AdminOrderController");
								rd.forward(request, response);
							}
							dsctdh = ctbo.getchitietlichsumuahang(maDH);
							request.setAttribute("dsctdh", dsctdh);
							session.setAttribute("success", "success");
							RequestDispatcher rd = request.getRequestDispatcher("/Admin/OrderDetail.jsp");
							rd.forward(request, response);
						}
						
						// response.sendRedirect("/JavanangcaoNhom04/AdminBookStore/xacnhan.jsp");
					}
				}
				RequestDispatcher rd = request.getRequestDispatcher("/Admin/OrderDetail.jsp");
				rd.forward(request, response);
//				response.sendRedirect("/JavanangcaoNhom04/AdminBookStore/chitietHDKH.jsp");
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("AdminLoginController");
				rd.forward(request, response);
//				response.sendRedirect("adminLogin_Controller");
			}

		} catch (Exception e) {
			// TODO: handle exception
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
