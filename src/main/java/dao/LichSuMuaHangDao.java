package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.LichSuMuaHangBean;

public class LichSuMuaHangDao {
	public ArrayList<LichSuMuaHangBean> getlichsumuahang(int makh, boolean damua) throws Exception{
		KetNoi kn = new KetNoi();
		kn.KetNoi();
		
		ArrayList<LichSuMuaHangBean> ds = new ArrayList<LichSuMuaHangBean>();
		
		String sql = "select * from V_LichSuMuaHang where MaKh = ? and DaMua= ?\r\n"
				+ " order by MaHoaDon desc";
		
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
			cmd.setLong(1, makh);
			cmd.setBoolean(2, damua);
		ResultSet rs = cmd.executeQuery();
		LichSuMuaHangBean lsb = null;
		while(rs.next()) {
			 long MaKh = rs.getLong("MaKh");
			 Date NgayMua= rs.getDate("NgayMua");
			 long MaHoaDon = rs.getLong("MaHoaDon");
			 boolean DaMua = rs.getBoolean("DaMua");
			 String HoTen = rs.getString("HoTen");
			 long ThanhTien = rs.getLong("ThanhTien");
			
		lsb = new LichSuMuaHangBean(MaKh, NgayMua, MaHoaDon, DaMua, HoTen, ThanhTien);
		ds.add(lsb);
		}
		rs.close();
		return ds;
	}
	
	
	
	public ArrayList<LichSuMuaHangBean> getdsxacnhan( boolean damua) throws Exception{
		KetNoi kn = new KetNoi();
		kn.KetNoi();
		
		ArrayList<LichSuMuaHangBean> ds = new ArrayList<LichSuMuaHangBean>();
		
		String sql = "select * from V_LichSuMuaHang where DaMua= ?\r\n"
				+ " order by MaHoaDon desc";
		
		PreparedStatement cmd = kn.cn.prepareStatement(sql);

			cmd.setBoolean(1, damua);
		ResultSet rs = cmd.executeQuery();
		LichSuMuaHangBean lsb = null;
		while(rs.next()) {
			 long MaKh = rs.getLong("MaKh");
			 Date NgayMua= rs.getDate("NgayMua");
			 long MaHoaDon = rs.getLong("MaHoaDon");
			 boolean DaMua = rs.getBoolean("DaMua");
			 String HoTen = rs.getString("HoTen");
			 long ThanhTien = rs.getLong("ThanhTien");
			
		lsb = new LichSuMuaHangBean(MaKh, NgayMua, MaHoaDon, DaMua, HoTen, ThanhTien);
		ds.add(lsb);
		}
		rs.close();
		return ds;
	}
	
	public int xacnhanHD(long mahoadon) throws Exception{
		try {
			//b1: ket noi vao csdl
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			//b2: lay du lieu ve
			String sql = "update HoaDon set DaMua = 1 where MaHoaDon = ?";
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			cmd.setLong(1, mahoadon);
			int rs = cmd.executeUpdate();
			
			//b4: dong ket noi
			kn.cn.close();
			return rs;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
	}
}
