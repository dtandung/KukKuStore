package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.SanPhamBean;
import bo.GioHangBo;
import bo.SanPhamBo;

/**
 * Servlet implementation class GioHangController
 */
@WebServlet("/GioHangController")
public class GioHangController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GioHangController() {
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
			String msp = request.getParameter("msp");
			String tsp = request.getParameter("tsp");
			String gia = request.getParameter("gia");
			long Gia = Long.parseLong(gia);
			String des = request.getParameter("des");
			String sl = request.getParameter("txtsl");
			long SoLuongParse = Long.parseLong(sl);
			String img = request.getParameter("img");

			GioHangBo gh = null;
			if (session.getAttribute("gio") == null) {
				gh = new GioHangBo();// cap vung nho
				session.setAttribute("gio", gh);// tao session
			}
			gh = (GioHangBo) session.getAttribute("gio");

			gh.Them(msp, tsp, Gia, SoLuongParse, des, img);
			session.setAttribute("gio", gh);

//			session.setAttribute("gio", gh);
			response.sendRedirect("HienThiGioController");
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
