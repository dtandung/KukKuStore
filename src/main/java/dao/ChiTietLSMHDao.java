package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.ChiTietLSMHBean;


public class ChiTietLSMHDao {
	public ArrayList<ChiTietLSMHBean> getchitietlichsumuahang(long mahd) throws Exception{
		KetNoi kn = new KetNoi();
		kn.KetNoi();
		
		ArrayList<ChiTietLSMHBean> ds = new ArrayList<ChiTietLSMHBean>();
		
		String sql = "select * from V_ChiTietLichSuMuaHang where MaHoaDon = ?";
		
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
			cmd.setLong(1, mahd);
		ResultSet rs = cmd.executeQuery();
		ChiTietLSMHBean ctlsb = null;
		while(rs.next()) {
			 long MaChiTietHD = rs.getLong("MaChiTietHD");
			 Date NgayMua = rs.getDate("NgayMua");
			 long MaHoaDon = rs.getLong("MaHoaDon");
			 boolean DaMua = rs.getBoolean("DaMua");
			 String TenSanPham = rs.getString("TenSanPham");
			 long ThanhTien = rs.getLong("ThanhTien");
			 long SoLuongMua = rs.getLong("SoLuongMua");
			 long Gia = rs.getLong("Gia");
			 String anh = rs.getString("Anh");
			
		ctlsb = new ChiTietLSMHBean(MaChiTietHD, NgayMua, MaHoaDon, DaMua, TenSanPham, ThanhTien, SoLuongMua, Gia, anh)  ;
		ds.add(ctlsb);
		}
		rs.close();
		return ds;
	}
	
	public int SLchitiet(long mahoadon) throws Exception {
		try {
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			//b2: lay du lieu ve
			String sql = "select count(DaMua) from ChiTietHoaDon where DaMua = 0 and MaHoaDon = ?";
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			cmd.setLong(1, mahoadon);
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
		return -1;
	}
	
	public int xacnhanCTHD(long maHD) throws Exception{
		try {
			//b1: ket noi vao csdl
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			//b2: lay du lieu ve
			String sql = "update ChiTietHoaDon set DaMua = 1 where MaHoaDon = ?";
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			cmd.setLong(1, maHD);
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
	
	
	public int xacnhanOneCTHD(long maChiTietHD) throws Exception{
		try {
			//b1: ket noi vao csdl
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			//b2: lay du lieu ve
			String sql = "update ChiTietHoaDon set DaMua = 'true' where MaChiTietHD = ?";
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			cmd.setLong(1, maChiTietHD);
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
