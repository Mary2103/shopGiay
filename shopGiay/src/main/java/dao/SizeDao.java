package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.SizeBean;

public class SizeDao {
	public ArrayList<SizeBean> getSizeByProductID(int masp) throws Exception {
		ArrayList<SizeBean> ds = new ArrayList<SizeBean>();
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		
		
		String sql = "SELECT * from Size WHERE MaSP = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setInt(1, masp);
		
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			int MaSize = rs.getInt("MaSize");
			int SoSize = rs.getInt("SoSize");
			int MaSP = rs.getInt("MaSP");
			long SoLuong = rs.getLong("SoLuong");
			ds.add(new SizeBean(MaSize, SoSize, MaSP, SoLuong));
		}
		
		rs.close();
		kn.cn.close();
		return ds;
	}
	
	public long getSoLuongBySize(int size, int masp) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		
		String sql = "SELECT SoLuong FROM Size WHERE SoSize = ? AND MaSP = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setInt(1, size);
		cmd.setInt(2, masp);
		
		ResultSet rs = cmd.executeQuery();
		
		if(rs.next())
			return rs.getLong("SoLuong");
		else return 0;
	}
	
//	public int capnhatsoluong(int size, int masp)throws Exception {
//		KetNoi kn = new KetNoi();
//		kn.ketnoi();
//		
//		String sql = ""
//	}
	
}
