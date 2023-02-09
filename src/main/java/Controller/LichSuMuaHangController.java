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
import bean.LichSuMuaHangBean;
import bo.LichSuMuaHangBo;

/**
 * Servlet implementation class LichSuMuaHangController
 */
@WebServlet("/LichSuMuaHangController")
public class LichSuMuaHangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private LichSuMuaHangBo lsbo;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LichSuMuaHangController() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    public void init() throws ServletException {
    	// TODO Auto-generated method stub
    	lsbo = new LichSuMuaHangBo();
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setCharacterEncoding("utf-8");
			request.setCharacterEncoding("utf-8");
			HttpSession session = request.getSession();
			
			//lichsumuahangbo lsb = new lichsumuahangbo();
			KhachHangBean khb =(KhachHangBean) session.getAttribute("khachhang");
			
			ArrayList<LichSuMuaHangBean> lsmh = lsbo.getlichsumuahang((int)khb.getMaKh());
				request.setAttribute("lsmh", lsmh);
			RequestDispatcher rd = request.getRequestDispatcher("KhachHang/LichSuMuaHang.jsp");
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
