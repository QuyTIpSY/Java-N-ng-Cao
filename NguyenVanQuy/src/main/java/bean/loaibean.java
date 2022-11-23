package bean;

public class loaibean {
	private String Madidong;
	private String tendidong;
	private int gia;
	private int soluong;
	private String anh;
	public loaibean(String madidong, String tendidong, int gia, int soluong, String anh) {
		super();
		Madidong = madidong;
		this.tendidong = tendidong;
		this.gia = gia;
		this.soluong = soluong;
		this.anh = anh;
	}
	public loaibean() {
		super();
	}
	@Override
	public String toString() {
		return "loaibean [Madidong=" + Madidong + ", tendidong=" + tendidong + ", gia=" + gia + ", soluong=" + soluong
				+ ", anh=" + anh + "]";
	}
	public String getMadidong() {
		return Madidong;
	}
	public void setMadidong(String madidong) {
		Madidong = madidong;
	}
	public String getTendidong() {
		return tendidong;
	}
	public void setTendidong(String tendidong) {
		this.tendidong = tendidong;
	}
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	
	
}
