<%@page import="java.math.BigInteger"%>
<%@page import="java.math.BigDecimal"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Máy tính</title>
</head>
<body>
	<div id="wrapper">
		<div id="content">
			<form action="" method="get">
				<input type="text" name="a">
			<select name="operator">
					<option>+</option>
					<option>-</option>
					<option>x</option>
					<option>/</option>
				</select> 
				<input type="text" name="b">
				<input type="submit" value="=">				
			</form>
			<hr>
			<%
				String sa=request.getParameter("a"); 
				String sb=request.getParameter("b");
				String opr=request.getParameter("operator");
					if(sa!=null && sb!=null){
						BigDecimal a=new BigDecimal(sa);
						BigDecimal b=new BigDecimal(sb);
						switch(opr){
						case "+": out.print(a.add(b)); break;
						case "-": out.print(a.subtract(b)); break;
						case "x": out.print(a.multiply(b)); break;
						case "/": out.print(a.divide(b)); break;
						default: break;
						}
					}
					
			%>
		</div>
	</div>
</body>
</html>