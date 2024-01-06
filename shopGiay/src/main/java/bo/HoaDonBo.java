package bo;

import dao.HoaDonDao;

public class HoaDonBo {
	HoaDonDao hddao = new HoaDonDao();
	public int Them(int matk) throws Exception {
		return hddao.Them(matk);
		
	}
	
	public int getMaxHD() throws Exception {
		return hddao.getMaxHD();
	}
}
