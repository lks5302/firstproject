<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	html { height: 100%;}
	body { margin: 0; height: 100%; background: #f5f6f7; font-family: Dotum,'돋움',Helvetica,sans-serif;}
	#logo { width: 240px;height: 44px;cursor: pointer;}
	#header {padding-top: 62px;padding-bottom: 20px;text-align: center;}
	#wrapper { position: relative;height: 100%;}
	#content {position: absolute;left: 50%;transform: translate(-50%);width: 460px;}
	
	
	
	
	
	
	.btn_area { margin: 30px 0 91px;}
	
	#btnJoin {
	    width: 100%;
	    padding: 21px 0 17px;
	    border: 0;
	    cursor: pointer;
	    color: #fff;
	    background: gray;
	    font-size: 20px;
	    font-weight: 400;
	    font-family: Dotum,'돋움',Helvetica,sans-serif;
	}
	
	.int{width: 400px; height: 300px; background: white;}
	
	.input-file-button{
	  padding: 6px 25px;
	  background-color:#FF6600;
	  border-radius: 4px;
	  color: white;
	  cursor: pointer;
	}
	
	.input-file{display: none;}
</style>
</head>
<body>
	<form action="main2.jsp" method="post">
        <div id="header">
            <input type="image" src="../image/logo.png" id="logo">
        </div>
   </form>
     <div id="wrapper">
            <div id="content">
                <div>
                    <h3><label>카테고리</label></h3>
                <%= request.getParameter("sel") %><br>                   
                </div>
					<br><br>
                <div>
						<%=request.getParameter("input-file") %>
                	    <h3><label>내가 쓴글</label></h3>
                    	
                    	<div class="int"><%= request.getParameter("text")%></div>
                </div>
			<form action="ca.html" method="post">
                <div class="btn_area">
                    <button type="submit" id="btnJoin" onclick="join()">
                        <span>수정하기</span>
                    </button>
                </div>
           	 </form>  
            </div> 
		   
        </div> 
	
</body>
</html>