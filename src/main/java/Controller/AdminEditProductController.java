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
 * Servlet implementation class AdminEditProductController
 */
@WebServlet("/AdminEditProductController")
public class AdminEditProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminEditProductController() {
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
				DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
				ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
				SanPhamBo sp = new SanPhamBo();
				LoaiBo loai = new LoaiBo();
				ArrayList<LoaiBean> dsloai = null;
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
							if (tentk.equals("maloai"))
								maLoai = fileItem.getString("UTF-8");
							if (tentk.equals("soluong"))
								soLuong = fileItem.getString("UTF-8");
							if (tentk.equals("gia"))
								gia = fileItem.getString("UTF-8");
							if (tentk.equals("mota"))
								moTa = fileItem.getString("UTF-8");
							if (tentk.equals("ngaynhap")) {
								SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
								ngayNhap = format.parse(fileItem.getString());
							}
						}
					}

					sp.editProduct(maSanPham, tenSanPham, Long.parseLong(gia), Long.parseLong(soLuong), maLoai, ngayNhap, moTa, anhupload);
					
					System.out.println(soLuong + "soluong");
					session.setAttribute("success", "success");
					RequestDispatcher rd = request.getRequestDispatcher("AdminProductController");
					rd.forward(request, response);
//					response.sendRedirect("/AdminBookStore/adminProductsEdit.jsp");

				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
//		         RequestDispatcher rd = request.getRequestDispatcher("/AdminBookStore/adminProductsEdit.jsp");
//		         rd.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("AdminLoginController");
				rd.forward(request, response);
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
