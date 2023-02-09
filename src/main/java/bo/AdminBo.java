package bo;

import bean.AdminBean;
import dao.AdminDao;

public class AdminBo {
	AdminDao add = new AdminDao();
	public AdminBean Login(String TenDangNhap, String MatKhau) throws Exception{
		return add.Login(TenDangNhap, MatKhau);
	}
}
