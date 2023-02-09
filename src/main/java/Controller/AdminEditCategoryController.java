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
 * Servlet implementation class AdminEditCategoryController
 */
@WebServlet("/AdminEditCategoryController")
public class AdminEditCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminEditCategoryController() {
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
				String mal = request.getParameter("txtml");
				String tel = request.getParameter("txttl");
				System.out.println(mal);
				System.out.println(tel);
				if (request.getParameter("btnEdit") != null) {
					lb.changeCategory(mal, tel);
//					RequestDispatcher rd = request.getRequestDispatcher("AdminCategoryController");
//					rd.forward(request, response);
					System.out.println(mal);
					System.out.println(tel);
					session.setAttribute("success", "success");
					response.sendRedirect("AdminCategoryController");
				}
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
