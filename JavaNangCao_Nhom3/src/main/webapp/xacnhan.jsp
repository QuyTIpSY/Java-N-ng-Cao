<%@page import="bean.xacnhanbean"%>
<%@page import="bean.dangnhapadminbean"%>
<%@page import="bean.khachhangbean"%>
<%@page import="bo.giohangbo"%>
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="bean.sachbean"%>
<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bán sách online</title>
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
	      <li class="active"><a href="loaiAdminController">Quản lý loại</a></li>
	      <li><a href=""sachAdminController"">Quản lý sách</a></li>
	      <li><a href="xacnhanControllerController">Xác nhận chuyển tiền</a></li>
	    </ul>
	    <ul class="nav navbar-nav navbar-right">
	      <li><a href="dangxuatController"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
	      <%if(session.getAttribute("admin")!=null) {%>
	      	<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Xin chào, <%
	      	
	      	dangnhapadminbean dn =(dangnhapadminbean)session.getAttribute("admin");
	      	out.print(dn.getTenDangNhap());
	      	
	      	%></a></li>
	      <%}else{ %>
	      	<li><a href="dangnhapController"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	      <%} %>
	    </ul>
	  </div>
	</nav>
	
	<table width="1000" align="center">
 		<%ArrayList<xacnhanbean> dsxn=(ArrayList<xacnhanbean>)request.getAttribute("dsxacnhan");
 		for(xacnhanbean ds: dsxn){%>
 			<tr>
 				<td><%=ds.getMaChiTietHD() %></td>
 				<td><%=ds.getHoten() %></td>
 				<td><%=ds.getSoLuongMua() %></td>
 				<td><%=ds.getGia() %></td>
 				<td><%=ds.getThanhtien() %></td>
 				<td><a href="xacnhanchuyentienController?mct=<%=ds.getMaChiTietHD()%>">Xác nhận đã chuyển tiền</a></td>
 			</tr>
 		<%} %>
 	</table>
 	
</body>
</html>