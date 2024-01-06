package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Calendar;

public class HoaDonDao {
	public int Them(int matk) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String sql = "insert into hoadon(MaTK, NgayMua, damua) values(?, ?, 1)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, matk);
		
		Calendar cal = Calendar.getInstance();
        java.sql.Timestamp curent_Date = new java.sql.Timestamp(new java.util.Date().getTime());
		cmd.setTimestamp(2,curent_Date,cal );
		int kq = cmd.executeUpdate();
		System.out.println(curent_Date);
		cmd.close();
		kn.cn.close();
		return kq;
	}
	
	public int getMaxHD() throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String sql = "select max(MaHD) as MaxHD from HoaDon";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		int kq = 0;
		if (rs.next()) {
			kq = rs.getInt("MaxHD");
		}
		cmd.close();
		kn.cn.close();
		return kq;
	}
}
