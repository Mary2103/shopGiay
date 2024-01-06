package bo;

import java.util.ArrayList;

import bean.SanPhamBean;
import dao.SanPhamDao;

public class SanPhamBo {
	SanPhamDao spdao = new SanPhamDao();

	public ArrayList<SanPhamBean> getSanPham() throws Exception {
		return spdao.getSanPham();
	}

	public ArrayList<SanPhamBean> getSanPhamTop8() throws Exception {
		return spdao.getSanPhamTop8();
	}
	public SanPhamBean getSanPhamByID(int masp) throws Exception {
		return spdao.getSanPhamByID(masp);
	}

	public ArrayList<SanPhamBean> Tim(String key) throws Exception {
		ArrayList<SanPhamBean> tam = new ArrayList<SanPhamBean>();
		for(SanPhamBean s: spdao.getSanPham()) {
			if(s.getTenSP().toLowerCase().trim().contains(key.toLowerCase().trim())||
				s.getDanhCho().toLowerCase().trim().contains(key.toLowerCase().trim()))
				tam.add(s);
		}
		return tam;
	}
	
	public ArrayList<SanPhamBean> TimMa(int math) throws Exception {
		ArrayList<SanPhamBean> tam = new ArrayList<SanPhamBean>();
		for(SanPhamBean s: spdao.getSanPham()) {
			if(s.getMaThuongHieu() == math)
				tam.add(s);
		}
		return tam;
	}
	
	public ArrayList<SanPhamBean> SortByPrice(String option) throws Exception {
		return spdao.SortByPrice(option);
	}
	
}
