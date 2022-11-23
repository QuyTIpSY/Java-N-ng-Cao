package bo;

import java.util.ArrayList;

import bean.chitietbean;
import bean.hoadonbean;
import dao.chitietdao;
import dao.hoadondao;

public class chitietbo {
	 chitietdao ctdao= new chitietdao();
	    public int Them(String masach, long soluongmua, long mahd) {
	    	return ctdao.Them(masach, soluongmua, mahd);
	    }
}
