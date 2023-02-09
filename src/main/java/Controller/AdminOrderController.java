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
import bean.LichSuMuaHangBean;
import bo.ChiTietLSMHBo;
import bo.LichSuMuaHangBo;

/**
 * Servlet implementation class AdminOrderController
 */
@WebServlet("/AdminOrderController")
public class AdminOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminOrderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			response.setCharacterEncoding("utf-8");
			request.setCharacterEncoding("utf-8");
			
			if (session.getAttribute("admin") != null) {
				
				LichSuMuaHangBo xnbo = new LichSuMuaHangBo();
				ArrayList<LichSuMuaHangBean> dsdh ;
				dsdh = xnbo.getdsxacnhan();
				request.setAttribute("ds", dsdh);
				String maHD =request.getParameter("mhd");
				String maCT =request.getParameter("mcthd");
				
				System.out.println(maHD);
				if(maHD!=null) 
				{ 
						long maDH = Long.valueOf(maHD);
						xnbo.xacnhanHD(maDH);
						dsdh = xnbo.getdsxacnhan();
						request.setAttribute("ds", dsdh);
						session.setAttribute("success", "success");
						RequestDispatcher rd = request.getRequestDispatcher("/Admin/Order.jsp");
						rd.forward(request, response);		
				}
				if(maCT != null) {
						long maCTiet = Long.valueOf(maCT);
					ChiTietLSMHBo ctdh= new ChiTietLSMHBo();
					ArrayList<ChiTietLSMHBean> dsctdh ;
					dsctdh = ctdh.getchitietlichsumuahang(maCTiet);
					request.setAttribute("dsctdh", dsctdh);
					RequestDispatcher rd = request.getRequestDispatcher("/Admin/OrderDetail.jsp");
					rd.forward(request, response);
////					response.sendRedirect("/JavanangcaoNhom04/AdminBookStore/chitietHDKH.jsp");
				}
				RequestDispatcher rd = request.getRequestDispatcher("/Admin/Order.jsp");
				rd.forward(request, response);
//				response.sendRedirect("/JavanangcaoNhom04/AdminBookStore/xacnhan.jsp");
			}else {
				RequestDispatcher rd = request.getRequestDispatcher("AdminLoginController");
				rd.forward(request, response);
//				response.sendRedirect("adminLogin_Controller");
			}

		} catch (Exception e) {
			// TODO: handle exception
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
