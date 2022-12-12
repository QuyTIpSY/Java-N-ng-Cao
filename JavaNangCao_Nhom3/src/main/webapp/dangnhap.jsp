<%@page import="bean.loaibean"%>
<%@page import="bo.loaibo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Đăng nhập</title>
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
	      <li><a href="thanhtoan.jsp">Thanh toán</a></li>
	      <li><a href="lichsumuahang.jsp">Lịch sử mua hàng</a></li>
	    </ul>
	    <ul class="nav navbar-nav navbar-right">
	      <li><a href="dangkyController"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
	      <li><a href="dangnhapController"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
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

			<td width="800" valign="top" >
			 			 <form action="ktdn" method="post">
						  	Username: <input name="txtun" type="text" value=""> <br>
						  	Password: <input name="txtpass" type="password" value=""> <br>
						  	<input name="butt" type="submit" value="Login">
						</form>
			 		</td>
 		
 		
 		<td width="200" valign="top" class="form-control"> 
 			 <form action="htsach.jsp" method="post">
				  <input class="form-control" name="txttk" type="text" value="" placeholder="Nhap tt"> <br>
				  <input name="butt" type="submit" value="Search" class="btn-primary">
			</form>

 		</td>
 		
 	</tr>
 </table>
</body>
</html>