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
 * Servlet implementation class SanPhamController
 */
@WebServlet("/SanPhamController")
public class SanPhamController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SanPhamController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");

			String ml = request.getParameter("ml");
			String key = request.getParameter("key");
			HttpSession session = request.getSession();
			LoaiBo lbo = new LoaiBo();
			ArrayList<LoaiBean> dsloai = lbo.getloai();
			request.setAttribute("dsloai", dsloai);
			SanPhamBo spbo = new SanPhamBo();
			ArrayList<SanPhamBean> dssp = spbo.getsanpham();
			
			ArrayList<SanPhamBean> dsSachFinal = null;
//			request.setAttribute("dssp", dssp);

			int getTotal = 0;

			int pageSize = 8;

			int totalPage = 0;

			String index = request.getParameter("index");

			if (index == null) {
				index = "1";
			}
			int indexPage = Integer.parseInt(index);

			if (ml == null && key == null) {

				getTotal = dssp.size();

				totalPage = getTotal / pageSize;

				if (getTotal % pageSize != 0) {
					totalPage++;
				}

				if (indexPage > totalPage) {
					indexPage = 1;
				}

				if (indexPage < 1) {
					indexPage = totalPage;
				}
				
				
				int pageSizeFinal = indexPage == totalPage ? dssp.size() : pageSize * indexPage;
				dsSachFinal = new ArrayList<SanPhamBean>(dssp.subList(pageSize * (indexPage - 1), pageSizeFinal));
			}

			if (ml != null) {

				getTotal = spbo.TimMa(ml).size();

				totalPage = getTotal / pageSize;

				if (getTotal % pageSize != 0) {
					totalPage++;
				}

				if (indexPage > totalPage) {
					indexPage = 1;
				}

				if (indexPage < 1) {
					indexPage = totalPage;
				}

				int pageSizeFinal = (indexPage == totalPage || getTotal < pageSize) ? spbo.TimMa(ml).size() : pageSize * indexPage;
				dsSachFinal = new ArrayList<SanPhamBean>(spbo.TimMa(ml).subList(pageSize * (indexPage - 1), pageSizeFinal));
			} else if (key != null) {
				getTotal = spbo.Tim(key).size();

				totalPage = getTotal / pageSize;

				if (getTotal % pageSize != 0) {
					totalPage++;
				}

				if (indexPage > totalPage) {
					indexPage = 1;
				}

				if (indexPage < 1) {
					indexPage = totalPage;
				}

				int pageSizeFinal = (indexPage == totalPage || getTotal < pageSize) ? spbo.Tim(key).size() : pageSize * indexPage;
				
				dsSachFinal = new ArrayList<SanPhamBean>(spbo.Tim(key).subList(pageSize * (indexPage - 1), pageSizeFinal));
			}
			// ------

			request.setAttribute("dssp", dsSachFinal);

			request.setAttribute("indexPage", indexPage);

			request.setAttribute("totalPage", totalPage);

			request.setAttribute("index", index);

			request.setAttribute("key", key);
			
			request.setAttribute("ml", ml);

			
//			if (ml == null && key == null) {
//				RequestDispatcher rd = request.getRequestDispatcher("KhachHang/TrangAQ.jsp");
//				rd.forward(request, response);
//			}
//			if (ml != null) {
//				dssp = spbo.TimMa(ml);
//				request.setAttribute("dssp", dssp);
//			} else if (key != null) {
//				dssp = spbo.Tim(key);
//				request.setAttribute("dssp", dssp);
//			}

			RequestDispatcher rd = request.getRequestDispatcher("KhachHang/TrangAQ.jsp");
			rd.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
