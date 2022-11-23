package dao;

import java.util.ArrayList;

import bean.sinhvienbean;

public class sinhviendao {
	public ArrayList<sinhvienbean> getsv(){
		ArrayList<sinhvienbean> ds=new ArrayList<>();
		ds.add(new sinhvienbean("sv1", "Davor Šuker", "Croatia", "sv1@gmail.com", "images/croatia/suker.jpg", "Toan"));
		ds.add(new sinhvienbean("sv2", "Mateo Kovacic", "Croatia", "sv2@gmail.com", "images/croatia/kovacic.jpg", "Sinh"));	
		ds.add(new sinhvienbean("sv3", "Luka Modric", "Croatia", "sv3@gmail.com", "images/croatia/modric.jpg", "Sinh"));
		ds.add(new sinhvienbean("sv4", "Marcelo Brozovic", "Croatia", "sv4@gmail.com", "images/croatia/brozovic.jpg", "Sinh"));
		ds.add(new sinhvienbean("sv5", "Domagoj Vida", "Croatia", "sv5@gmail.com", "images/croatia/vida.jpg", "Tin"));
		ds.add(new sinhvienbean("sv6", "Ivan Perisic", "Croatia", "sv6@gmail.com", "images/croatia/perisic.jpg", "Tin"));
		return ds;
	}
	
	public ArrayList<sinhvienbean> TimMa(String ma){
		ArrayList<sinhvienbean> tmp=new ArrayList<>();
		ArrayList<sinhvienbean> ds=getsv();
		for(sinhvienbean s:ds) {
			if(s.getMamon().equals(ma)) {
				tmp.add(s);
			}
		}
		return tmp;
	}
	
	public ArrayList<sinhvienbean> Search(String search){
		ArrayList<sinhvienbean> tmp=new ArrayList<>();
		ArrayList<sinhvienbean> ds=getsv();
		for(sinhvienbean s:ds) {
			if(s.getMamon().toLowerCase().trim().contains(search.toLowerCase().trim())
					|| s.getHoten().toLowerCase().trim().contains(search.toLowerCase().trim())
					|| s.getMasv().toLowerCase().trim().contains(search.toLowerCase().trim())) {
				tmp.add(s);		
				}
		}
		return tmp;
	}
}
