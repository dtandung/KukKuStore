package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.LoaiBo;

/**
 * Servlet implementation class AdminAddCategoryController
 */
@WebServlet("/AdminAddCategoryController")
public class AdminAddCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAddCategoryController() {
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
				String ml = request.getParameter("ml");
				String tl = request.getParameter("tl");
				if (request.getParameter("btnAdd") != null) {
					if(ml !=null && tl != null) {
						int kt = lb.insertCategory(ml, tl);
						if(kt == 0) {							
							response.sendRedirect("AdminCategoryController");
						}else if(kt == -1) {
							session.setAttribute("error", "error");
							response.sendRedirect("AdminCategoryController");
						}else {	
							session.setAttribute("success", "success");
							response.sendRedirect("AdminCategoryController");
						}
					}
					RequestDispatcher rd = request.getRequestDispatcher("Admin/AddCategory.jsp");
					rd.forward(request, response);
				}	
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("AdminLoginController");
				rd.forward(request, response);
			}
			RequestDispatcher rd = request.getRequestDispatcher("Admin/AddCategory.jsp");
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
