package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.VaiTroBean;

public class VaiTroDao {
	public VaiTroBean getById(int id) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		
		String sql = "SELECT * FROM VaiTro WHERE MaVT = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setInt(1, id);
		
		ResultSet rs = cmd.executeQuery();
		VaiTroBean vtrbean = null;
		if(rs.next()) {
			int MaVT = rs.getInt("MaVT");
			String Quyen = rs.getString("Quyen");
			
			vtrbean = new VaiTroBean(MaVT, Quyen);
			
		}
		rs.close();
		kn.cn.close();
		return vtrbean;
	}
	
	public VaiTroBean getByName(String name) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		
		String sql = "SELECT * FROM VaiTro WHERE Quyen = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, name);
		
		ResultSet rs = cmd.executeQuery();
		VaiTroBean vtrbean = null;
		if(rs.next()) {
			int MaVT = rs.getInt("MaVT");
			String Quyen = rs.getString("Quyen");
			
			vtrbean = new VaiTroBean(MaVT, Quyen);
			
		}
		rs.close();
		kn.cn.close();
		return vtrbean;
	}
}
