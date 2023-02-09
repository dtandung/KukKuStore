package bean;

import java.util.Date;

public class LichSuMuaHangBean {
	private long MaKh;
	private Date NgayMua;
	private long MaHoaDon;
	private boolean DaMua;
	private String HoTen;
	private long ThanhTien;
	public LichSuMuaHangBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LichSuMuaHangBean(long maKh, Date ngayMua, long maHoaDon, boolean daMua, String hoTen, long thanhTien) {
		super();
		MaKh = maKh;
		NgayMua = ngayMua;
		MaHoaDon = maHoaDon;
		DaMua = daMua;
		HoTen = hoTen;
		ThanhTien = thanhTien;
	}
	public long getMaKh() {
		return MaKh;
	}
	public void setMaKh(long maKh) {
		MaKh = maKh;
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
	public String getHoTen() {
		return HoTen;
	}
	public void setHoTen(String hoTen) {
		HoTen = hoTen;
	}
	public long getThanhTien() {
		return ThanhTien;
	}
	public void setThanhTien(long thanhTien) {
		ThanhTien = thanhTien;
	}
	
	
}
