<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>     
     <table border ="1" width="1000" align="center" cellpadding="0" cellspacing="0">
       <tr>
            <td colspan="3" bgcolor="blue"> Lo go Menu ngang </td>
       </tr>
       <tr>
           <td width="200" valign="top">
          	 <a href="NewFile.jsp"> Trang chu</a> <hr>
           	 <a href="http://docbao.vn"> Đọc báo</a> <hr>
             <a href="tam.docx"> Tải file</a>
            </td>
<td width="600" valign="top">
           
            Noi dung 1 <br> 
            
            </td>
           <td width="200" valign="top"> <form method="post" action="NewFile.jsp">
               User Name: <input name="txtun" type="text"><br>
           	   Password: <input name="txtpass" type="password"><br>
           	   Anh dai dien: <input name="a1" type="file">
           	   Chon quoc gia: 
           	   <select name="s1">
           	       <option> Viet nam </option>
           	        <option selected="selected"> lao </option>
           	         <option> My </option>
           	   </select> <br>
           	   Mô tả </td>
           
       </tr>
       <tr>
           <td colspan="3">Bản quyền ....</td>
       </tr>
   </table>
</body>
</html>