package bo;

import java.util.Date;

import dao.HoaDonDao;

public class HoaDonBo {
	HoaDonDao hddao = new HoaDonDao();
	public int ThemHoaDon(long makh, Date NgayMua, boolean damua) throws Exception {
		return hddao.ThemHoaDon(makh, NgayMua, damua);
	}
}
