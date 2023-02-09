package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.LoaiBean;

public class LoaiDao {
	public ArrayList<LoaiBean> getloai() {
		ArrayList<LoaiBean> ds = new ArrayList<LoaiBean>();
		try {
			// b1: ket noi vao csdl
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			// b2: lay du lieu ve
			String sql = "select * from Loai";
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			// b3: luu all du lieu vao mang ds
			while (rs.next()) {
				String maloai = rs.getString("MaLoai");
				String tenloai = rs.getString("TenLoai");
				ds.add(new LoaiBean(maloai, tenloai));
			}
			// b4: dong ket noi
			rs.close();
			kn.cn.close();
			return ds;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	public LoaiBean getCategory(String maloai) throws Exception {
		try {
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			String sql = "select * from Loai where MaLoai=?";
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			cmd.setString(1, maloai);
			ResultSet rs = cmd.executeQuery();
			// b3: luu all du lieu vao mang ds
			LoaiBean lb = null;
			while (rs.next()) {
				String ml = rs.getString("maloai");
				String tenloai = rs.getString("tenloai");
				lb = new LoaiBean(ml, tenloai);
			}
			// b4: dong ket noi
			rs.close();
			kn.cn.close();
			return lb;
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
			return null;
		}

	}

	public int insertCategory(String maloai, String tenloai) throws Exception {
		try {
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			String sql1 = "select * from Loai where MaLoai =?";
			PreparedStatement filterUpdate = kn.cn.prepareStatement(sql1);
			filterUpdate.setString(1, maloai);
			ResultSet filter = filterUpdate.executeQuery();
			int rs;
			if (filter.next() != false) {
				return -1;
			} else if (filter.next() == false) {
				String sql = "insert into Loai (MaLoai, TenLoai) values (?, ?)";
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
				cmd.setString(1, maloai);
				cmd.setString(2, tenloai);
				rs = cmd.executeUpdate();
			} else
				return 0;
			filter.close();
			kn.cn.close();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
			// TODO: handle exception
		}

	}

	public int removeCategory(String maloai) throws Exception {
		try {
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			String sql1 = "delete Loai where MaLoai = ?";
			PreparedStatement cmd = kn.cn.prepareStatement(sql1);
			cmd.setString(1, maloai);
			int rs = cmd.executeUpdate();
			kn.cn.close();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
			// TODO: handle exception
		}
	}

	public int changeCategory(String maloai, String tenloai) throws Exception {
		try {
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			String sql = "update Loai set TenLoai = ? where MaLoai = ?";
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			cmd.setString(1, tenloai);
			cmd.setString(2, maloai);
			int rs = cmd.executeUpdate();
			kn.cn.close();
			return rs;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return 0;
	}
}
