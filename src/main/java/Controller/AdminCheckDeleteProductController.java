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
import bo.ChiTietHoaDonBo;
import bo.LoaiBo;
import bo.SanPhamBo;

/**
 * Servlet implementation class AdminCheckDeleteProductController
 */
@WebServlet("/AdminCheckDeleteProductController")
public class AdminCheckDeleteProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminCheckDeleteProductController() {
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
			LoaiBo lb = new LoaiBo();
			ArrayList<LoaiBean> dsloai;
			dsloai = lb.getloai();
			if (session.getAttribute("admin") != null) {

				SanPhamBo sbo = new SanPhamBo();
				SanPhamBean sbean;
				ArrayList<SanPhamBean> dssp;
				dssp = sbo.getsanpham();

				String del = request.getParameter("del");

				request.setAttribute("dssp", dssp);
	
				if (del != null) {
//					sbean = sbo.getchitietsanpham(del);
//			          request.setAttribute("dssp", sbean);
					ChiTietHoaDonBo ctbo = new ChiTietHoaDonBo();
					boolean checkDel = false;
					checkDel =  ctbo.checkXoa(del);
					if(checkDel == true) {						
						ctbo.XoaChiTietHoaDon(del);
						sbo.deleteProduct(del);
						System.out.println("xoá được");
						dssp = sbo.getsanpham();
						request.setAttribute("dssp", dssp);
						session.removeAttribute("check");
//						RequestDispatcher rd = request.getRequestDispatcher("AdminProductController");
//						rd.forward(request, response);
						session.setAttribute("delsuccess", "delsuccess");
						response.sendRedirect("AdminProductController");

					}else {						
						int check = 0;
						session.setAttribute("check", check);
						dssp = sbo.getsanpham();
						System.out.println("kh xoá được");
						request.setAttribute("dssp", dssp);
						response.sendRedirect("AdminProductController");
						
					}				
				}				
				RequestDispatcher rd = request.getRequestDispatcher("Admin/Products.jsp");
				rd.forward(request, response);
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
