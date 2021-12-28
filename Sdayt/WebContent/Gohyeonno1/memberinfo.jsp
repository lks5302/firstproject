<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.*" %>
<%@ page import="dao.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
html, body { height: 100%; }
body {
  background:radial-gradient(ellipse at center, rgba(255,254,234,1) 0%, rgba(255,254,234,1) 35%, #f5f6f7 100%);
  overflow: hidden;
}
#content {position: absolute;left: 50%;transform: translate(-50%);width: 460px;}


h3{
		margin-bottom: 300px;
	}
	table {
		text-align: center;
		margin-top: 100px;
		border: 1px solid gray;
		border-collapse: collapse;
	
		width: 500px; height: 250px;
		padding: 0px;
	}
	input{
		border: 0px;
		width: 98%; height: 80px;
		box-shadow: 1px 1px darkgray;
	}
	a{
	
		text-decoration: none;
	}
	a:hover {
		text-decoration: underline;
	}
	div{
		padding: 50px;
		width: 700px; height: 550px;
		background-color: #f5f6f7;
		text-align: center;
		box-shadow: 1px 1px 1px lightgray;
		position: absolute;
		top: 10%; left: 30%;
	}
	h3{
		margin-bottom: 300px;
	}
	table{
		text-align: center;
		margin-top: 50px;
		margin-bottom: 30px;
		border: 1px solid gray;
		border-collapse: collapse;
		background-color: #fff;
		width: 700px; height: 300px;
		padding: 0px;
	}
	input{
		text-align: left;
		border:0px;
		width: 99%; height: 99%;
		margin: 0px;
	}
	#btn{
		text-align: center;
		width: 80px; height: 30px;
		box-shadow: 1px 1px darkgray;
	}
	a{
		font:yellow;
		text-decoration: none;
	}
	a:hover { text-decoration: underline;}
	font{
		font-size: 20px; font-weight: bolder;
	}
</style>
</head>
<body>
<jsp:useBean id="data" class="dao.SdDataManagerDAO" scope="page">
		<div id="content">
			<%
				String id = (String)session.getAttribute("LOGIN");
				if(id != null){
					SdmemberInfo sdmember = data.getSdmember(id);
					
		out.print("<form action='memberupdate.jsp' method='post'");
			out.print("<table border='1'>");
				out.print("<tr><th><font>회원정보</font></th></tr><br>");
						 out.print("<tr><th>아이디	</th><td><input type='text' name='id' value='"+sdmember.getId()+"'>			</td>");
						out.print("<td>비밀번호	</td><td><input type='password' name='pass' value='"+sdmember.getPass()+"'>	</td>");
						out.print("<td>이름		</td><td><input type='text' name='name' value='"+sdmember.getName()+"'>		</td>");
						out.print("<td>생년월일	</td><td><input type='text' name='year' value='"+sdmember.getYear()+"'>		</td>");
						out.print("<td>성별		</td><td><input type='text' name='gender' value='"+sdmember.getGender()+"'>	</td>");
						out.print("<td>이메일		</td><td><input type='text' name='email' value='"+sdmember.getEmail()+"'>		</td>");
						out.print("<td>휴대폰번호	</td><td><input type='text' name='phone' value='"+sdmember.getPhone()+"'>	</td></tr><br><br>");
				out.print("<tr><td><input id='btn' type='submit' value='수정완료'></td></tr>");
			out.print("</table>");
		out.print("</form>");
				}else{
					response.sendRedirect("main.jsp");
				}
			%>
			<a href="main2.jsp">메인페이지가기</a>&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="memberdelete.jsp?id="<%=id %>>회원탈퇴</a>&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
		
	</jsp:useBean>
</body>
</html>