package bo;

import java.util.ArrayList;

import bean.GioHangBean;
import bean.SanPhamBean;
import dao.SanPhamDao;

public class SanPhamBo {
	SanPhamDao  sdao = new SanPhamDao();
	ArrayList<SanPhamBean> ds;
	public ArrayList<SanPhamBean> getsanpham(){
		ds = sdao.getsanpham();
		return ds;
	}
	
	public ArrayList<SanPhamBean> TimMa(String maloai){
		   ArrayList<SanPhamBean> tam= new ArrayList<SanPhamBean>();
		   for(SanPhamBean s: ds)
			   if(s.getMaLoai().equals(maloai))
				   tam.add(s);
		   return tam;
	   }
	   public ArrayList<SanPhamBean> Tim(String key){
		   ArrayList<SanPhamBean> tam= new ArrayList<SanPhamBean>();
		   for(SanPhamBean s: ds)
			   if(s.getTenSanPham().toLowerCase().contains(
			   key.toLowerCase())||
		s.getMaLoai().toLowerCase().contains(key.toLowerCase())			   
					   )
				   tam.add(s);
		   return tam;
	   }
	   public boolean checkCategory(String MaLoai) throws Exception{
		   return sdao.checkCategory(MaLoai);
	   }
	   
	   public SanPhamBean getchitietsanpham(String MaSanPham) throws Exception{
		   return sdao.getchitietsanpham(MaSanPham);
	   }
	   
	   public SanPhamBean getchitietsanphamadmin(String MaSanPham) throws Exception{
		   return sdao.getchitietsanphamadmin(MaSanPham);
	   }
	   
	   public int addProduct(String maSanPham, String tenSanPham, long gia, long soLuong, String maLoai, java.util.Date ngayNhap,
				String moTa, String anh) throws Exception {
		   return sdao.addProduct(maSanPham, tenSanPham, gia, soLuong, maLoai, ngayNhap, moTa, anh);
	   }
	   
	   public int deleteProduct(String maSanPham) throws Exception {
		   return sdao.deleteProduct(maSanPham);
	   }
	   
	   public int editProduct(String maSanPham, String tenSanPham, long gia, long soLuong, String maLoai, java.util.Date ngayNhap,
				String moTa, String anh) throws Exception {
		   return sdao.editProduct(maSanPham, tenSanPham, gia, soLuong, maLoai, ngayNhap, moTa, anh);
	   }
}
