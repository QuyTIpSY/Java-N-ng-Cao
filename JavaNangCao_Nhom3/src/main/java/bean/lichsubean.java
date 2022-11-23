package bean;

import java.util.Date;

public class lichsubean {
	private String tensach;
	private Date NgayMua;
	private int SoLuongMua;
	private long gia;
	private long Thanhtien;
	public lichsubean(String tensach, Date ngayMua, int soLuongMua, long gia, long thanhtien) {
		super();
		this.tensach = tensach;
		NgayMua = ngayMua;
		SoLuongMua = soLuongMua;
		this.gia = gia;
		Thanhtien = thanhtien;
	}
	public lichsubean() {
		super();
	}
	public String getTensach() {
		return tensach;
	}
	public void setTensach(String tensach) {
		this.tensach = tensach;
	}
	public Date getNgayMua() {
		return NgayMua;
	}
	public void setNgayMua(Date ngayMua) {
		NgayMua = ngayMua;
	}
	public int getSoLuongMua() {
		return SoLuongMua;
	}
	public void setSoLuongMua(int soLuongMua) {
		SoLuongMua = soLuongMua;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public long getThanhtien() {
		return Thanhtien;
	}
	public void setThanhtien(long thanhtien) {
		Thanhtien = thanhtien;
	}
	
}
