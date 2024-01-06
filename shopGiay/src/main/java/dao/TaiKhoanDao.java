package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.util.Date;

import bean.TaiKhoanBean;


public class TaiKhoanDao {
	public TaiKhoanBean checkdn (String tendn, String pass) throws Exception {
		
		KetNoi kn = new KetNoi();
		kn.ketnoi();

		String sql = "SELECT * FROM TaiKhoan where TenDN = ? and MatKhau=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, tendn);
		cmd.setString(2, pass);
		
		
		ResultSet rs = cmd.executeQuery();
		TaiKhoanBean tkbean = null;
		if (rs.next()) {
			int MaTK = rs.getInt("MaTk");
			String HoTen = rs.getString("HoTen");
			String DiaChi = rs.getString("DiaChi");
			String SoDT = rs.getString("SoDt");
			String TenDN = rs.getString("TenDN");
			String MatKhau = rs.getString("MatKhau") ;
			String Email = rs.getString("Email");
			Date NgayTao = rs.getDate("NgayTao");
			Date NgayCapNhat = rs.getDate("NgayCapNhat");
			int MaVT = rs.getInt("MaVT");
			
			tkbean = new TaiKhoanBean(MaTK, HoTen, DiaChi, SoDT, TenDN, MatKhau, Email, NgayTao, NgayCapNhat, MaVT);
		}
		
		rs.close();
		kn.cn.close();
		
		return tkbean;
	}
	
	
	public boolean insertTk(String hoten, String diachi, String sodt, String tendn, String pass, String email)
	        throws Exception {

	    KetNoi kn = new KetNoi();
	    boolean success = false;

	    try {
	        kn.ketnoi();

	        LocalDateTime currentDateTime = LocalDateTime.now();
	        java.sql.Timestamp currentTimestamp = java.sql.Timestamp.valueOf(currentDateTime);
	        String sql = "INSERT INTO TaiKhoan(HoTen, DiaChi, SoDT, TenDN, MatKhau, Email, NgayTao, MaVT) values (?,?,?,?,?,?,?,2)";
	        PreparedStatement cmd = kn.cn.prepareStatement(sql);

	        cmd.setString(1, hoten);
	        cmd.setString(2, diachi);
	        cmd.setString(3, sodt);
	        cmd.setString(4, tendn);
	        cmd.setString(5, pass);
	        cmd.setString(6, email);
	        cmd.setTimestamp(7, currentTimestamp);

	        int result = cmd.executeUpdate();

	       
	        if (result > 0) {
	            success = true;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        
	        kn.cn.close();
	    }

	    return success;
	}

	
}
