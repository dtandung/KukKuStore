package bo;

import java.util.ArrayList;
import java.util.List;

import bean.GioHangBean;
import bean.SanPhamBean;
import dao.SanPhamDao;

public class GioHangBo {
	public ArrayList<GioHangBean> ds = new ArrayList<GioHangBean>();
	
	public void Them(String maSanPham, String tenSanPham, long gia, long soLuong, String moTa, String anh) {
		for(GioHangBean h :ds)
			if(h.getMaSanPham().equals(maSanPham)) {
				h.setSoLuong(h.getSoLuong()+ soLuong);
				return;
				}
		ds.add(new GioHangBean(maSanPham, tenSanPham, gia, soLuong, moTa, anh));	
	}
	 public long Tongtien() {
		  long s=0;
		  for(GioHangBean h: ds)
			  s=s+h.getThanhTien();
		  return s;
	  }
	 public List<GioHangBean> getAll(){
		 return ds;
	 }
	 
	 
	 public void Sua(String maSanPham, long sl)
		{
			for(GioHangBean g:ds)
			{
				if(g.getMaSanPham().equals(maSanPham))
				{
					g.setSoLuong(sl);
					return;
				}
			}
		}
	 
		public void Xoa(String maSanPham)
		{
			for(GioHangBean g:ds)
			{
				if(g.getMaSanPham().equals(maSanPham))
				{
					ds.remove(g);
					return;
				}
			}
		}
	 
	 public void xoaTC() {
		 ds.clear();
	 }
}
