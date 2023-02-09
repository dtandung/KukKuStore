package Controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import bean.LoaiBean;
import bo.LoaiBo;
import bo.SanPhamBo;

/**
 * Servlet implementation class AdminAddProductController
 */
@WebServlet("/AdminAddProductController")
public class AdminAddProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminAddProductController() {
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
			response.setCharacterEncoding("utf-8");
			request.setCharacterEncoding("utf-8");
			HttpSession session = request.getSession();

			if (session.getAttribute("admin") != null) {
				DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
				ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
				SanPhamBo sp = new SanPhamBo();
				LoaiBo loai = new LoaiBo();
				ArrayList<LoaiBean> dsloai;
				dsloai = loai.getloai();
				request.setAttribute("dsloai", dsloai);
				try {

					String maSanPham = null, tenSanPham = null, maLoai = null, soLuong = null, gia = null,
							anhupload = null, moTa = null;
					Date ngayNhap = new java.util.Date();

					List<FileItem> fileItems = upload.parseRequest(request);
					for (FileItem fileItem : fileItems) {
						if (!fileItem.isFormField()) {// Nếu ko phải các control=>upfile lên
							String nameimg = fileItem.getName();
							if (!nameimg.equals("")) {
								String dirUrl = request.getServletContext().getRealPath("") + "images";
								File dir = new File(dirUrl);
								if (!dir.exists()) {// nếu ko có thư mục thì tạo ra
									dir.mkdir();
								}
								String fileImg = dirUrl + File.separator + nameimg;
								File file = new File(fileImg);// tạo file
								try {
									fileItem.write(file);// ghi file
									anhupload = "images/" + nameimg;
									System.out.println(anhupload);
								} catch (Exception e) {
									e.printStackTrace();
								}
							}
						} else {
							String tentk = fileItem.getFieldName();
							if (tentk.equals("masanpham"))
								maSanPham = fileItem.getString("UTF-8");
							if (tentk.equals("tensanpham"))
								tenSanPham = fileItem.getString("UTF-8");
							if (tentk.equals("gia"))
								gia = fileItem.getString("UTF-8");
							if (tentk.equals("maloai"))
								maLoai = fileItem.getString("UTF-8");
							if (tentk.equals("soluong"))
								soLuong = fileItem.getString("UTF-8");
							;
							if (tentk.equals("mota"))
								moTa = fileItem.getString("UTF-8");
							if (tentk.equals("ngayNhap")) {
								SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
								ngayNhap = format.parse(fileItem.getString());
							}
						}
					}

					// thêm
					int c = sp.addProduct(maSanPham, tenSanPham, Long.parseLong(soLuong), Long.parseLong(gia), maLoai,
							ngayNhap, moTa, anhupload);
					if (c == 0) {
						
						response.sendRedirect("AdminProductController");
					} else if (c == -1) {
						session.setAttribute("error", "error");
						response.sendRedirect("AdminProductController");
					} else {
						session.setAttribute("success", "success");
						response.sendRedirect("AdminProductController");
//						RequestDispatcher rd = request.getRequestDispatcher("Admin/Products.jsp");
//						rd.forward(request, response);
					}
					RequestDispatcher rd = request.getRequestDispatcher("Admin/AddProducts.jsp");
					rd.forward(request, response);	
					

				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
				RequestDispatcher rd = request.getRequestDispatcher("Admin/AddProducts.jsp");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("AdminLoginController");
				rd.forward(request, response);
			}
		} catch (Exception e) {
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
