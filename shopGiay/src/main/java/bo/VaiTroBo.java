package bo;

import bean.VaiTroBean;
import dao.VaiTroDao;

public class VaiTroBo {
	VaiTroDao vtrdao = new VaiTroDao();
	public VaiTroBean getById(int id) throws Exception {
		return vtrdao.getById(id);
	}
	
	public VaiTroBean getByName(String name) throws Exception {
		return vtrdao.getByName(name);
	}
	
}
