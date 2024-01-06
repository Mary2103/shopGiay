package bo;

import java.util.ArrayList;

import bean.ThuongHieuBean;
import dao.ThuongHieuDao;

public class ThuongHieuBo {
	ThuongHieuDao thdao = new ThuongHieuDao();
	public ArrayList<ThuongHieuBean> getThuongHieu() throws Exception {
		return thdao.getThuongHieu();

	}
	
//	public ThuongHieuBean> getThuongHieuByid(int math) throws Exception {
//		return thdao.getThuongHieuByid(math);
//	}
	
	public boolean ThemTH(String tenth, String anh, boolean status) throws Exception {
		return thdao.ThemTH(tenth, anh, status);
	}
	
	
	public boolean ktrThemTH(String tenth) throws Exception {
		return thdao.ktrThemTH(tenth);
	}
	
	public void XoaTh(int math) throws Exception {
		ArrayList<ThuongHieuBean> thList = thdao.getThuongHieu();
		int n = thList.size();
		System.out.println("so n"+n);
		for(int i = 0 ; i < n; i++) {
			System.out.println("ma gi: "+math);
			if(thList.get(i).getMaThuongHieu() == math ) {
				System.out.println("naythi:"+thList.get(i).getMaThuongHieu());
				thList.remove(i);
				return;
			}
		}
	}
}
