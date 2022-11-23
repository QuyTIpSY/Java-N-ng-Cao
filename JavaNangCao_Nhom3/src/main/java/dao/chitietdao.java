package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import bean.chitietbean;
import bean.hoadonbean;

public class chitietdao {
	public int Them(String masach, long soluongmua, long mahd) {
		try {
			KetNoidao kn= new KetNoidao();
			kn.KetNoi();
			String sql="insert into ChiTietHoaDon(MaSach,SoluongMua, MaHoaDon,damua) values(?,?,?,?)";
			PreparedStatement cmd= kn.cn.prepareStatement(sql);
			cmd.setString(1, masach);
			cmd.setLong(2, soluongmua);
			cmd.setLong(3, mahd);
			cmd.setBoolean(4, false);
			 int kq= cmd.executeUpdate();
			 kn.cn.close();
			return kq;
		} catch (Exception e) {
			e.printStackTrace();return 0;
		}
	}
	
	public static void main(String[] args) {
		new chitietdao().Them("b18", 0, 30);

	}

}
