package dao;

import java.sql.PreparedStatement;

public class ChiTietHoaDonDao {
	public int Them(int masp, int mahd, int size, long soluongmua) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		int kq = 0;
		try {
			String sql = "insert into ChiTietHoaDon(MaSP, MaHD, SoSize,soluongmua, damua) values (?,?,?,?,1)";
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			cmd.setInt(1, masp);
			cmd.setInt(2, mahd);
			cmd.setInt(3, size);
			cmd.setLong(4, soluongmua);
			
			kq = cmd.executeUpdate();
			return kq;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return kq;
	}
}
