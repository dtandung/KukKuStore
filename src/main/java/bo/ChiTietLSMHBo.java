package bo;

import java.util.ArrayList;

import bean.ChiTietLSMHBean;
import dao.ChiTietLSMHDao;

public class ChiTietLSMHBo {
	ChiTietLSMHDao ctlsdao = new ChiTietLSMHDao();
	ArrayList<ChiTietLSMHBean> ds;
	public ArrayList<ChiTietLSMHBean> getchitietlichsumuahang(long mahd) throws Exception{
		 ds = ctlsdao.getchitietlichsumuahang(mahd);
		 return ds;
	}
	
	public int xacnhanCTHD(long maHD) throws Exception{
		return ctlsdao.xacnhanCTHD(maHD);
	}
	
	public int xacnhanOneCTHD(long maChiTietHD) throws Exception{
		return ctlsdao.xacnhanOneCTHD(maChiTietHD);
	}
}
