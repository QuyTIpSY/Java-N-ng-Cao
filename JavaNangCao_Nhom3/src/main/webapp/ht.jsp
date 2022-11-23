<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- 	<%String ngay=request.getParameter("sngay");
		out.print(ngay + " / ");
	%>
	<%String thang=request.getParameter("sthang"); 
		out.print(thang + " / ");
	%>
	<%String nam=request.getParameter("snam"); 
		out.print(nam);
	%> --%>
	<%String ngay=request.getParameter("sngay");
	String thang=request.getParameter("sthang");
	String nam=request.getParameter("snam");
	%>
	Ket qua: Ngay <%=ngay %> / <%=thang %> / <%=nam %>
	<hr>
	<%Random r=new Random();
		out.print(r.nextInt(100));
	%>
</body>
</html>