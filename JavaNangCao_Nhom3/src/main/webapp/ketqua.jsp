<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Hôm nay, 
<%Calendar n= Calendar.getInstance();
	int ngay=n.get(Calendar.DATE);
	int thang=n.get(Calendar.MONTH) + 1;
	int nam=n.get(Calendar.YEAR);
	out.print(ngay + " / ");
	out.print(thang + " / ");
	out.print(nam);
%>
	<hr>
	<form method="post" action="ht.jsp">
		Chọn ngày:
		<select name="sngay">
			<%for(int i=1; i<=31; i++) {%>
				<option value='<%=i%>' <%=((i==ngay)?"selected":"") %>> <%=i %></option>
			<%} %>
		</select>
		Chọn tháng:
		<select name="sthang">
			<%for(int i=1; i<=12; i++) {%>
				<option value='<%=i %>' <%=((i==thang)?"selected":"") %>><%=i %></option>
			<%} %>
		</select>
		Chọn năm:
		<select name="snam">
			<%for(int i=2012; i<=2022; i++) {%>
				<option value='<%=i %>' <%=((i==nam)?"selected":"") %>><%=i %></option>
			<%} %>
		</select>
		<br>
		<input name="but1" type="submit" value="Xem kq">
	</form>
</body>
</html>