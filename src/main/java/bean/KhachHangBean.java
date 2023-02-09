package bean;

public class KhachHangBean {
	private long MaKh;
	private String HoTen;
	private String DiaChi;
	private String SoDienThoai;
	private String Email;
	private String TenDN;
	private String Pass;
	public KhachHangBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public KhachHangBean(long maKh, String hoTen, String diaChi, String soDienThoai, String email, String tenDN,
			String pass) {
		super();
		MaKh = maKh;
		HoTen = hoTen;
		DiaChi = diaChi;
		SoDienThoai = soDienThoai;
		Email = email;
		TenDN = tenDN;
		Pass = pass;
	}
	public long getMaKh() {
		return MaKh;
	}
	public void setMaKh(long maKh) {
		MaKh = maKh;
	}
	public String getHoTen() {
		return HoTen;
	}
	public void setHoTen(String hoTen) {
		HoTen = hoTen;
	}
	public String getDiaChi() {
		return DiaChi;
	}
	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}
	public String getSoDienThoai() {
		return SoDienThoai;
	}
	public void setSoDienThoai(String soDienThoai) {
		SoDienThoai = soDienThoai;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getTenDN() {
		return TenDN;
	}
	public void setTenDN(String tenDN) {
		TenDN = tenDN;
	}
	public String getPass() {
		return Pass;
	}
	public void setPass(String pass) {
		Pass = pass;
	}
	
}
