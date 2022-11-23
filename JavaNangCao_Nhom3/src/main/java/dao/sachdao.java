package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.sachbean;

public class sachdao {
	public ArrayList<sachbean> getsach(){
		try {
			ArrayList<sachbean> ds= new ArrayList<sachbean>();
			
			//B1: kết nối vào csdl
			KetNoidao kn=new KetNoidao();
			kn.KetNoi();
			//B2: Lấy dữ liệu về
				//b2.1: thiết lập câu lệnh sql
				String sql="select * from sach";
				//b2.2: Thực hiện câu lệnh
				PreparedStatement cmd=kn.cn.prepareStatement(sql);
				ResultSet rs=cmd.executeQuery();
			//B3: Duyệt qua tập dữ liệu trong rs và lưu vào mảng ds
				while(rs.next()) {
					//Lấy về maloai và tenloai
					String masach=rs.getString("masach");
					String tensach=rs.getString("tensach");
					String tacgia=rs.getString("tacgia");
					Long gia=rs.getLong("gia");
					Long soluong=rs.getLong("soluong");
					String anh=rs.getString("anh");
					String maloai=rs.getString("maloai");
					ds.add(new sachbean(masach, tensach, tacgia, gia, soluong, anh, maloai));
				}
			//B4: đóng kết nối
				rs.close();
				kn.cn.close();
			return ds;
		} catch (Exception e) {
			// TODO: handle exception
			e.getStackTrace();return null;
		}
	}
}
