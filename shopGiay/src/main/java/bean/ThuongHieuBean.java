package bean;

public class ThuongHieuBean {
	private int MaThuongHieu;
	private String TenThuongHieu;
	private String Anh;
	private Boolean TrangThai;
	public ThuongHieuBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ThuongHieuBean(int maThuongHieu, String tenThuongHieu, String anh, Boolean trangThai) {
		super();
		MaThuongHieu = maThuongHieu;
		TenThuongHieu = tenThuongHieu;
		Anh = anh;
		TrangThai = trangThai;
	}
	public int getMaThuongHieu() {
		return MaThuongHieu;
	}
	public void setMaThuongHieu(int maThuongHieu) {
		MaThuongHieu = maThuongHieu;
	}
	public String getTenThuongHieu() {
		return TenThuongHieu;
	}
	public void setTenThuongHieu(String tenThuongHieu) {
		TenThuongHieu = tenThuongHieu;
	}
	public String getAnh() {
		return Anh;
	}
	public void setAnh(String anh) {
		Anh = anh;
	}
	public Boolean getTrangThai() {
		return TrangThai;
	}
	public void setTrangThai(Boolean trangThai) {
		TrangThai = trangThai;
	}
	
}
