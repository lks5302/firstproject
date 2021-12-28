<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.ArrayList"%>
    <%@ page import="dto.*" %>
    <%@ page import="dao.*" %>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function check(ab_id) {
   pwd = prompt("수정/삭제하려면 비밀번호를 입력해주세요");
   document.location.href="login.jsp?id="+ab_id+"&pass="+pwd;
}
</script>
<style type="text/css">
html, body { height: 100%; }
body {
  background:radial-gradient(ellipse at center, rgba(255,254,234,1) 0%, rgba(255,254,234,1) 35%, #f5f6f7 100%);
  overflow: hidden;
}


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
<jsp:useBean id="datas" class="dao.SdDataManagerDAO" scope="page"/>
	<%
		ArrayList<SdmemberInfo> dao =(ArrayList<SdmemberInfo>)datas.getDBList();
	%>
	<div align="center">
		<h2>회원목록</h2>
		<br>
		<form>
		[<a href="membership.jsp">회원등록하기</a>]<p>
		
		<table border="1" align="center">
			<tr bgcolor="#8e8e8e">
				<th>아이디</th><th>비밀번호</th><th>이름</th><th>생년월일</th><th>성별</th><th>이메일</th><th>휴대폰번호</tn>
			</tr>
		
		<%
			for(SdmemberInfo ab:(ArrayList<SdmemberInfo>) dao){		
		%>
			<tr>
				<td><a href="javascript:onclick=check('<%=ab.getId() %>')"><%=ab.getId()%></a></td>
				<td><%=ab.getPass() %></td>
				<td><%=ab.getName() %></td>
				<td><%=ab.getYear() %></td>
				<td><%=ab.getGender() %></td>
				<td><%=ab.getEmail() %></td>
				<td><%=ab.getPhone() %></td>
				
			</tr>
			<%
				}
			%>
		</table>
		</form>
	</div>
</body>
</html>