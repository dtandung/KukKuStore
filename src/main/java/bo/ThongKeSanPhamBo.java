package bo;

import java.util.ArrayList;

import bean.ThongKeSanPhamBean;
import dao.ThongKeSanPhamDao;

public class ThongKeSanPhamBo {
	ThongKeSanPhamDao tkdao = new ThongKeSanPhamDao();
	ArrayList<ThongKeSanPhamBean> ds;
	public ArrayList<ThongKeSanPhamBean> gettopsanpham(){
		ds = tkdao.gettopsanpham();
		return ds;
	}
}
