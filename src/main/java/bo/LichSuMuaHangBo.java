package bo;

import java.util.ArrayList;

import bean.LichSuMuaHangBean;
import dao.ChiTietLSMHDao;
import dao.LichSuMuaHangDao;

public class LichSuMuaHangBo {
	LichSuMuaHangDao lsdao = new LichSuMuaHangDao();
	ChiTietLSMHDao ctdao = new ChiTietLSMHDao();
	ArrayList<LichSuMuaHangBean> ds;
	public ArrayList<LichSuMuaHangBean> getlichsumuahang(int makh) throws Exception{
		 ds = lsdao.getlichsumuahang(makh,false);
		 return ds;
	}
	
	public ArrayList<LichSuMuaHangBean> getdanhsachchuyentien(int makh) throws Exception{
		 ds = lsdao.getlichsumuahang(makh,true);
		 return ds;
	}
	
	public ArrayList<LichSuMuaHangBean> getdanhsachchuyentien()throws Exception{
		return lsdao.getdsxacnhan(true);
	}
	
	public ArrayList<LichSuMuaHangBean> getdsxacnhan()throws Exception{
		return lsdao.getdsxacnhan(false);
	}
	
	public int xacnhanHD(long mahoadon) throws Exception{
		ctdao.xacnhanCTHD(mahoadon);
		return lsdao.xacnhanHD(mahoadon);
	}
	
	public int SLchitiet(long mahoadon) throws Exception {
		return ctdao.SLchitiet(mahoadon);
	}
	public void xacnhanHDwCT(long mahoadon) throws Exception {
		int count = SLchitiet(mahoadon);
		if(count == 0) {
			lsdao.xacnhanHD(mahoadon);
		}
	}
}
