<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="DangkiTaiLieu.css">
<title>Đăng ký</title>
</head>
<body>
	<div id="wrapper">	
		<div id="header">
			<div id="top">
				<span>ĐĂNG KÝ </span>
			</div>
			
			<div id="top-content">
				<div id="top-content-content">
					<li>Đăng ký nhanh qua Facebook </li>
					<a href="#">
						<img width="200" src="images/fb.png" alt="">
					 </a>
					 
					 <div >
					 	<a class="linkbold" href="#">Đăng ký mới bằng tài khoản TaiLieu.VN</a> <br>
					 </div>
				</div>
				
				 <div id="side-bar">
					<ul class="list-sidebar">
						<li>Thưởng ngay 50 ePoints khi đăng ký mới & 5 ePoints cho mỗi lượt chia sẻ Facebook</li>
						<br/>
						<li>Tích lũy nhiều ePoints khi Upload tài liệu >></li>
					</ul>
				</div>
			</div>
			
		</div>
		
		<div id="wp-content">
			<div id="content">
				  Bạn cần kích hoặt tài khoản qua Email sau khi đăng ký để nhận ngay 50 ePoints thưởng từ TaiLieu.VN <br>
				 <form>
				 	<div class="form-group">
				 		<br>
				 		<div> 
						 	<input type="text" name="username" placeholder="Nhập username">
						 	<input type="text" name="hoten" placeholder="Nhập Họ và Tên">
					 	</div>
					 	<br>
					 	<div>
						 	<input type="password" name="password" placeholder="Nhập mật khẩu"> 
						 	<select>
						 		<option selected="selected">Giới tính</option>
						 		<option>Nam</option>
						 		<option>Nữ</option>
						 	</select>
					 	</div>
					 	<br>
					 	<div>
						 	<input type="password" name="repassword" placeholder="Nhập lại mật khẩu"> 
						 	<select>
						 		<option selected="selected">Ngày sinh</option>
						 		<%for(int i=1;i<=31;i++) {%>
						 			<option><%=i %></option>
						 		<%} %>
						 	</select>
						 	<select>
						 		<option selected="selected">Tháng</option>
						 		<%for(int i=1;i<=12;i++) {%>
						 			<option><%=i %></option>
						 		<%} %>
						 	</select>
						 	<select>
						 		<option selected="selected">Năm</option>
						 		<%for(int i=1960;i<=1999;i++) {%>
						 			<option><%=i %></option>
						 		<%} %>
						 	</select>
					 	</div>
					 	<br>
					 	<div>
						 	<input type="text" name="email" placeholder="Nhập địa chỉ email"> 
						 	<select>
						 		<option selected="selected">Tỉnh/TP</option>
						 		<option>An Giang</option>
								<option>Bà Rịa – Vũng Tàu</option>
								<option>Bạc Liêu</option>
								<option>Bắc Giang</option>
								<option>Bắc Kạn</option>
								<option>Bắc Ninh</option>
								<option>Bến Tre</option>
								<option>Bình Dương</option>
								<option>Bình Định</option>
								<option>Bình Phước</option>
								<option>Bình Thuận</option>
								<option>Cà Mau</option>
								<option>Cao Bằng</option>
								<option>Cần Thơ</option>
								<option>Đà Nẵng</option>
								<option>Đắk Lắk</option>
								<option>Đắk Nông</option>
								<option>Điện Biên</option>
								<option>Đồng Nai</option>
								<option>Đồng Tháp</option>
								<option>Gia Lai</option>
								<option>Hà Giang</option>
								<option>Hà Nam</option>
								<option>Hà Nội</option>
								<option>Hà Tĩnh</option>
								<option>Hải Dương</option>
								<option>Hải Phòng</option>
								<option>Hậu Giang</option>
								<option>Hòa Bình</option>
								<option>Thành phố Hồ Chí Minh</option>
								<option>Hưng Yên</option>
								<option>Khánh Hòa</option>
								<option>Kiên Giang</option>
								<option>Kon Tum</option>
								<option>Lai Châu</option>
								<option>Lạng Sơn</option>
								<option>Lào Cai</option>
								<option>Lâm Đồng</option>
								<option>Long An</option>
								<option>Nam Định</option>
								<option>Nghệ An</option>
								<option>Ninh Bình</option>
								<option>Ninh Thuận</option>
								<option>Phú Thọ</option>
								<option>Phú Yên</option>
								<option>Quảng Bình</option>
								<option>Quảng Nam</option>
								<option>Quảng Ngãi</option>
								<option>Quảng Ninh</option>
								<option>Quảng Trị</option>
								<option>Sóc Trăng</option>
								<option>Sơn La</option>
								<option>Tây Ninh</option>
								<option>Thái Bình</option>
								<option>Thái Nguyên</option>
								<option>Thanh Hóa</option>
								<option>Thừa Thiên Huế</option>
								<option>Tiền Giang</option>
								<option>Trà Vinh</option>
								<option>Tuyên Quang</option>
								<option>Vĩnh Long</option>
								<option>Vĩnh Phúc</option>
								<option>Yên Bái</option>
						 	</select>
					 	</div>
					 	<br>
					 	<div>
						 	<input type="text" name="reemail" placeholder="Nhập lại địa chỉ email">
						 	<input type="text" name="verification" placeholder="Nhập mã xác nhận">
					 	</div>
					 	<div >
					 		<br>
					 		<input class="button-group" type="button" value="Đăng ký"> 
					 		<input type="checkbox" name="dongy">Tôi đồng ý với các Chính Sách và Thỏa Thuận Sử Dụng của TaiLieu.VN
					 		<hr>
					 	</div>			 	
				</div>
			 </form>
			 <div>
				<a class="linkbold" href="#">Bạn đã có tài khoản TaiLieu.VN? Đăng nhập</a>
			</div>
			</div>
		</div>
			<div id="footer">
				<ul>
					<li>
						<p>
							Thưởng
							<span class="color1">50</span>
							ePoints khi đăng ký mới
							<br>
							Tặng
							<span class="color1">5</span>
							ePoints cho mỗi lượt chia sẻ Facebook
						</p>
					</li>
					<li>
						<p>
							Xem và Tải trên
							<span class="color1">1 Triệu</span>
							Tài Liệu miễn phí		
							<br>
							Kết nối
							<span class="color1">5 Triệu</span>
							Thành Viên 
							<a class="link" href="#">TaiLieu.VN</a>
						</p>
					</li>
					<li>
						<p>
							Kết bạn với
							<a class="linkbold" href="#">TaiLieu.VN</a>
							trên
							<a class="linkbold" href="#">Facebook</a>
							để nhận link download miễn phí
							<span class="color2">100</span>
							tài liệu
							<span class="color2">HOT</span>
							mỗi ngày
						</p>
					</li>
				</ul>
			</div>
	</div>
</body>
</html>