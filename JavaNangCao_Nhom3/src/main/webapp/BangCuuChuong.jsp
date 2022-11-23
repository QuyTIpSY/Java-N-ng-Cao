<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bảng cửu chương</title>
</head>
<body>
	<style>
		table{
			width: 1000;
		}
		table, td{
			border: 1px solid #333;
			border-collapse: collapse;
		}
		td{
			padding: 6px 10px;
		}
		.table.table-bright{
			background: #FF99FF;
			color: #006600;
		}
		.table.table-striped td:nth-child(even){
			background: #FF6699;
		}
	</style>

	<table  class="table table-bright table-striped" align= "center">
	
      	<%for(int i=1;i<=10;i++) {%>
             <tr>
             	<%for(int j=1;j<=10; j++) {%>
             		<td><%=j %> x <%=i %>=<%=j*i %></td>
             	<%} %>
             </tr>
      	<%} %>
    </table>
    
</body>
</html>