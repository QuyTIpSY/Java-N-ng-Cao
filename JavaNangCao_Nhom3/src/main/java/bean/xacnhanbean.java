package bean;

import java.util.Date;

public class xacnhanbean {
	private long MaChiTietHD;
	private long MaHoaDon;
	private String hoten;
	private long SoLuongMua;
	private long gia;
	private long thanhtien;
	private boolean damua;
	public xacnhanbean(long maChiTietHD, long maHoaDon, String hoten, long soLuongMua, long gia, long thanhtien,
			boolean damua) {
		super();
		MaChiTietHD = maChiTietHD;
		MaHoaDon = maHoaDon;
		this.hoten = hoten;
		SoLuongMua = soLuongMua;
		this.gia = gia;
		this.thanhtien = thanhtien;
		this.damua = damua;
	}
	public xacnhanbean() {
		super();
	}
	public long getMaChiTietHD() {
		return MaChiTietHD;
	}
	public void setMaChiTietHD(long maChiTietHD) {
		MaChiTietHD = maChiTietHD;
	}
	public long getMaHoaDon() {
		return MaHoaDon;
	}
	public void setMaHoaDon(long maHoaDon) {
		MaHoaDon = maHoaDon;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public long getSoLuongMua() {
		return SoLuongMua;
	}
	public void setSoLuongMua(long soLuongMua) {
		SoLuongMua = soLuongMua;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public long getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	public boolean isDamua() {
		return damua;
	}
	public void setDamua(boolean damua) {
		this.damua = damua;
	}
}
