package bean;

public class LoaiBean {
	private String MaLoai;
	private String TenLoai;
	public LoaiBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LoaiBean(String maLoai, String tenLoai) {
		super();
		MaLoai = maLoai;
		TenLoai = tenLoai;
	}
	public String getMaLoai() {
		return MaLoai;
	}
	public void setMaLoai(String maLoai) {
		MaLoai = maLoai;
	}
	public String getTenLoai() {
		return TenLoai;
	}
	public void setTenLoai(String tenLoai) {
		TenLoai = tenLoai;
	}
	
}
