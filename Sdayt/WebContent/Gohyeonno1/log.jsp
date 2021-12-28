<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id=  request.getParameter("id");
		String pw=	request.getParameter("pass");
	
		if(id.equals("admin") && pw.equals("1234")){
			
			session.setAttribute("LOGIN", "ADMIN");
			out.print("<h3>로그인 성공</h3>");
			out.print("<h3><a href='main2.jsp'>메인창으로 이동합니다.</a></h3>");
		}else{
			out.print("<h3>로그인 실패</h3>");
			out.print("<h3><a href='main.jsp'>메인창으로 이동합니다.</a></h3>");
		}
	%>
	
</body>
</html>