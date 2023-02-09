package bean;

public class ThongKeSanPhamBean {
	private String TenSanPham;
	private long Gia;
	private long DaBan;
	private long ThanhTien;
	private String Anh;
	public ThongKeSanPhamBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ThongKeSanPhamBean(String tenSanPham, long gia, long daBan, long thanhTien, String anh) {
		super();
		TenSanPham = tenSanPham;
		Gia = gia;
		DaBan = daBan;
		ThanhTien = thanhTien;
		Anh = anh;
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
	public long getDaBan() {
		return DaBan;
	}
	public void setDaBan(long daBan) {
		DaBan = daBan;
	}
	public long getThanhTien() {
		return ThanhTien;
	}
	public void setThanhTien(long thanhTien) {
		ThanhTien = thanhTien;
	}
	public String getAnh() {
		return Anh;
	}
	public void setAnh(String anh) {
		Anh = anh;
	}
	
	
	
}
