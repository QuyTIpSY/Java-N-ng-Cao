package dao;

import java.util.ArrayList;

import bean.monhocbean;

public class monhocdao {
	public ArrayList<monhocbean> getmon(){
		ArrayList<monhocbean> ds=new ArrayList<>();
		ds.add(new monhocbean("Tin", "Cấu trúc dữ liệu"));
		ds.add(new monhocbean("Toan", "Vi tích phân hàm 1 biến"));
		ds.add(new monhocbean("Sinh", "Công nghệ sinh học"));
		return ds;
	}
}
