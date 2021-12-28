<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dto.*" %>
<%@page import="dao.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="data" class="dao.SdDataManagerDAO" scope="page"/>
	
	<%
		String id = (String)session.getAttribute("LOGIN");
		if(id != null){
			if(data.removeSdmember(id) != 0){
				out.print("<h3>회원정보를 삭제하였습니다</h3>");
				session.invalidate();
				
				out.print("<h3><a href='main.jsp'>로그인화면으로 돌아가기</a></h3>");
			}else{
				out.print("<h3>회원정보를 삭제하지 못함, 잠시후 다시 시도해주세요</h3>");
				out.print("<h3><a href='memberinfo.jsp'>학생정보 보기화면으로 돌아가기</a></h3>");
			}
		}else{
			out.print("<h3>로그인이 필요합니다</h3>");
			response.sendRedirect("mian.jsp");		
		}
	%>
</body>
</html>