package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.SanPhamBean;
import bean.SizeBean;

public class SanPhamDao {
	public ArrayList<SanPhamBean> getSanPham() throws Exception {
		ArrayList<SanPhamBean> ds = new ArrayList<SanPhamBean>();
		KetNoi kn = new KetNoi();
		kn.ketnoi();

		String sql = "SELECT * FROM SanPham";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();

		while (rs.next()) {
			int MaSP = rs.getInt("MaSP");
			String TenSP = rs.getString("TenSP");
			String AnhChinh = rs.getString("AnhChinh");
			String Anh1 = rs.getString("Anh1");
			long SoLuong = rs.getLong("SoLuong");
			long Gia = rs.getLong("Gia");
			String DanhCho = rs.getString("DanhCho");
			int MaThuongHieu = rs.getInt("MaThuongHieu");
			String MoTa = rs.getString("MoTa");

			ds.add(new SanPhamBean(MaSP, TenSP, AnhChinh, Anh1, SoLuong, Gia, DanhCho, MaThuongHieu, MoTa));

		}
		rs.close();
		kn.cn.close();

		return ds;
	}
	
	public ArrayList<SanPhamBean> getSanPhamTop8() throws Exception {
		ArrayList<SanPhamBean> ds = new ArrayList<SanPhamBean>();
		KetNoi kn = new KetNoi();
		kn.ketnoi();

		String sql = "SELECT TOP 8 * FROM SanPham ORDER BY MaSP DESC";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();

		while (rs.next()) {
			int MaSP = rs.getInt("MaSP");
			String TenSP = rs.getString("TenSP");
			String AnhChinh = rs.getString("AnhChinh");
			String Anh1 = rs.getString("Anh1");
			long SoLuong = rs.getLong("SoLuong");
			long Gia = rs.getLong("Gia");
			String DanhCho = rs.getString("DanhCho");
			int MaThuongHieu = rs.getInt("MaThuongHieu");
			String MoTa = rs.getString("MoTa");

			ds.add(new SanPhamBean(MaSP, TenSP, AnhChinh, Anh1, SoLuong, Gia, DanhCho, MaThuongHieu, MoTa));

		}
		rs.close();
		kn.cn.close();

		return ds;
	}

	public SanPhamBean getSanPhamByID(int masp) throws Exception {
		SanPhamBean spbean = null;

		KetNoi kn = new KetNoi();
		kn.ketnoi();

		try {
			String sql = "SELECT * FROM SanPham WHERE MaSP = ?";
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			cmd.setInt(1, masp);
			ResultSet rs = cmd.executeQuery();

			while (rs.next()) {
				int MaSP = rs.getInt("MaSP");
				String TenSP = rs.getString("TenSP");
				String AnhChinh = rs.getString("AnhChinh");
				String Anh1 = rs.getString("Anh1");
				long SoLuong = rs.getLong("SoLuong");
				long Gia = rs.getLong("Gia");
				String DanhCho = rs.getString("DanhCho");
				int MaThuongHieu = rs.getInt("MaThuongHieu");
				String MoTa = rs.getString("MoTa");

				spbean = new SanPhamBean(MaSP, TenSP, AnhChinh, Anh1, SoLuong, Gia, DanhCho, MaThuongHieu, MoTa);

			}
			rs.close();
			kn.cn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}

		return spbean;
	}

	public ArrayList<SanPhamBean> SortByPrice(String option) throws Exception {
		ArrayList<SanPhamBean> ds = new ArrayList<SanPhamBean>();
		KetNoi kn = new KetNoi();
		kn.ketnoi();

		try {
			String sql = "SELECT * FROM SanPham ORDER BY Gia " + option;
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();

			while (rs.next()) {
				int MaSP = rs.getInt("MaSP");
				String TenSP = rs.getString("TenSP");
				String AnhChinh = rs.getString("AnhChinh");
				String Anh1 = rs.getString("Anh1");
				long SoLuong = rs.getLong("SoLuong");
				long Gia = rs.getLong("Gia");
				String DanhCho = rs.getString("DanhCho");
				int MaThuongHieu = rs.getInt("MaThuongHieu");
				String MoTa = rs.getString("MoTa");

				ds.add(new SanPhamBean(MaSP, TenSP, AnhChinh, Anh1, SoLuong, Gia, DanhCho, MaThuongHieu, MoTa));

			}
			rs.close();
			kn.cn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return ds;
	}
}
