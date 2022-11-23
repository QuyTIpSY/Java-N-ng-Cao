<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
<%@page import="bo.hoadonbo"%>
<%@page import="bean.khachhangbean"%>
<%@page import="bean.loaibean"%>
<%@page import="bo.loaibo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Thanh toán</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <ul class="nav navbar-nav">
	      <li class="active"><a href="htsachController">Trang chủ</a></li>
	      <li><a href="htgioController">Giỏ hàng</a></li>
	      <li><a href="thanhtoanController">Thanh toán</a></li>
	      <li><a href="lichsuController">Lịch sử mua hàng</a></li>
	    </ul>
	    <ul class="nav navbar-nav navbar-right">
	      <li><a href="dangxuatController"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
	      <%if(session.getAttribute("kh")!=null) {%>
	      	<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Xin chào, <%
	      	
	      	khachhangbean kh =(khachhangbean)session.getAttribute("kh");
	      	out.print(kh.getHoten());
	      	
	      	%></a></li>
	      <%}else{ %>
	      	<li><a href="dangnhapController"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	      <%} %>
	    </ul>
	  </div>
	</nav>

 <table width="1000" align="center">	
 	<tr>
 		<td width="200" valign="top">
 			<table class="table table-hover">
      	 	  <%
      	 	    loaibo ldao=new loaibo();
      	 	  for(loaibean loai: ldao.getloai()) {
      	 	   %>
      	 	     <tr>
      	 	        <td>
      	 	          <a href="htsachController?ml=<%=loai.getMaloai()%>">
      	 	             <%=loai.getTenloai() %>
      	 	          </a>  
      	 	        </td>
      	 	      </tr>
      	 	      <%} %>
      	 	</table>
 		</td>
 		
			
			<td width="800" valign="top"  >
					<%
						khachhangbean kh = (khachhangbean)session.getAttribute("kh");	
						hoadonbo hdbo= new hoadonbo();
						giohangbo ghtmp = (giohangbo)session.getAttribute("giotmp");
						if(ghtmp!=null && kh!=null) {
					%>
			 		<img src="minhkhai-logo.png" width="100"> <br>
			 		Nhà sách Minh Khai<br>
			 		249 Nguyễn Thị Minh Khai<br>
			 		ĐT: 0123456789<br>
			 		<div style="font-weight: bold">HÓA ĐƠN THANH TOÁN</div>
			 		<div>Khách hàng: <%=kh.getHoten()%></div>
			 		<div>Ngày: <%=session.getAttribute("ngay") %></div>
			 		<div>Mã đơn hàng: <%=hdbo.maxhd() %></div><hr>
			 		<table>
			 			<tr>
			 				<td>Tên sách</td>
						    <td>Số lượng</td>
						    <td>Giá</td>
						    <td>Thành tiền</td>
			 			</tr>
			 			 <% 
			      	 		for(giohangbean list: ghtmp.ds) {%>
					      	 	<tr>
						      	 	<td> <%=list.getTensach()%> </td>
						      	 	<td><%=list.getSoluong() %></td>
						      	 	<td> <%=list.getGia() %> </td>
						      	 	<td> <%=list.getThanhtien() %> </td>
					      	 	</tr>
			 			<% }%>
			 				<form action="lichsuController" method="post">
				 				<button type="submit" name="datmua" value="Thanh toán">Thanh toán</button>
				 			</form>
			 			<%} else{ %>
			 			 		<p>Hóa đơn trống trống! Vui lòng <a href="htgioController">xác nhận đặt</a> trong giỏ hàng</p>
			 			<%}%>
							 
			 		</table>
			</td>
 		
 		
 		<td width="200" valign="top" class="form-control"> 
 			 <form action="htsachController" method="post">
				  <input class="form-control" name="txttk" type="text" value="" placeholder="Nhap tt"> <br>
				  <input name="butt" type="submit" value="Search" class="btn-primary">
			</form>

 		</td>
 		
 	</tr>
 </table>
</body>
</html>