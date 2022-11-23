<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Giải PT bậc 2</title>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h3>Công thức tổng quát của phương trình bậc 2:</h3>
			<p>ax2 + bx + c = 0</p>
		</div>
		<div id="content">
		<form action="" method="post">
			<div>
				<label>Nhập a:</label>
				<input type="number" name="a">
			</div>
			<div>
				<label>Nhập b:</label>
				<input type="number" name="b">
			</div>
			<div>
				<label>Nhập c:</label>
				<input type="number" name="c">
			</div>
			<div>
				<input type="submit" value="Kết quả">
			</div>
			<hr>
			<%
				String sa=request.getParameter("a");
				String sb=request.getParameter("b");
				String sc=request.getParameter("c");
			%> 
			<%if(sa!=null && sb!=null && sc!=null) {%>
				<%
					double a=Double.parseDouble(sa);
					double b=Double.parseDouble(sb);
					double c=Double.parseDouble(sc);
					
					if(a==0){
						if(b==0){
							out.print("PT có nghiệm là: " + -c);
						}
						else{
							out.print("PT có nghiệm là: " + (-c/b));
						}
					}
					else{
						double delta=(b*b) - (4*a*c);
						if(delta<0){
							out.print("PT vô nghiệm");
						}
						else{
							if(delta==0){
								out.print("PT có nghiệm kép: " + (-b/(2*a)));
							}
							else{
								out.print("PT có 2 nghiệm phân biệt: ");
								out.print("<br>");
								out.print("x1 = " + ((-b-Math.sqrt(delta))/(2*a)));
								out.print("<br>");
								out.print("x2 = " + ((-b+Math.sqrt(delta))/(2*a)));
							}
						}
					}
				%>
			<%} %>
			</form>
		</div>
	</div>
</body>
</html>