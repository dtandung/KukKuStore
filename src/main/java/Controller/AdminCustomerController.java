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
import bean.LoaiBean;
import bo.KhachHangBo;
import bo.LoaiBo;

/**
 * Servlet implementation class AdminCustomerController
 */
@WebServlet("/AdminCustomerController")
public class AdminCustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminCustomerController() {
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
			
			if (session.getAttribute("admin") != null) {
				KhachHangBo khbo = new KhachHangBo(); 
				ArrayList<KhachHangBean> dskh;
				dskh = khbo.getkhachhang();
				request.setAttribute("dskh", dskh);
				RequestDispatcher rd = request.getRequestDispatcher("Admin/Customer.jsp");
				rd.forward(request, response);
			}else {
//				RequestDispatcher rd = request.getRequestDispatcher("AdminLoginController");
//				rd.forward(request, response);
				response.sendRedirect("AdminLoginController");
			}
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
