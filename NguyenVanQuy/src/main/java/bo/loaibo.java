package bo;

import java.util.ArrayList;

import bean.loaibean;
import dao.loaidao;

public class loaibo {
	loaidao ldao=new loaidao();
	ArrayList<loaibean> ds;
	public ArrayList<loaibean> getloai(){
		ds=ldao.getloai(); // sai thang dao lay ve
		return ds;
	}

	public ArrayList<loaibean> Tim(String key){
	  	 ArrayList<loaibean> tam= new ArrayList<loaibean>();
	  	 String tmp=key;
	  	 int gia=Integer.parseInt(tmp);
	  	 for(loaibean s: ds)
		   	if(s.getTendidong().toLowerCase().trim().contains(key.toLowerCase().trim()) || s.getGia()>=gia)
		   			tam.add(s);
		 return tam;
	}
	
	public ArrayList<loaibean> TimGia(int key){
	  	 ArrayList<loaibean> tam= new ArrayList<loaibean>();
	  	 for(loaibean s: ds)
		   	if(s.getGia()>=key)
		   			tam.add(s);
		 return tam;
	}
}


