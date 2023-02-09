package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.ThongKeSanPhamBean;

public class ThongKeSanPhamDao {
	public ArrayList<ThongKeSanPhamBean> gettopsanpham(){
		ArrayList<ThongKeSanPhamBean> ds = new ArrayList<ThongKeSanPhamBean>();
		try {
			//b1: ket noi vao csdl
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			//b2: lay du lieu ve
			String sql = "select s.TenSanPham,s.Gia,s.Anh,\r\n"
					+ "		isnull(summary.DaBan, 0) as DaBan,\r\n"
					+ "		isnull(summary.ThanhTien,0) as ThanhTien\r\n"
					+ "		\r\n"
					+ "		\r\n"
					+ "from SanPham as s\r\n"
					+ "	left join\r\n"
					+ "	(\r\n"
					+ "		select cthd.MaSanPham, sum(cthd.SoLuongMua) as DaBan, sum(cthd.SoLuongMua * sp.Gia) as ThanhTien\r\n"
					+ "		from HoaDon as hd join ChiTietHoaDon as cthd on hd.MaHoaDon = cthd.MaHoaDon join SanPham as sp on sp.MaSanPham = cthd.MaSanPham\r\n"
					+ "		where YEAR(hd.NgayMua) = 2022 and hd.DaMua =1\r\n"
					+ "		group by cthd.MaSanPham\r\n"
					+ "	) as summary on s.MaSanPham = summary.MaSanPham\r\n"
					+ "where DaBan >0 and ThanhTien >0";
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			//b3: luu all du lieu vao mang ds
			while(rs.next()) {
				 String TenSanPham = rs.getString("TenSanPham");
				 long Gia = rs.getLong("Gia");
				 long DaBan = rs.getLong("DaBan");
				 long ThanhTien = rs.getLong("ThanhTien");
				 String Anh = rs.getString("Anh");
				ds.add(new ThongKeSanPhamBean(TenSanPham, Gia, DaBan, ThanhTien, Anh));
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
}
