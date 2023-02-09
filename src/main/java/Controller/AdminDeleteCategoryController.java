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
import bo.LoaiBo;
import bo.SanPhamBo;

/**
 * Servlet implementation class AdminDeleteCategoryController
 */
@WebServlet("/AdminDeleteCategoryController")
public class AdminDeleteCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDeleteCategoryController() {
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
				String mal = request.getParameter("ml");
				
				if (request.getParameter("btnDel") != null) {
					SanPhamBo spbo = new SanPhamBo();
					if(spbo.checkCategory(mal)) {
						session.removeAttribute("checkCat");
						lb.removeCategory(mal);
						
						session.setAttribute("delsuccess", "delsuccess");
						response.sendRedirect("AdminCategoryController");
//						RequestDispatcher rd = request.getRequestDispatcher("AdminCategoryController");
//						rd.forward(request, response);
					}else {
						int checkCat = 0;
						ArrayList<LoaiBean> dsloai;
						dsloai = lb.getloai();
						request.setAttribute("dsloai", dsloai);
						session.setAttribute("checkCat", checkCat);
						response.sendRedirect("AdminCategoryController");
					}
				}
				RequestDispatcher rd = request.getRequestDispatcher("Admin/DeleteCategory.jsp");
				rd.forward(request, response);
//				response.sendRedirect("Admin/DeleteCategory.jsp");
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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
