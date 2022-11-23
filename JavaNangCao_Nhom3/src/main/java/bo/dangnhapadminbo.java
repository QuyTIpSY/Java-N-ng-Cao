package bo;

import bean.dangnhapadminbean;
import dao.dangnhapadmindao;

public class dangnhapadminbo {
	dangnhapadmindao loginadminbo=new dangnhapadmindao();
	public dangnhapadminbean ktdn(String TenDangNhap, String MatKhau) {
		return loginadminbo.ktdn(TenDangNhap, MatKhau);
	}
}
