package bean;

import java.util.Date;

public class SanPhamBean {
	private String MaSanPham;
	private String TenSanPham;
	private long Gia;
	private long SoLuong;
	private String MaLoai;
	private Date NgayNhap;
	private String MoTa;
	private String Anh;
	public SanPhamBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SanPhamBean(String maSanPham, String tenSanPham, long gia, long soLuong, String maLoai, Date ngayNhap,
			String moTa, String anh) {
		super();
		MaSanPham = maSanPham;
		TenSanPham = tenSanPham;
		Gia = gia;
		SoLuong = soLuong;
		MaLoai = maLoai;
		NgayNhap = ngayNhap;
		MoTa = moTa;
		Anh = anh;
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
	public String getMaLoai() {
		return MaLoai;
	}
	public void setMaLoai(String maLoai) {
		MaLoai = maLoai;
	}
	public Date getNgayNhap() {
		return NgayNhap;
	}
	public void setNgayNhap(Date ngayNhap) {
		NgayNhap = ngayNhap;
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
	
}
