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
	      <li class="active"><a href="htsachController">Trang chủ</a></li>
	      <li><a href="htgioController">Giỏ hàng</a></li> <b>
      	<%	try {
	      		giohangbo ghbo = (giohangbo)session.getAttribute("gio");
	      		out.print(ghbo.ds.size());
      		} catch(Exception e) {
      			e.printStackTrace();
      		}
      	%> </b>
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
      	 	ArrayList<loaibean> dsloai=(ArrayList<loaibean>) request.getAttribute("dsloai");
      	 	  for(loaibean loai: dsloai) {%>
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
 			 <table class="table table-hover">
      	 	<%
      	 		ArrayList<sachbean> dssach = (ArrayList<sachbean>) request.getAttribute("dssach");
      	 	   	int n = dssach.size();
      	 		for(int i=0;i<n;i++){
      	 			sachbean s=dssach.get(i);
      	 			%>
	      	 		<tr>
	      	 		   <td>
		      	 		   <img src="<%=s.getAnh() %>"><br>
		      	 		   <%=s.getTensach() %> <br>
		      	 		   <%=s.getGia() %> <br>
		      	 		   <a href="giohangController?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&gia=<%=s.getGia()%>">
		      	 		     <img src="mua.jpg">
		      	 		  </a> 
	      	 		   </td>
	      	 		   <%i++;
	      	 		   if(i<n){
	      	 			s=dssach.get(i);
	      	 		     %>
	      	 		   <td>
		      	 		   <img src="<%=s.getAnh() %>"><br>
		      	 		   <%=s.getTensach() %> <br>
		      	 		   <%=s.getGia() %> <br>
		      	 		   <a href="giohangController?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&gia=<%=s.getGia()%>">
		      	 		     <img src="mua.jpg">
		      	 		  </a> 
	      	 		   </td>
	      	 		   <%} %>
	      	 		  
	      	 		  
	      	 		</tr>
	      	 	<%} %>
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