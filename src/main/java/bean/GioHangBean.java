package bean;

import java.util.Date;

public class GioHangBean {
	private String MaSanPham;
	private String TenSanPham;
	private long Gia;
	private long SoLuong;
	private String MoTa;
	private String Anh;
	private long ThanhTien;
	public GioHangBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public GioHangBean(String maSanPham, String tenSanPham, long gia, long soLuong, String moTa, String anh
			) {
		super();
		MaSanPham = maSanPham;
		TenSanPham = tenSanPham;
		Gia = gia;
		SoLuong = soLuong;
		MoTa = moTa;
		Anh = anh;
		ThanhTien = soLuong*gia;
	}
	public String getMaSanPham() {
		return MaSanPham;
	}
	public void setMaSanPham(String maSanPham) {
		MaSanPham = maSanPham;
	}
	public String getTenSanPham() {
		return TenSanPham;
	}
	public void setTenSanPham(String tenSanPham) {
		TenSanPham = tenSanPham;
	}
	public long getGia() {
		return Gia;
	}
	public void setGia(long gia) {
		Gia = gia;
	}
	public long getSoLuong() {
		return SoLuong;
	}
	public void setSoLuong(long soLuong) {
		SoLuong = soLuong;
	}
	public String getMoTa() {
		return MoTa;
	}
	public void setMoTa(String moTa) {
		MoTa = moTa;
	}
	public String getAnh() {
		return Anh;
	}
	public void setAnh(String anh) {
		Anh = anh;
	}
	public long getThanhTien() {
		return SoLuong*Gia;
	}
	public void setThanhTien(long thanhTien) {
		ThanhTien = thanhTien;
	}
	
	
}
