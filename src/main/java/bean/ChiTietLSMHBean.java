package bean;

import java.util.Date;

public class ChiTietLSMHBean {
	private long MaChiTietHD;
	private Date NgayMua;
	private long MaHoaDon;
	private boolean DaMua;
	private String TenSanPham;
	private long ThanhTien;
	private long SoLuongMua;
	private long Gia;
	private String Anh;
	public ChiTietLSMHBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ChiTietLSMHBean(long maChiTietHD, Date ngayMua, long maHoaDon, boolean daMua, String tenSanPham,
			long thanhTien, long soLuongMua, long gia, String anh) {
		super();
		MaChiTietHD = maChiTietHD;
		NgayMua = ngayMua;
		MaHoaDon = maHoaDon;
		DaMua = daMua;
		TenSanPham = tenSanPham;
		ThanhTien = thanhTien;
		SoLuongMua = soLuongMua;
		Gia = gia;
		Anh = anh;
	}

	public String getAnh() {
		return Anh;
	}

	public void setAnh(String anh) {
		Anh = anh;
	}

	public long getMaChiTietHD() {
		return MaChiTietHD;
	}
	public void setMaChiTietHD(long maChiTietHD) {
		MaChiTietHD = maChiTietHD;
	}
	public Date getNgayMua() {
		return NgayMua;
	}
	public void setNgayMua(Date ngayMua) {
		NgayMua = ngayMua;
	}
	public long getMaHoaDon() {
		return MaHoaDon;
	}
	public void setMaHoaDon(long maHoaDon) {
		MaHoaDon = maHoaDon;
	}
	public boolean isDaMua() {
		return DaMua;
	}
	public void setDaMua(boolean daMua) {
		DaMua = daMua;
	}
	public String getTenSanPham() {
		return TenSanPham;
	}
	public void setTenSanPham(String tenSanPham) {
		TenSanPham = tenSanPham;
	}
	public long getThanhTien() {
		return ThanhTien;
	}
	public void setThanhTien(long thanhTien) {
		ThanhTien = thanhTien;
	}
	public long getSoLuongMua() {
		return SoLuongMua;
	}
	public void setSoLuongMua(long soLuongMua) {
		SoLuongMua = soLuongMua;
	}
	public long getGia() {
		return Gia;
	}
	public void setGia(long gia) {
		Gia = gia;
	}
	
}
