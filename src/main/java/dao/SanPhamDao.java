package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.SanPhamBean;

public class SanPhamDao {
	public ArrayList<SanPhamBean> getsanpham(){
		ArrayList<SanPhamBean> ds = new ArrayList<SanPhamBean>();
		try {
			//b1: ket noi vao csdl
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			//b2: lay du lieu ve
			String sql = "select * from SanPham Order By NgayNhap desc";
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			//b3: luu all du lieu vao mang ds
			while(rs.next()) {
				String MaSanPham = rs.getString("MaSanPham");
				String TenSanPham = rs.getString("TenSanPham");
				long Gia = rs.getLong("Gia");
				long SoLuong = rs.getLong("SoLuong");
				String MaLoai = rs.getString("MaLoai");
				Date NgayNhap = rs.getDate("NgayNhap");
				String MoTa = rs.getString("MoTa");
				String Anh = rs.getString("Anh");
				ds.add(new SanPhamBean(MaSanPham, TenSanPham, Gia, SoLuong, MaLoai, NgayNhap, MoTa, Anh));
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
	
	public SanPhamBean getchitietsanpham(String MaSanPham) throws Exception{
		try {
			//b1: ket noi vao csdl
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			//b2: lay du lieu ve
			String sql = "select * from SanPham where MaSanPham = ?";
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			cmd.setString(1, MaSanPham);
			//b3: luu all du lieu vao mang ds
			ResultSet rs = cmd.executeQuery();
			SanPhamBean spbean = null;
			while(rs.next()) {
				String msp = rs.getString("MaSanPham");
				String TenSanPham = rs.getString("TenSanPham");
				long Gia = rs.getLong("Gia");
				long SoLuong = rs.getLong("SoLuong");
				String MaLoai = rs.getString("MaLoai");
				Date NgayNhap = rs.getDate("NgayNhap");
				String MoTa = rs.getString("MoTa");
				String Anh = rs.getString("Anh");
				spbean = new SanPhamBean(msp, TenSanPham, Gia, (long) 1, MaLoai, NgayNhap, MoTa, Anh);
			}
			//b4: dong ket noi
			rs.close();
			kn.cn.close();
			return spbean;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	
	public SanPhamBean getchitietsanphamadmin(String MaSanPham) throws Exception{
		try {
			//b1: ket noi vao csdl
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			//b2: lay du lieu ve
			String sql = "select * from SanPham where MaSanPham = ?";
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			cmd.setString(1, MaSanPham);
			//b3: luu all du lieu vao mang ds
			ResultSet rs = cmd.executeQuery();
			SanPhamBean spbean = null;
			while(rs.next()) {
				String msp = rs.getString("MaSanPham");
				String TenSanPham = rs.getString("TenSanPham");
				long Gia = rs.getLong("Gia");
				long SoLuong = rs.getLong("SoLuong");
				String MaLoai = rs.getString("MaLoai");
				Date NgayNhap = rs.getDate("NgayNhap");
				String MoTa = rs.getString("MoTa");
				String Anh = rs.getString("Anh");
				spbean = new SanPhamBean(msp, TenSanPham, Gia, SoLuong, MaLoai, NgayNhap, MoTa, Anh);
			}
			//b4: dong ket noi
			rs.close();
			kn.cn.close();
			return spbean;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	public boolean checkCategory(String MaLoai) throws Exception{
		KetNoi kn = new KetNoi();
		kn.KetNoi();
		String sql = "select * from SanPham where MaLoai = ? ";
		boolean checkCat = false;
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, MaLoai);
		ResultSet rs = cmd.executeQuery();
		if(rs.next() == false) {
			checkCat = true;
		}
		return checkCat;
	}
	
	  public int addProduct(String maSanPham, String tenSanPham, long gia, long soLuong, String maLoai, java.util.Date ngayNhap,
				String moTa, String anh) throws Exception {
		    // b1: ket noi vao csdl
		  	KetNoi kn = new KetNoi();
		    kn.KetNoi();
		    String ktra = "select * from SanPham where MaSanPham=?";
		    PreparedStatement ktradk = kn.cn.prepareStatement(ktra);
		    ktradk.setString(1, maSanPham);
		    ResultSet ktdk = ktradk.executeQuery();
		    int rs;
		    if (ktdk.next() != false)
		      return -1;
		    else if (ktdk.next() == false) {
		      String sql =
		          "insert into SanPham (MaSanPham,TenSanPham,Gia,SoLuong,MaLoai,NgayNhap,MoTa,Anh) values (?,?,?,?,?,?,?,?)";
		      PreparedStatement cmd = kn.cn.prepareStatement(sql);
		      cmd.setString(1, maSanPham);
		      cmd.setString(2, tenSanPham);	      
		      cmd.setLong(3, gia);
		      cmd.setLong(4, soLuong);		      
		      cmd.setString(5, maLoai);
		      cmd.setDate(6, new java.sql.Date(ngayNhap.getTime()));
		      cmd.setString(7, moTa);
		      cmd.setString(8, anh);
		  
		      // b4: Thuc hien cau lieu
		      rs = cmd.executeUpdate();
		    } else
		      return 0;
		    // b6: Dong all
		    ktdk.close();
		    kn.cn.close();
		    return rs;
		  }

		  public int deleteProduct(String maSanPham) throws Exception {
			KetNoi kn = new KetNoi();
		    kn.KetNoi();
		    int rs;
		    String sql = "Delete SanPham where MaSanPham=?";
		    PreparedStatement cmd = kn.cn.prepareStatement(sql);
		    cmd.setString(1, maSanPham);
		    rs = cmd.executeUpdate();
		    // b6: Dong all
		    kn.cn.close();
		    return rs;
		  }

		
		  public int editProduct(String maSanPham, String tenSanPham, long gia, long soLuong, String maLoai, java.util.Date ngayNhap,
					String moTa, String anh) throws Exception {
		      try {
		    	KetNoi kn = new KetNoi();
		        kn.KetNoi();
		        String sql =
		            "Update SanPham SET TenSanPham =?,Gia=?,SoLuong= ?, MaLoai=?, NgayNhap = ?, MoTa =?,Anh =? WHERE MaSanPham = ?";
		        PreparedStatement cmd = kn.cn.prepareStatement(sql);
		        cmd.setString(1, tenSanPham);	      
			    cmd.setLong(2, gia);
			    cmd.setLong(3, soLuong);		      
			    cmd.setString(4, maLoai);
			    cmd.setDate(5, new java.sql.Date(ngayNhap.getTime()));
			    cmd.setString(6, moTa);
			    cmd.setString(7, anh);
		        cmd.setString(8, maSanPham);
		        int check = cmd.executeUpdate();
		        kn.cn.close();
		        return check;
		      } catch (Exception e) {
		        // TODO: handle exception
		        e.printStackTrace();
		        return 0;
		      }
		    }
}
