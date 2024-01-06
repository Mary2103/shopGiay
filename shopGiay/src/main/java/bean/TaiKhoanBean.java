package bean;

import java.util.Date;

public class TaiKhoanBean {

		private int MaTK;
		private String HoTen;
		private String DiaChi;
		private String SoDT;
		private String TenDN;
		private String MatKhau;
		private String Email;
		private Date NgayTao;
		private Date NgayCapNhat;
		private int MaVT;
		public TaiKhoanBean() {
			super();
			// TODO Auto-generated constructor stub
		}
		public TaiKhoanBean(int maTK, String hoTen, String diaChi, String soDT, String tenDN, String matKhau,
				String email, Date ngayTao, Date ngayCapNhat, int maVT) {
			super();
			MaTK = maTK;
			HoTen = hoTen;
			DiaChi = diaChi;
			SoDT = soDT;
			TenDN = tenDN;
			MatKhau = matKhau;
			Email = email;
			NgayTao = ngayTao;
			NgayCapNhat = ngayCapNhat;
			MaVT = maVT;
		}
		public int getMaTK() {
			return MaTK;
		}
		public void setMaTK(int maTK) {
			MaTK = maTK;
		}
		public String getHoTen() {
			return HoTen;
		}
		public void setHoTen(String hoTen) {
			HoTen = hoTen;
		}
		public String getDiaChi() {
			return DiaChi;
		}
		public void setDiaChi(String diaChi) {
			DiaChi = diaChi;
		}
		public String getSoDT() {
			return SoDT;
		}
		public void setSoDT(String soDT) {
			SoDT = soDT;
		}
		public String getTenDN() {
			return TenDN;
		}
		public void setTenDN(String tenDN) {
			TenDN = tenDN;
		}
		public String getMatKhau() {
			return MatKhau;
		}
		public void setMatKhau(String matKhau) {
			MatKhau = matKhau;
		}
		public String getEmail() {
			return Email;
		}
		public void setEmail(String email) {
			Email = email;
		}
		public Date getNgayTao() {
			return NgayTao;
		}
		public void setNgayTao(Date ngayTao) {
			NgayTao = ngayTao;
		}
		public Date getNgayCapNhat() {
			return NgayCapNhat;
		}
		public void setNgayCapNhat(Date ngayCapNhat) {
			NgayCapNhat = ngayCapNhat;
		}
		public int getMaVT() {
			return MaVT;
		}
		public void setMaVT(int maVT) {
			MaVT = maVT;
		}
		
		
		
		
	}


