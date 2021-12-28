<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dto.*" %>
    <%@ page import="dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="sdmember" class="dto.SdmemberInfo" scope="request" />
   <jsp:setProperty property="*" name="sdmember"/>
   <jsp:useBean id="data" class="dao.SdDataManagerDAO" scope="request"/>
		<%
      request.setCharacterEncoding("utf-8");
   %>
   <%		
      String id = sdmember.getId();
      String pass = sdmember.getPass();
      
      if(!data.isSdmember(id, pass)){
         if(data.insertSdmember(sdmember) !=0){
            out.print("<h3>회원가입에 성공하셨습니다.</h3>");
            out.print("<h3><a href='main.jsp'>로그인화면으로 돌아가기</a></h3>");
         }
         else{
        	 out.print("<h3>회원가입에 실패하셨습니다.</h3>");
            out.print("<h3><a href='main.jsp'>로그인화면으로 돌아가기</a></h3>");
         }
      }else{
         out.print("<h3>이미 회원 입니다. 다시 작성해 주세요.</h3>");
         out.print("<h3><a href='membership.jsp'>회원가입으로 돌아가기</a></h3>");
      }
   %> 
</body>
</html>