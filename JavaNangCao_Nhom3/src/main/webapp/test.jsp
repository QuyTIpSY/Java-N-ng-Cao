<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="test.jsp" method="post">
  <input  name="txtn" type="number" value="0" placeholder="Nhap tt"> <br>
   <input name="butt" type="submit" value="Tong">
</form>
<%
//Kiem tra xem bien session da tao ra hay chua
if(session.getAttribute("ss")==null) //chua tao bien bien session
   session.setAttribute("ss",(int) 0);//tao bien session
   String nn=request.getParameter("txtn");
   if(nn!=null){
	   //b1: Lay gia tri cua session gan vao bien
	   int s=(int)session.getAttribute("ss");
	   //b2: tham tac tren bien
	   s=s+Integer.parseInt(nn);
	   //b3: Gan bien vao lai session
	   session.setAttribute("ss", s);
	   out.print("tong:"+s);
   }
%>
<a href="htsach.jsp"> Hien thi trang chu </a>
</body>
</html>
