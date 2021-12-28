<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ page import="dto.*" %>
<%@ page import="dao.*" %>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="sdmember" class="dto.SdmemberInfo" scope="page"/>
	<jsp:setProperty property="*" name="sdmember"/>
	<jsp:useBean id="data" class="dao.SdDataManagerDAO" scope="page"/>
	
	<%
		String id = (String)session.getAttribute("LOGIN");
		if(id != null){
			
			if(data.updateSdmember(sdmember) != 0){
				out.print("<h3>회원정보 수정에 성공하셨습니다</h3>");
				out.print("<h3><a href='memberinfo.jsp'>회원정보 보기로 돌아가기</a></h3>");
				out.print("<h3><a href='main2.jsp'>메인페이지로 돌아가기</a></h3>");
			}else{
				out.print("<h3>학생정보 수정에 실패하였습니다.</h3>");
				out.print("<h3><a href='main.jsp'>로그인화면으로 돌아가기</a></h3>");
			}
		}
	%>
</body>
</html>