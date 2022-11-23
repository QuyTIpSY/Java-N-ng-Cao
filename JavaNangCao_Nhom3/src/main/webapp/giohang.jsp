<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	 String masach=request.getParameter("ms");
	 String tensach=request.getParameter("ts");
	 long gia=Long.parseLong(request.getParameter("gia"));
	 long soluong=1;
	 giohangbo gh=null;
	 if(session.getAttribute("gio")==null){//Mua lan dau
		 gh= new giohangbo();
	 	session.setAttribute("gio", gh);
	 }
	 
	 //b1: Lay session luu vao bien
	 gh=(giohangbo)session.getAttribute("gio");
	 //b2: Thao tac tren bien
	 gh.Them(masach, tensach, soluong, gia);
	 //b3: luu bien vao session
	 session.setAttribute("gio",gh);
	 //Hien thi thi gio hang
	 response.sendRedirect("htgio.jsp"); 	
	 
%>
</body>
</html>
