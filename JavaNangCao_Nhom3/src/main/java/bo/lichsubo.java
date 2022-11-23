package bo;

import java.util.ArrayList;

import bean.lichsubean;
import dao.lichsudao;

public class lichsubo {
	lichsudao lsdao=new lichsudao();
	ArrayList<lichsubean> dsls;
	public ArrayList<lichsubean> getls(int makh){
		dsls=lsdao.getlichsu(makh);
		return dsls;
	}
}
