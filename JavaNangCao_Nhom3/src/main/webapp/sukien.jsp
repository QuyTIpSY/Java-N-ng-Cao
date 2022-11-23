<%@page import="bo.giohangbo"%>
<%@page import="bean.giohangbean"%>
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
		request.setCharacterEncoding("utf-8");
	 	response.setCharacterEncoding("utf-8");
		String masach=request.getParameter("ms");
		String tmp=request.getParameter("soluong");	
		String capnhat=request.getParameter("cn");
		String tralai=request.getParameter("tl");
		
		giohangbo ghbo=(giohangbo)session.getAttribute("gio");
		try{
			for(giohangbean ds:ghbo.ds){
				long soluong=1;
				long sl=Long.parseLong(tmp);

					if(sl>=0&&sl!=soluong&&ds.getMasach().equals(masach)&&capnhat.equals("Cập nhật")){
						ds.setSoluong(soluong+sl-1);

					}
			}
			response.sendRedirect("htgio.jsp");
		}catch(Exception e){
			e.printStackTrace();
		}
		
		try{
			for(giohangbean list:ghbo.ds){
					out.print(tralai);
					if(list.getMasach().equals(masach)&&tralai.equals("Trả lại")){
						ghbo.ds.remove(list);
						response.sendRedirect("htgio.jsp");	
					}
			}
		
		}catch(Exception e){
			e.printStackTrace();
		}
		
	%>
</body>
</html>