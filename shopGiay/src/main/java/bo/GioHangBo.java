package bo;

import java.util.ArrayList;

import bean.GioHangBean;



public class GioHangBo {
	public ArrayList<GioHangBean> ds = new ArrayList<GioHangBean>();
	public ArrayList<GioHangBean> getAll() throws Exception {
		return ds;
	}
	
	public void Them(int masp, String tensp, int size, String anh, long gia, long soluongmua, String gt) {
		//Them vao ds 1 
		
		int n = ds.size();
		for(int i = 0; i < n; i++) {
			if(ds.get(i).getMaSP()== masp && ds.get(i).getSize()== size ) {
				ds.get(i).setSoLuongMua(ds.get(i).getSoLuongMua() + soluongmua);
				return;
			}
			
		}
			GioHangBean mh = new GioHangBean(masp, tensp, anh, soluongmua, gia, size, gt);
				
				ds.add(mh);
			
		}
	public void Xoa (int maSP, int size) {
		System.out.println("Xoa: maSP = " + maSP + ", size = " + size);
		int n = ds.size();
		for(int i = 0 ; i < n; i++) {
			if(ds.get(i).getMaSP() == maSP && ds.get(i).getSize()== size) {
				ds.remove(i);
				return;
			}
		}
	}
	
	public void Capnhatsoluong(int maSP,int size, Long soluongmua) {
		
		for(GioHangBean ghb: ds) {
			if(ghb.getMaSP() == maSP && ghb.getSize() == size ) {
				ghb.setSoLuongMua(soluongmua);;
				return;
			}
		}
	}
	
	public long TongTien() {
		long s = 0;
		for(GioHangBean ghb: ds ) {
			s += ghb.getThanhTien();
		}
		return s;
	}
}
