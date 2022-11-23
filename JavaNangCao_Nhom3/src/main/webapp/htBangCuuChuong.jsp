<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%String num=request.getParameter("quantity"); %>
	<table border="1px" align="center">
		<%int n=Integer.parseInt(num); %>
		<%for(int i=1;i<=10;i++) {%>
			<tr>
				<td><%=num %>x<%=i %>=<%=i*n %></td>
			</tr>
		<%} %>
	</table>
</body>
</html>