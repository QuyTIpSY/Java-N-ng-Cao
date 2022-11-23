package bo;

import dao.thanhtoandao;

public class thanhtoanbo {
	thanhtoandao ttdao=new thanhtoandao();
	public void thanhtoan(long mahd) {
		ttdao.thanhtoan(mahd);
	}
}
