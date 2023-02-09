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

import bean.LoaiBean;
import bean.SanPhamBean;
import bo.ChiTietHoaDonBo;
import bo.LoaiBo;
import bo.SanPhamBo;

/**
 * Servlet implementation class AdminProductController
 */
@WebServlet("/AdminProductController")
public class AdminProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminProductController() {
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
			response.setCharacterEncoding("utf-8");
			request.setCharacterEncoding("utf-8");
			HttpSession session = request.getSession();
			LoaiBo lb = new LoaiBo();
			ArrayList<LoaiBean> dsloai;
			dsloai = lb.getloai();
			if (session.getAttribute("admin") != null) {

				SanPhamBo sbo = new SanPhamBo();
				SanPhamBean sbean;
				ArrayList<SanPhamBean> dssp;
				dssp = sbo.getsanpham();
//				String key = request.getParameter("key");
				String edit = request.getParameter("edit");
//				String del = request.getParameter("del");
//				if(key != null)
//					dssp = sbo.Tim(key);
				request.setAttribute("dssp", dssp);
				if (request.getParameter("btn-Them") != null) {
					request.setAttribute("dsloai", dsloai);
					response.sendRedirect("AdminAddProductController");
				}
				if (edit != null) {
					sbean = sbo.getchitietsanphamadmin(edit);
					request.setAttribute("dsloai", dsloai);
					request.setAttribute("spbean", sbean);

					RequestDispatcher rd = request.getRequestDispatcher("/Admin/EditProducts.jsp");
					rd.forward(request, response);
					
				}
				if(request.getParameter("ql") != null) {
					RequestDispatcher rd = request.getRequestDispatcher("Admin/Products.jsp");
					rd.forward(request, response);
				}
				
				RequestDispatcher rd = request.getRequestDispatcher("Admin/Products.jsp");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("AdminLoginController");
				rd.forward(request, response);
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
