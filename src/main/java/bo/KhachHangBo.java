package bo;

import java.util.ArrayList;

import bean.KhachHangBean;
import dao.KhachHangDao;

public class KhachHangBo {
	KhachHangDao khdao = new KhachHangDao();
	public KhachHangBean Login(String tendn, String pass) throws Exception{
		return khdao.Login(tendn, pass);
	}
	public int Register(String hoTen, String diaChi, String soDienThoai, String email, String TenDN, String pass) throws Exception{
		return khdao.Register(hoTen, diaChi, soDienThoai, email, TenDN, pass);
	}
	public boolean checkTendangnhap(String tendangnhap) {
		return khdao.checkTendangnhap(tendangnhap);
	}
	public ArrayList<KhachHangBean> getkhachhang(){
		return khdao.getkhachhang();
	}
	public int TongKhachHang() throws Exception {
		return khdao.TongKhachHang();
	}
}
