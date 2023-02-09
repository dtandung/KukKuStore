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

import bean.KhachHangBean;
import bean.LichSuMuaHangBean;
import bean.LoaiBean;
import bean.SanPhamBean;
import bean.ThongKeSanPhamBean;
import bo.KhachHangBo;
import bo.LichSuMuaHangBo;
import bo.LoaiBo;
import bo.SanPhamBo;
import bo.ThongKeSanPhamBo;

/**
 * Servlet implementation class TrangChuAdminController
 */
@WebServlet("/TrangChuAdminController")
public class TrangChuAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TrangChuAdminController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
			if (session.getAttribute("admin") != null) {
				KhachHangBo khbo = new KhachHangBo();
				LichSuMuaHangBo lsmh = new LichSuMuaHangBo();
				SanPhamBo spbo = new SanPhamBo();
				LoaiBo lbo = new LoaiBo();
				ThongKeSanPhamBo tkbo = new ThongKeSanPhamBo();
				ArrayList<ThongKeSanPhamBean> tkbean;
				ArrayList<LoaiBean> lbean;
				ArrayList<SanPhamBean> spbean;
				ArrayList<LichSuMuaHangBean> lsbean;
				ArrayList<LichSuMuaHangBean> ls2bean;
				tkbean = tkbo.gettopsanpham();
				lbean = lbo.getloai();
				spbean = spbo.getsanpham();
				lsbean = lsmh.getdsxacnhan();
				ls2bean = lsmh.getdanhsachchuyentien();
				int slkh = 0;
				slkh = khbo.TongKhachHang();
				request.setAttribute("thongke", tkbean);
				request.setAttribute("loai", lbean);
				request.setAttribute("sanpham", spbean);
				request.setAttribute("slkh", slkh);
				request.setAttribute("order", lsbean);
				request.setAttribute("order2", ls2bean);
				RequestDispatcher rd = request.getRequestDispatcher("Admin/HomeAdmin.jsp");
				rd.forward(request, response);
			} else {
//			RequestDispatcher rd = request.getRequestDispatcher("AdminLoginController");
//			rd.forward(request, response);
				response.sendRedirect("AdminLoginController");
			}
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
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
