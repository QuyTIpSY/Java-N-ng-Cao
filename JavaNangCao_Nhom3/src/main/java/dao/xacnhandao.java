package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.lichsubean;
import bean.xacnhanbean;

public class xacnhandao {
	public ArrayList<xacnhanbean> getxacnhan(){
		try {
			ArrayList<xacnhanbean> ds=new ArrayList<xacnhanbean>();
			
			KetNoidao kn=new KetNoidao();
			kn.KetNoi();
			String query="SELECT * FROM Vxacnhan";
			PreparedStatement cmd=kn.cn.prepareStatement(query);
//			cmd.setInt(1, makh);
			ResultSet rs=cmd.executeQuery();
			
			while(rs.next()) {
				long maChiTietHD=rs.getLong("MaChiTietHD");
				long maHoaDon=rs.getLong("MaHoaDon"); 
				String hoten=rs.getString("hoten"); 
				long soLuongMua=rs.getLong("SoLuongMua");
				long gia=rs.getLong("gia");
				long thanhtien=rs.getLong("thanhtien");
				boolean damua=rs.getBoolean("damua");
				ds.add(new xacnhanbean(maChiTietHD, maHoaDon, hoten, soLuongMua, gia, thanhtien, damua));
			}
			rs.close();
			kn.cn.close();
			return ds;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();return null;
		}
	}
}
