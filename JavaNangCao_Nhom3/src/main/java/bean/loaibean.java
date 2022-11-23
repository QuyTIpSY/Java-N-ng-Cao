package bean;

public class loaibean {
	private String maloai;
	private String tenloai;
	// phát sinh ra 2 hàm tạo: 1. có tham số, 2. k tham số
	//Phát sinh các hàm get và set cho all các trường
	
	public String getMaloai() {
		return maloai;
	}
	public loaibean(String maloai, String tenloai) {
		super();
		this.maloai = maloai;
		this.tenloai = tenloai;
	}
	public loaibean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public String getTenloai() {
		return tenloai;
	}
	public void setTenloai(String tenloai) {
		this.tenloai = tenloai;
	}
	@Override
	public String toString() {
		return "loaibean [maloai=" + maloai + ", tenloai=" + tenloai + "]";
	}
	
}
