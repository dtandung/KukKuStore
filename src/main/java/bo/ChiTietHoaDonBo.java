package bo;

import dao.ChiTietHoaDonDao;

public class ChiTietHoaDonBo {
	ChiTietHoaDonDao ctdao = new ChiTietHoaDonDao();
	public int ThemChiTietHoaDon(String maSach, long soLuongMua, long maHoaDon, boolean daMua) throws Exception {
		return ctdao.ThemChiTietHoaDon(maSach, soLuongMua, maHoaDon, daMua);
	}
	
	 public int XoaChiTietHoaDon(String MaSanPham) throws Exception{
		 return ctdao.XoaChiTietHoaDon(MaSanPham);
	 }
	 
	 public boolean checkXoa(String MaSanPham) throws Exception{
		 return ctdao.checkXoa(MaSanPham);
	 } 
}
