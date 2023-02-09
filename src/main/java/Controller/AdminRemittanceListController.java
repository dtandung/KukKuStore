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
import bean.LichSuMuaHangBean;
import bo.ChiTietLSMHBo;
import bo.LichSuMuaHangBo;

/**
 * Servlet implementation class AdminRemittanceListController
 */
@WebServlet("/AdminRemittanceListController")
public class AdminRemittanceListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminRemittanceListController() {
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
			String maCT = request.getParameter("mcthd");
			if (session.getAttribute("admin") != null) {

				LichSuMuaHangBo xnbo = new LichSuMuaHangBo();
				ArrayList<LichSuMuaHangBean> dsdh;
				dsdh = xnbo.getdanhsachchuyentien();
				request.setAttribute("ds", dsdh);
				if (maCT != null) {
					long maCTiet = Long.valueOf(maCT);
					ChiTietLSMHBo ctdh = new ChiTietLSMHBo();
					ArrayList<ChiTietLSMHBean> dsctdh;
					dsctdh = ctdh.getchitietlichsumuahang(maCTiet);
					request.setAttribute("dsctdh", dsctdh);
					RequestDispatcher rd = request.getRequestDispatcher("/Admin/RemittanceListDetail.jsp");
					rd.forward(request, response);
				}
				RequestDispatcher rd = request.getRequestDispatcher("/Admin/RemittanceList.jsp");
				rd.forward(request, response);

			} else {
				RequestDispatcher rd = request.getRequestDispatcher("AdminLoginController");
				rd.forward(request, response);
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
