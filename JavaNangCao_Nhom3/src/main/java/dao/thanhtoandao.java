package dao;

import java.sql.PreparedStatement;

public class thanhtoandao {
	public void thanhtoan(long mahd) {
		try {
			KetNoidao kn=new KetNoidao();
			kn.KetNoi();			
			String query1="update hoadon set damua=1 where MaHoaDon=?";
			String query2="update ChiTietHoaDon set damua=1 where MaHoaDon=?";
			PreparedStatement cmd1=kn.cn.prepareStatement(query1);
			PreparedStatement cmd2=kn.cn.prepareStatement(query2);
			cmd1.setLong(1, mahd);
			cmd2.setLong(1, mahd);
			int kq=cmd1.executeUpdate();
			int kq2=cmd2.executeUpdate();
			kn.cn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
