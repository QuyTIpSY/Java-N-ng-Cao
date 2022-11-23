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
	      <li><a href="chuyentienAdminController">Xác nhận chuyển tiền</a></li>
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
 		<tr>
 		<td width="800" valign="top" >
			 			 <form action="dangnhapadminController" method="post">
						  	Username: <input name="txtun" type="text" value=""> <br>
						  	Password: <input name="txtpass" type="password" value=""> <br>
						  	<input name="butt" type="submit" value="Login">
						</form>
			 		</td>
 	</tr>
 		
 	</tr>
 </table>
</body>
</html>