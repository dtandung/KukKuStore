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
import bo.LoaiBo;

/**
 * Servlet implementation class AdminCategoryController
 */
@WebServlet("/AdminCategoryController")
public class AdminCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminCategoryController() {
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
				LoaiBo lb = new LoaiBo();
				LoaiBean lbean;
				ArrayList<LoaiBean> dsloai;
				dsloai = lb.getloai();
				String key = request.getParameter("key");
				String ml = request.getParameter("ml");
				String sua = request.getParameter("sua");
				String xoa = request.getParameter("xoa");
				if(key != null)
					dsloai = lb.Tim(key);
					request.setAttribute("dsloai", dsloai);
				if(request.getParameter("btn-Them") != null) {
					response.sendRedirect("AdminAddCategoryController");
				}
				if(xoa != null) {
					  lbean= lb.getCategory(xoa);
			    	  request.setAttribute("dsloai", lbean);
			          RequestDispatcher rd = request.getRequestDispatcher("Admin/DeleteCategory.jsp");
			          rd.forward(request, response);
				}
				if(sua != null) {
					  lbean = lb.getCategory(sua);
			          request.setAttribute("loaibean", lbean);
			          RequestDispatcher rd = request.getRequestDispatcher("Admin/EditCategory.jsp");
			          rd.forward(request, response);
				}
				RequestDispatcher rd = request.getRequestDispatcher("Admin/Category.jsp");
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
