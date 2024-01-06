package bean;

public class VaiTroBean {
	private int MaVT;
	private String Quyen;
	public VaiTroBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public VaiTroBean(int maVT, String quyen) {
		super();
		this.MaVT = maVT;
		this.Quyen = quyen;
	}
	public int getMaVT() {
		return this.MaVT;
	}
	public void setMaVT(int maVT) {
		this.MaVT = maVT;
	}
	public String getQuyen() {
		return this.Quyen;
	}
	public void setQuyen(String quyen) {
		this.Quyen = quyen;
	}
	
	
}
