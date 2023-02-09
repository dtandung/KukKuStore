package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AdminBean;
import bo.AdminBo;

/**
 * Servlet implementation class AdminLoginController
 */
@WebServlet(urlPatterns = {"/AdminLoginController","/AdminLoginController/login"})
public class AdminLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private AdminBo adbo;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginController() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    public void init() throws ServletException {
    	// TODO Auto-generated method stub
    	adbo = new AdminBo();
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    protected void getLayOut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	RequestDispatcher rd = request.getRequestDispatcher("LoginAdmin.jsp");
		rd.forward(request, response);
    }
    
    protected void Login(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
		String un = request.getParameter("un");
		String pass = request.getParameter("pass");

//		String passEncode = admindao.getMd5Hash(pass);

		AdminBean adbean = adbo.Login(un, pass);

	
		if (adbean != null) {
			session.setAttribute("admin", adbean);
			response.sendRedirect("/KukKuStore/TrangChuAdminController");
		} else {// dang nhap sai
			session.setAttribute("error", "error");
			response.sendRedirect("/KukKuStore/LoginAdmin.jsp?kt=1");
		}
		getLayOut(request, response);
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getServletPath();

		try {
			if (uri.contains("/login")) {
				Login(request, response);
			}

			getLayOut(request, response);
		} catch (Exception e) {
			e.printStackTrace();
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
