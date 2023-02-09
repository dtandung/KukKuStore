package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ChiTietHoaDonDao {
	public int ThemChiTietHoaDon(String maSach, long soLuongMua, long maHoaDon, boolean daMua) throws Exception {
		KetNoi kn = new KetNoi();
		kn.KetNoi();
		
		String sql = "insert into ChiTietHoaDon values(?,?,?,?) ";
		 PreparedStatement cmd = kn.cn.prepareStatement(sql);
		 cmd.setString(1, maSach);
		 cmd.setLong(2, soLuongMua);
		 cmd.setLong(3, maHoaDon);
		 cmd.setBoolean(4, daMua);
     return cmd.executeUpdate();
	}
	
	public int XoaChiTietHoaDon(String MaSanPham) throws Exception{
		KetNoi kn = new KetNoi();
		kn.KetNoi();
		String sql ="delete ChiTietHoaDon where MaSanPham = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, MaSanPham);
		return cmd.executeUpdate();
	}
	
	public boolean checkXoa(String MaSanPham) throws Exception{
		KetNoi kn = new KetNoi();
		kn.KetNoi();
		String sql = "select * from ChiTietHoaDon where MaSanPham = ? and DaMua = 0";
		boolean checkXoa = false;
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, MaSanPham);
		ResultSet rs = cmd.executeQuery();
		if(rs.next()==false) {
			checkXoa = true;
		}
		return checkXoa;
	}
}
