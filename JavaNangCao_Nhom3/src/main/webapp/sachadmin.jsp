<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="sachadminController" enctype= "multipart/form-data">
	  	Ho Ten: <input type="text" name="txthoten" value=""> <br>
	  	Đia chi: <input type="text" name="txtdiachi" value=""> <br>
	  	file: <input type="file" name="txtfile"><br>
  <input type="submit" value="Add"> 
  </form> 
	
</body>
</html>