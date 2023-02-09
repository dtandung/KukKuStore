package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.KhachHangBean;
import bo.KhachHangBo;
import dao.KhachHangDao;
import nl.captcha.Captcha;

/**
 * Servlet implementation class CustomerLoginController
 */
@WebServlet(urlPatterns = {"/CustomerLoginController","/CustomerLoginController/login"})
public class CustomerLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private KhachHangBo khbo;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerLoginController() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    public void init() throws ServletException {
    	// TODO Auto-generated method stub
    	khbo = new KhachHangBo();
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    protected void getLoginPage(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();

		Object isCount = session.getAttribute("countLogin");
		if (isCount == null || (int) isCount == 0) {
			session.setAttribute("countLogin", 0);
		}
		RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
		rd.forward(request, response);

	}
    
    protected void Login(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String un = request.getParameter("un");
		String pass = request.getParameter("pass");
		String isBackToCart = (String) session.getAttribute("backToCart");

		KhachHangBean khbean = null;
		if (un != null && pass != null) {
			String passEncode = KhachHangDao.getMd5Hash(pass);
			khbean = khbo.Login(un, passEncode);
		}

		int countLogin = (int) session.getAttribute("countLogin");


		int demLogin = countLogin != 0 ? (int) session.getAttribute("countLogin") : 0;

		if (khbean != null) {
			session.setAttribute("khachhang", khbean);
			if (isBackToCart != null) {
				response.sendRedirect("/KukKuStore/thanh-toan");

			} else {
				response.sendRedirect("/KukKuStore/SanPhamController");
			}
			session.setAttribute("countLogin", 0);
		} else {// dang nhap sai
			demLogin += 1;
			session.setAttribute("countLogin", demLogin);
			response.sendRedirect("/KukKuStore/Login.jsp?kt=1");
		}

		if (demLogin >= 3) {
			Captcha captcha = (Captcha) session.getAttribute(Captcha.NAME);

			if (demLogin >= 3 && captcha != null) {
				String answer = request.getParameter("answer");

				if (captcha.isCorrect(answer)) {
					session.setAttribute("countLogin", 0);

					response.sendRedirect("/KukKuStore/CustomerLoginController");
				}
			}
		}
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getServletPath();

		try {
			if (uri.contains("/login")) {
				Login(request, response);
			}

			getLoginPage(request, response);
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
