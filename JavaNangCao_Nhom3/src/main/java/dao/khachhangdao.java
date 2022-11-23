package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.khachhangbean;

public class khachhangdao {
	
	
	
	public khachhangbean ktdn(String tendn, String pass) {
		try {
			KetNoidao kn= new KetNoidao();
			kn.KetNoi();
			String sql="select * from KhachHang where tendn=? and pass=?";
			PreparedStatement cmd= kn.cn.prepareStatement(sql);
			cmd.setString(1, tendn);
			cmd.setString(2, pass);
			ResultSet rs=cmd.executeQuery();
			khachhangbean kh=null;
			if(rs.next()){//Dang nhap dung
				int makh=rs.getInt("makh");
				String hoten=rs.getString("hoten");
				String diachi=rs.getString("diachi");
				String sodt=rs.getString("sodt");
				String email=rs.getString("email");
				kh=new khachhangbean(makh, hoten, diachi, sodt, email, tendn, pass);
			}
			rs.close();kn.cn.close();
			return kh;
			
		} catch (Exception e) {
			e.printStackTrace();return null;
		}
	}
	
	public static void main(String[] args) {
		khachhangdao khdao= new khachhangdao();
		System.out.println(khdao.ktdn("nkchung", "1234").getHoten());

	}

	
	public void addkhachhang(String hoten, String diachi, String sodt, String email, String tendn, String mk){
		try {
			KetNoidao kn=new KetNoidao();
			kn.KetNoi();
			
			String query="INSERT INTO KhachHang (hoten, diachi, sodt, email, tendn, pass) VALUES (?,?,?,?,?,?)";
			
			PreparedStatement cmd=kn.cn.prepareStatement(query);
			
			cmd.setString(1, hoten);
			cmd.setString(2, diachi);
			cmd.setString(3, sodt);
			cmd.setString(4, email);
			cmd.setString(5, tendn);
			cmd.setString(6, mk);
			
			cmd.executeUpdate();
			
			kn.cn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
}
