package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.AdminBean;

public class AdminDao {
	public AdminBean Login(String TenDangNhap, String MatKhau) throws Exception{
		KetNoi kn = new KetNoi();
		kn.KetNoi();
		

	       String sql="select * from DangNhap where TenDangNhap=? and MatKhau= ? " ;
	   
	        PreparedStatement cmd = kn.cn.prepareStatement(sql);
	            cmd.setString(1, TenDangNhap);
	            cmd.setString(2, MatKhau);
	        ResultSet rs = cmd.executeQuery();
	       //truyen tham so vao cau lenh
	        AdminBean adb = null;
	       if(rs.next()){
	        String TenDN = rs.getString("TenDangNhap");
	        String MK = rs.getString("MatKhau");
	        boolean quyen = rs.getBoolean("Quyen");
	       // String MD5 = getMd5Hash(pass);
	     
	         adb = new AdminBean(TenDN, MK, quyen);
	       }       
	//thuc hien
	        rs.close();
	        kn.cn.close();
	       return adb;
	}
}
