package bo;

import java.util.ArrayList;

import bean.SizeBean;
import dao.SizeDao;

public class SizeBo {
	SizeDao szdao = new SizeDao();
	public ArrayList<SizeBean> getSizeByProductID(int masp) throws Exception {
		return szdao.getSizeByProductID(masp);
	}
	
	public long getSoLuongBySize(int size, int masp) throws Exception {
		return szdao.getSoLuongBySize(size, masp);
	}
}
