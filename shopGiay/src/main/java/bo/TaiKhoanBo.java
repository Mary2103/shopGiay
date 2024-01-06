package bo;

import bean.TaiKhoanBean;
import dao.TaiKhoanDao;

public class TaiKhoanBo {
	TaiKhoanDao tkdao = new TaiKhoanDao();
	public TaiKhoanBean checkdn (String tendn, String pass) throws Exception {
		return tkdao.checkdn(tendn, pass);
	}
	
	public boolean insertTk(String hoten, String diachi, String sodt, String tendn, String pass, String email)
			throws Exception {
		return tkdao.insertTk(hoten, diachi, sodt, tendn, pass, email);
	}
}
