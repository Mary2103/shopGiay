package bo;

import dao.ChiTietHoaDonDao;

public class ChiTietHoaDonBo {
	ChiTietHoaDonDao cthddao = new ChiTietHoaDonDao();
	public int Them(int masp, int mahd, int masize, long soluongmua) throws Exception {
		return cthddao.Them(masp, mahd, masize, soluongmua);
	}
}
