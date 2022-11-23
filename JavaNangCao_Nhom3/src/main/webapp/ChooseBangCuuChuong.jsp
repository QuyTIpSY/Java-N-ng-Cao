<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bảng cửu chương</title>
<style>
	body{
		max-width: 960px;
		margin: 0 auto;
	}
	#content{
		text-align: center;
		margin-top: 10px;
	}
	.input{
		width: 100px;
		height: auto;
	}
	.bt{background: #bdc3c7}
</style>
</head>
<body>
	<div id="content">
		<form action="" method="post">
			<label>Nhập bảng cửu chương: </label>
			<input class="input" type="number" name="quantity" min="1" max="10" placeholder="1 >= n <= 10">
			<input class="bt" type="submit" name="bt" value="Kết quả">
			<hr>
			<%String num=request.getParameter("quantity"); %>
		<%out.print(num); %> 
			<%-- <table border="1px" align="center">
			<%if(num!=null) {%>
				<%int n=Integer.parseInt(num); %>
				<%for(int i=1;i<=10;i++) {%>
					<tr>
						<td><%=num %>x<%=i %>=<%=i*n %></td>
					</tr>
			<%} %> 
			<%} %>
	</table> --%>
		</form>
	</div>
</body>
</html>