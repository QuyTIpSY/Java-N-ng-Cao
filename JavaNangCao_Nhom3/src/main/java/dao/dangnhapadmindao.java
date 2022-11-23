package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.dangnhapadminbean;
import bean.khachhangbean;

public class dangnhapadmindao {
	public dangnhapadminbean ktdn(String TenDangNhap, String MatKhau) {
		try {
			KetNoidao kn= new KetNoidao();
			kn.KetNoi();
			String sql="select * from DangNhap where TenDangNhap=? and MatKhau=?";
			PreparedStatement cmd= kn.cn.prepareStatement(sql);
			cmd.setString(1, TenDangNhap);
			cmd.setString(2, MatKhau);
			ResultSet rs=cmd.executeQuery();
			dangnhapadminbean admin=null;
			if(rs.next()){//Dang nhap dung
				String TenDangNhap1=rs.getString("TenDangNhap");
				String MatKhau1=rs.getString("MatKhau");
				Boolean Quyen=rs.getBoolean("Quyen");
				admin=new dangnhapadminbean(TenDangNhap1, MatKhau1, Quyen);
			}
			rs.close();kn.cn.close();
			return admin;
			
		} catch (Exception e) {
			e.printStackTrace();return null;
		}
	}
}
