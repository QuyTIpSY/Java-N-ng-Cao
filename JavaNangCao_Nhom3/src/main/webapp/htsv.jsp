<%@page import="java.util.ArrayList"%>
<%@page import="bean.monhocbean"%>
<%@page import="dao.monhocdao"%>
<%@page import="bean.sinhvienbean"%>
<%@page import="dao.sinhviendao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Hiển thị sinh viên</title>
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
	      <li class="active"><a href="#">Trang chủ</a></li>
	      <li><a href="#">Giỏ hàng</a></li>
	      <li><a href="#">Thanh toán</a></li>
	      <li><a href="#">Lịch sử mua hàng</a></li>
	    </ul>
	    <ul class="nav navbar-nav navbar-right">
	      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
	      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	    </ul>
	  </div>
	</nav>
	<style>
		img{
/* 			padding: 20px; */
			width: 242px;
			height: auto;
		}
	</style>
	
	<table width="1000" align="center">
		<tr>
			<td width="300" valign="top">
				<table>
					<%monhocdao mhdao=new monhocdao();
					for(monhocbean mh: mhdao.getmon() ){%>
						<tr>
							<td><a href="htsv.jsp?mm=<%=mh.getMamon()%>"><%=mh.getTenmon() %></a></td>
						</tr>
					<%} %>
				</table>
			</td>
			
			 <td width="800" valign="top">
      	 	  <table class="table">
      	 	<%
	      	 	request.setCharacterEncoding("utf-8");
	      	 	response.setCharacterEncoding("utf-8");
      	 	   sinhviendao svdao= new sinhviendao();
      	 	   ArrayList<sinhvienbean> ds=null;
      	 	   String mm=request.getParameter("mm");
      	 	   String search=request.getParameter("txttks");
      	 	   if(mm!=null)
      	 		   ds=svdao.TimMa(mm);
      	 	   else
      	 		   if(search!=null)
      	 			   ds=svdao.Search(search);
      	 	   	   else
      	 	   			ds=svdao.getsv();   		
      	 	   int n=ds.size();
      	 	   for(int i=0;i<n;i++){
      	 			sinhvienbean sv=ds.get(i);
      	 			%>
	      	 		<tr>
	      	 		   <td>
		      	 		   <img src="<%=sv.getAnh() %>"><br>
		      	 		   <%=sv.getHoten() %> <br>
		      	 		   <%=sv.getMamon() %> <br>
	      	 		   </td>
	      	 		   <%i++;
	      	 		   if(i<n){
	      	 			sv=ds.get(i);
	      	 		     %>
	      	 		   <td>
		      	 		    <img src="<%=sv.getAnh() %>"><br>
		      	 		   <%=sv.getHoten() %> <br>
		      	 		   <%=sv.getMamon() %> <br>
	      	 		   </td>
	      	 		   <%} %>
	      	 		</tr>
	      	 	<%} %>
      	 	</table>
      	 </td>
      	 
      	 <td width="200" valign="top">
      	 	<form action="htsv.jsp" method="post">
      	 		<input type="text" name="txttks" placeholder="Tìm kiếm"> <br>
      	 		<input type="submit" value="Search" name="bnttk"  class="btn-primary">
      	 	</form>
      	 </td>

		</tr>
	</table>

</body>
</html>