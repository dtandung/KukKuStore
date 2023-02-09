package Controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.GioHangBean;
import bean.KhachHangBean;
import bo.ChiTietHoaDonBo;
import bo.GioHangBo;
import bo.HoaDonBo;

/**
 * Servlet implementation class ThanhToanController
 */
@WebServlet(urlPatterns = { "/thanh-toan", "/thanh-toan/chap-nhan" })
public class ThanhToanController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private HoaDonBo hdbo;
	private ChiTietHoaDonBo ctbo;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ThanhToanController() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		hdbo = new HoaDonBo();
		ctbo = new ChiTietHoaDonBo();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void getLayOut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("KhachHang/ThanhToan.jsp");
		rd.forward(request, response);
	}

	protected void thanhToan(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();

		KhachHangBean kh = (KhachHangBean) session.getAttribute("khachhang");

		GioHangBo gh = (GioHangBo) session.getAttribute("gio");

		int maHDRT = hdbo.ThemHoaDon(kh.getMaKh(), new Date(), false);
		if (maHDRT != 0) {
			for (GioHangBean item : gh.ds) {
				ctbo.ThemChiTietHoaDon(item.getMaSanPham(), item.getSoLuong(), (long) maHDRT, false);
			}
		}
		gh.xoaTC();

		session.setAttribute("success", "success");

		response.sendRedirect("/KukKuStore/HienThiGioController");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getServletPath();

		try {
			if (uri.contains("/chap-nhan")) {
				thanhToan(request, response);
			}

			else {
				getLayOut(request, response);
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
