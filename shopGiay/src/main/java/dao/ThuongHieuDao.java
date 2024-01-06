package dao;

import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.SanPhamBean;
import bean.ThuongHieuBean;

public class ThuongHieuDao {
	public ArrayList<ThuongHieuBean> getThuongHieu() throws Exception {
		ArrayList<ThuongHieuBean> ds = new ArrayList<ThuongHieuBean>();

		KetNoi kn = new KetNoi();
		kn.ketnoi();

		String sql = "SELECT * FROM ThuongHieu";

		PreparedStatement cmd = kn.cn.prepareStatement(sql);

		ResultSet rs = cmd.executeQuery();

		while (rs.next()) {
			int MaThuongHieu = rs.getInt("MaThuongHieu");
			String TenThuongHieu = rs.getString("TenThuongHieu");
			String Anh = rs.getString("Anh");
			Boolean TrangThai = rs.getBoolean("TrangThai");
			ds.add(new ThuongHieuBean(MaThuongHieu, TenThuongHieu, Anh, TrangThai));
		}
		rs.close();
		kn.cn.close();

		return ds;
	}
	
	public ThuongHieuBean getThuongHieuByid(int math) throws Exception {
		ThuongHieuBean thbean = null;

		KetNoi kn = new KetNoi();
		kn.ketnoi();

		String sql = "SELECT * FROM ThuongHieu where MaThuongHieu = ?";

		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setInt(1, math);
		ResultSet rs = cmd.executeQuery();

		while (rs.next()) {
			int MaThuongHieu = rs.getInt("MaThuongHieu");
			String TenThuongHieu = rs.getString("TenThuongHieu");
			String Anh = rs.getString("Anh");
			Boolean TrangThai = rs.getBoolean("TrangThai");
			thbean = new ThuongHieuBean(MaThuongHieu, TenThuongHieu, Anh, TrangThai);
		}
		rs.close();
		kn.cn.close();

		return thbean;
	}

	public void deleteById(int ma_thuong_hieu) throws SQLException {
		try {
			String sql = "delete from ThuongHieu where MaThuongHieu = ?";
			KetNoi kn = new KetNoi();
			kn.ketnoi();
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			
			cmd.setInt(1, ma_thuong_hieu);
			
			cmd.executeUpdate();
			kn.cn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean ThemTH(String tenth, String anh, boolean status) throws Exception {
		try {
			KetNoi kn = new KetNoi();
			kn.ketnoi();

			String sql = "INSERT INTO ThuongHieu (TenThuongHieu,Anh,TrangThai) VALUES (?,?,?)";
			PreparedStatement cmd = kn.cn.prepareStatement(sql);

			cmd.setString(1, tenth);
			cmd.setString(2, anh);
			cmd.setBoolean(3, status);

			cmd.executeUpdate();

			kn.cn.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean ktrThemTH(String tenth) throws Exception {
		try {
			KetNoi kn = new KetNoi();
			kn.ketnoi();

			String sql = "SELECT * FROM ThuongHieu WHERE LOWER(TenThuongHieu) LIKE LOWER(?)";
			PreparedStatement cmd = kn.cn.prepareStatement(sql);

			cmd.setString(1, tenth);

			ResultSet rs = cmd.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
		return false;
	}
}
