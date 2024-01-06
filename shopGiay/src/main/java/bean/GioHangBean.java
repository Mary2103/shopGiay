package bean;

public class GioHangBean {
	private int MaSP;
	private String TenSP;
	private String AnhChinh;
	private long SoLuongMua;
	private long Gia;
	private int Size;
	private long ThanhTien;
	private String DanhCho;
	
	public GioHangBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public GioHangBean(int maSP, String tenSP, String anhChinh, long soLuongMua, long gia, int size,
			String danhCho) {
		super();
		MaSP = maSP;
		TenSP = tenSP;
		AnhChinh = anhChinh;
		SoLuongMua = soLuongMua;
		Gia = gia;
		Size = size;
		ThanhTien = SoLuongMua * Gia;
		DanhCho = danhCho;
	
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
	public long getSoLuongMua() {
		return SoLuongMua;
	}
	public void setSoLuongMua(long soLuongMua) {
		SoLuongMua = soLuongMua;
	}
	public long getGia() {
		return Gia;
	}
	public void setGia(long gia) {
		Gia = gia;
	}
	public int getSize() {
		return Size;
	}
	public void setSize(int size) {
		Size = size;
	}
	public long getThanhTien() {
		return SoLuongMua * Gia;
	}
	public void setThanhTien(long thanhTien) {
		ThanhTien = thanhTien;
	}
	public String getDanhCho() {
		return DanhCho;
	}
	public void setDanhCho(String danhCho) {
		DanhCho = danhCho;
	}
	
	
}
