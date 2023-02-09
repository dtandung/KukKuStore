package bo;

import java.util.ArrayList;

import bean.LoaiBean;
import dao.LoaiDao;

public class LoaiBo {
	LoaiDao  ldao = new LoaiDao();
	ArrayList<LoaiBean> ds;
	public ArrayList<LoaiBean> getloai(){
		ds = ldao.getloai();
		return ds;
	}
	public ArrayList<LoaiBean> Tim(String key) throws Exception
	{
		ArrayList<LoaiBean> tam = new ArrayList<LoaiBean>();
		ArrayList<LoaiBean> ds = getloai();
		for(LoaiBean s: ds)
			if(s.getTenLoai().toLowerCase().trim().contains(key.toLowerCase().trim()))
				tam.add(s);
		return tam;
	}
	public LoaiBean getCategory(String maloai) throws Exception{
		return ldao.getCategory(maloai);
	}
	
	public int insertCategory(String maloai, String tenloai) throws Exception{
		return ldao.insertCategory(maloai, tenloai);
	}
	
	public int removeCategory(String maloai) throws Exception{
		return ldao.removeCategory(maloai);
	}
	
	public int changeCategory(String maloai,String tenloai) throws Exception{
		try {
			return ldao.changeCategory(maloai, tenloai);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}

	}
}
