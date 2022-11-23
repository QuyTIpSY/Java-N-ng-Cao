package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.lichsubean;

public class lichsudao {
	public ArrayList<lichsubean> getlichsu(int makh){
		try {
			ArrayList<lichsubean> dsmua=new ArrayList<lichsubean>();
			
			KetNoidao kn=new KetNoidao();
			kn.KetNoi();
			String query="SELECT dbo.sach.tensach, dbo.hoadon.NgayMua, dbo.ChiTietHoaDon.SoLuongMua, dbo.sach.gia, dbo.ChiTietHoaDon.SoLuongMua * dbo.sach.gia AS Thanhtien\r\n"
					+ "FROM     dbo.ChiTietHoaDon INNER JOIN\r\n"
					+ "                  dbo.hoadon ON dbo.ChiTietHoaDon.MaHoaDon = dbo.hoadon.MaHoaDon INNER JOIN\r\n"
					+ "                  dbo.sach ON dbo.ChiTietHoaDon.MaSach = dbo.sach.masach\r\n"
					+ "WHERE  (dbo.ChiTietHoaDon.damua = 1) AND (dbo.hoadon.makh = ?)";
			PreparedStatement cmd=kn.cn.prepareStatement(query);
			cmd.setInt(1, makh);
			ResultSet rs=cmd.executeQuery();
			
			while(rs.next()) {
				String tensach=rs.getString("tensach");
				Date NgayMua=rs.getDate("NgayMua");
				int SoLuongMua=rs.getInt("SoLuongMua");
				long gia=rs.getLong("gia");
				long Thanhtien=rs.getLong("Thanhtien");
				dsmua.add(new lichsubean(tensach, NgayMua, SoLuongMua, gia, Thanhtien));
			}
			rs.close();
			kn.cn.close();
			return dsmua;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
//	public static void main(String[] args) {
//		lichsudao l=new lichsudao();
//		System.out.println(l.getlichsu(20));
//	}
}
