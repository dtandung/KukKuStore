package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.KhachHangBo;

/**
 * Servlet implementation class CustomerRegisterController
 */
@WebServlet("/CustomerRegisterController")
public class CustomerRegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerRegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		try {
			HttpSession session = request.getSession();
			String hoten = request.getParameter("fullname");
			String diachi = request.getParameter("address");
			String sdt = request.getParameter("phonenumber");
			String email = request.getParameter("email");
			String tendn = request.getParameter("user");
			String pass = request.getParameter("pass");
			String passcon = request.getParameter("confirm-pass");
			KhachHangBo khbo = new KhachHangBo();
			if(hoten != null && diachi != null && sdt != null && email != null && tendn != null && pass != null && passcon!= null) {
				if(pass.equals(passcon) && khbo.checkTendangnhap(tendn)) {
					int khbean = khbo.Register(hoten, diachi, sdt, email, tendn, pass);
					if(khbean == 1) {
						RequestDispatcher rd = request.getRequestDispatcher("CustomerLoginController");
						rd.forward(request, response);
					}
				}else {
					request.setAttribute("tendn", "Tên Đăng Nhập Đã Tồn Tại");
					RequestDispatcher rd = request.getRequestDispatcher("Register.jsp");
					rd.forward(request, response);
				}
			}
			else {
				RequestDispatcher rd = request.getRequestDispatcher("Register.jsp");
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
