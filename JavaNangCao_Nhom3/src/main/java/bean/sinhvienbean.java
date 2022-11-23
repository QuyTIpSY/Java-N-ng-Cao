package bean;

public class sinhvienbean {
	private String 	masv;
	private String 	hoten;
	private String 	diachi;
	private String 	email;
	private String 	anh;
	private String 	mamon;
	public sinhvienbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public sinhvienbean(String masv, String hoten, String diachi, String email, String anh, String mamon) {
		super();
		this.masv = masv;
		this.hoten = hoten;
		this.diachi = diachi;
		this.email = email;
		this.anh = anh;
		this.mamon = mamon;
	}
	public String getMasv() {
		return masv;
	}
	public void setMasv(String masv) {
		this.masv = masv;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getMamon() {
		return mamon;
	}
	public void setMamon(String mamon) {
		this.mamon = mamon;
	}
	@Override
	public String toString() {
		return "sinhvienbean [masv=" + masv + ", hoten=" + hoten + ", diachi=" + diachi + ", email=" + email + ", anh="
				+ anh + ", mamon=" + mamon + "]";
	}
	
}
