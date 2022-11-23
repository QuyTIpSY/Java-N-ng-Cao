<%@page import="bean.loaibean"%>
<%@page import="java.awt.font.ImageGraphicAttribute"%>
<%@page import="bean.sanphambean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="htsanpham.css">
<title>Trang chủ</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
</head>
<body>
	
	<div id="wrapper">
		<div id="header" class="outer header-main">
			<div class="header-top" style="display: flex;" >
				<div class="logo">
					<a href="#"><img src="Images/logo.jpg" width="200" ></a>	
				</div>
			
				<div class="search">
					<form action="#" method="post" class="form-search">
						<div>
							<input type="text" name="keyword" placeholder="Tìm kiếm sản phẩm, mã sản phẩm,..." style="height: 40px;">
							<button type="button" class="btn-search" style="height: 40px;">Search</button>
						</div>
					</form>
				</div>
				
				<div class="tmp">
					<span><img src="Images/top1.png" width="40" style="background-color: #44BBFF"></span> 
					<div class="tmp1">
						<span>CAM KẾT 100%</span>
						<span>HÀNG CHÍNH HÃNG</span>
					</div>
					
				</div>
				<div class="tmp">
					<a href="#"><img src="Images/top2.png" width="40" style="background-color: #44BBFF"></a>
					<div class="tmp1">
						<span>MUA HÀNG</span>	
						<span>ONLINE</span>	
					</div>			
				</div>
				<div class="tmp">
					<a href="#"><img src="Images/top3.png" width="40" style="background-color: #44BBFF"></a>	
					<div class="tmp1">
						<span style="color: red; font-weight: bold">0123 456 789</span>	
						<span style="color: red; font-weight: bold">0123 789 456</span>	
					</div>
				</div>
			</div>
			
			<div class="header-bot">
				<nav class="navbar navbar-inverse" style="background-color: #E01931">
				  <div class="container-fluid">
				    <ul class="nav navbar-nav">
				      <li class="active"><a  style="background-color: #5659C9; font-weight: bold" href="#">TẤT CẢ SẢN PHẨM</a></li>
				      <li><a style="color: white; font-weight: bold" href="#">GIỎ HÀNG</a></li>    	
				      <li><a style="color: white; font-weight: bold" href="#">THANH TOÁN</a></li>
				      <li><a style="color: white; font-weight: bold" href="#">LỊCH SỬ MUA HÀNG</a></li>
				    </ul>
				    <ul class="nav navbar-nav navbar-right">
				      <li><a style="color: white; font-weight: bold" href="#"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>		 
				      	<li><a style="color: white; font-weight: bold" href="#"><span class="glyphicon glyphicon-log-out"></span> Đăng ký</a></li>	   
				    </ul>
				  </div>
				</nav>
			</div>
		</div>
		
		<div id="wp-content">
			<div id="content-top">
				<div>
					<table class="tbl">
						<tr >
							<%ArrayList<loaibean> dssp=(ArrayList<loaibean>)request.getAttribute("dsloai"); 
							for(loaibean ds: dssp){%>
								<img src="<%=ds.getanh() %>">
								<a href="#"><%=ds.getTenloai() %></a><br>
							<%} %>
						</tr>
					</table>					
				</div>	
				
				<div>
					<img alt="" src="Images/banner.jpg">
				</div>
			</div>
			
			<div>
				
			</div>
		</div>
		
		<div id="footer">
	
		</div>
	</div>
	
</body>
</html>