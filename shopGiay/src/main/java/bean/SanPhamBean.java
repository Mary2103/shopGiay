package bean;

import java.util.ArrayList;

public class SanPhamBean {
	private int MaSP;
	private String TenSP;
	private String AnhChinh;
	private String Anh1;
	private long SoLuong;
	private long Gia;
	private String DanhCho;
	private int MaThuongHieu;
	private String MoTa;
	public SanPhamBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SanPhamBean(int maSP, String tenSP, String anhChinh, String anh1, long soLuong, long gia, String danhCho,
			int maThuongHieu, String moTa) {
		super();
		MaSP = maSP;
		TenSP = tenSP;
		AnhChinh = anhChinh;
		Anh1 = anh1;
		SoLuong = soLuong;
		Gia = gia;
		DanhCho = danhCho;
		MaThuongHieu = maThuongHieu;
		MoTa = moTa;
	}
	public int getMaSP() {
		return MaSP;
	}
	public void setMaSP(int maSP) {
		MaSP = maSP;
	}
	public String getTenSP() {
		return TenSP;
	}
	public void setTenSP(String tenSP) {
		TenSP = tenSP;
	}
	public String getAnhChinh() {
		return AnhChinh;
	}
	public void setAnhChinh(String anhChinh) {
		AnhChinh = anhChinh;
	}
	public String getAnh1() {
		return Anh1;
	}
	public void setAnh1(String anh1) {
		Anh1 = anh1;
	}
	public long getSoLuong() {
		return SoLuong;
	}
	public void setSoLuong(long soLuong) {
		SoLuong = soLuong;
	}
	public long getGia() {
		return Gia;
	}
	public void setGia(long gia) {
		Gia = gia;
	}
	public String getDanhCho() {
		return DanhCho;
	}
	public void setDanhCho(String danhCho) {
		DanhCho = danhCho;
	}
	public int getMaThuongHieu() {
		return MaThuongHieu;
	}
	public void setMaThuongHieu(int maThuongHieu) {
		MaThuongHieu = maThuongHieu;
	}
	public String getMoTa() {
		return MoTa;
	}
	public void setMoTa(String moTa) {
		MoTa = moTa;
	}

	
}
