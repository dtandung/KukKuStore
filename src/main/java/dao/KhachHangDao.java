package dao;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import bean.KhachHangBean;
import bean.SanPhamBean;

public class KhachHangDao {
	
	public ArrayList<KhachHangBean> getkhachhang(){
		ArrayList<KhachHangBean> ds = new ArrayList<KhachHangBean>();
		try {
			//b1: ket noi vao csdl
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			//b2: lay du lieu ve
			String sql = "select * from KhachHang";
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			//b3: luu all du lieu vao mang ds
			while(rs.next()) {
				 long MaKh = rs.getLong("MaKh");
				 String HoTen = rs.getString("HoTen");
				 String DiaChi = rs.getString("DiaChi");
				 String SoDienThoai = rs.getString("SoDienThoai");
				 String Email = rs.getString("Email");
				 String TenDN = rs.getString("TenDN");
				 String Pass = rs.getString("Pass");
				ds.add(new KhachHangBean(MaKh, HoTen, DiaChi, SoDienThoai, Email, TenDN, Pass));
			}
			//b4: dong ket noi
			rs.close();
			kn.cn.close();
			return ds;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
		
	}
	
	public KhachHangBean Login(String tendn, String pass) throws Exception{
		KetNoi kn = new KetNoi();
		kn.KetNoi();
		

	       String sql="select * from KhachHang where TenDN=? and Pass= ? " ;
	   
	        PreparedStatement cmd = kn.cn.prepareStatement(sql);
	            cmd.setString(1, tendn);
	            cmd.setString(2, pass);
	        ResultSet rs = cmd.executeQuery();
	       //truyen tham so vao cau lenh
	        KhachHangBean khb = null;
	       if(rs.next()){
	    	   	 long MaKh = rs.getLong("MaKh");
	    		 String HoTen = rs.getString("HoTen");
	    		 String DiaChi = rs.getString("DiaChi");
	    		 String SoDienThoai = rs.getString("SoDienThoai");
	    		 String Email = rs.getString("Email");
	    		 String TenDN = rs.getString("TenDN");
	    		 String Pass = rs.getString("Pass");
	       // String MD5 = getMd5Hash(pass);
	     
	         khb = new KhachHangBean(MaKh, HoTen, DiaChi, SoDienThoai, Email, TenDN, Pass);
	       }       
	//thuc hien
	        rs.close();
	        kn.cn.close();
	       return khb;
	}
	
	public int Register(String hoTen, String diaChi, String soDienThoai, String email, String TenDN, String pass) throws Exception{
		KetNoi kn = new KetNoi();
		kn.KetNoi();
		
		String MD5 = getMd5Hash(pass);
		
		String kt ="select * from KhachHang where TenDN=?";
		PreparedStatement ktradki = kn.cn.prepareStatement(kt);
		ktradki.setString(1,TenDN);
		ResultSet rs =ktradki.executeQuery();
		String sql = "insert into KhachHang values (?,?,?,?,?,?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1,hoTen);
		cmd.setString(2,diaChi);
		cmd.setString(3,soDienThoai);
		cmd.setString(4,email);
		cmd.setString(5,TenDN);
		cmd.setString(6,MD5);
		
		if(cmd.executeUpdate() == 1)
		{
			return 1;
		}else {
			return 0;
		}
	}
	
	public boolean checkTendangnhap(String tendangnhap) {
	    String sqlString = "Select * from KhachHang where TenDN=?";

	    boolean checktendangnhap = false;
	    try {
	      KetNoi kn = new KetNoi();
	      kn.KetNoi();
	      PreparedStatement st = kn.cn.prepareStatement(sqlString);
	      st.setString(1, tendangnhap);
	      ResultSet resultSet = st.executeQuery();
	      if (resultSet.next() == false) {
	        checktendangnhap = true;
	      }

	    } catch (SQLException e) {
	      e.printStackTrace();
	    }
	    return checktendangnhap;
	  }
	
	public int TongKhachHang() throws Exception {
		try {
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			//b2: lay du lieu ve
			String sql = "select COUNT(MaKh) from KhachHang";
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				return (int) rs.getInt(1);
			}
			kn.cn.close();
			rs.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			
		}
		return 0;
	}
	
	public static String getMd5Hash(String input) {
	    try {
	      MessageDigest md = MessageDigest.getInstance("MD5");
	      byte[] messageDigest = md.digest(input.getBytes());
	      BigInteger no = new BigInteger(1, messageDigest);
	      String hashtext = no.toString(16);
	      while (hashtext.length() < 32) {
	        hashtext = "0" + hashtext;
	      }
	      return hashtext;
	    } catch (NoSuchAlgorithmException e) {
	      throw new RuntimeException(e);
	    }
	  }
}
