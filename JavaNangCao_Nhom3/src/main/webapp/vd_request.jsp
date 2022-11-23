<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table width="1000" align="center">
		<tr>
			<td valign="top" width="200">
				<a href="vd_request.jsp?mm=jnc">Java nâng cao </a> <br>
				<a href="vd_request.jsp?mm=csdl">Cơ sỏ dữ liệu </a> <br>
				<a href="vd_request.jsp?mm=nntv">Ngôn ngữ truy vấn </a> <br>
			</td>
			<td width="800">
				<%String mamon=request.getParameter("mm"); 
					if(mamon != null){
				%>
				Danh sách sv học môn có mã: <%=mamon %>
				<%}else
					out.print("Chay lan dau...");
					%>
			</td>
		</tr>
	</table>
</body>
</html>