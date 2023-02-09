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

/**
 * Servlet implementation class ChiTietLSMHController
 */
@WebServlet("/ChiTietLSMHController")
public class ChiTietLSMHController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChiTietLSMHController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setCharacterEncoding("utf-8");
			request.setCharacterEncoding("utf-8");
			HttpSession session = request.getSession();
			ChiTietLSMHBo lsbo = new ChiTietLSMHBo();
			String mahd = request.getParameter("mahd");
			Integer MAHD = Integer.parseInt(mahd);
			ArrayList<ChiTietLSMHBean> ctlsmh = lsbo.getchitietlichsumuahang(MAHD);
			session.setAttribute("ctlsmh", ctlsmh);
			RequestDispatcher rd = request.getRequestDispatcher("KhachHang/ChiTietLichSuMuaHang.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
