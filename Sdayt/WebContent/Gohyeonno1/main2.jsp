<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-1.8.1.min.js"></script>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
  <script type="text/javascript">
    $(function(){
      $('.slider').bxSlider();
    });
    $(function () {
        $('.bxslider').bxSlider({  
            auto: true, 
            speed: 500, 
            pause: 6000, 
            mode: 'horizontal', 
            autoControls: true, 
            pager: true, 
            captions: true
 
		});
});
  </script>
<style type="text/css">
	*{box-sizing: border-box;}
	#container{margin: 0; padding: 0; width: 1980px;}
	
	#font{font-family: Cursive;}
	
	#menu{background: linear-gradient(to right,  #EF7733, #FFA0FF); height: 65px; width: 90%; margin-left: 70px; margin-top: 150px;}
 	#menu a {color: black; display: inline-block; 
			padding:25px; margin-left: 200px; background: linear-gradient(to right,  #6464CD, white); height: 40px; border-radius: 10px;
			margin-top: 8px; text-decoration: none; text-align: center; line-height:5px; font-family: fantasy; font-weight: bold; -webkit-transition: all 0.1s linear;
          transition: all 0.1s linear;}	 
	#menu a:hover{-webkit-transform: scale(1.05);
     -moz-transform: scale(1.05);
      -ms-transform: scale(1.05);
       -o-transform: scale(1.05);
          transform: scale(1.05);  }
	
	
	#side{float:right; padding: 40px; margin-right: 50px;}
	.footer{height: 10%; clear: both; }
	
	.content{float:left; width: 1300px; height: 650px; margin-left: 130px; }
	.tb{float: right; margin-top: -60px; margin-right: 200px;}
	.btn1{position: relative;
		background-color: #1abc9c;
		border-radius: 4px;
		color: #fff;
		line-height: 15px;
		-webkit-transition: none;
		transition: none;
		box-shadow: 0 3px 0 #0e8c73;
		text-shadow: 0 1px 1px rgba(0, 0, 0, .3);}
	.btn1:hover {
			background-color: #31c8aa;
			box-shadow: 0 3px 0 #23a188;}
	.btn1:active {
		top: 3px;
		box-shadow: none;}
		
	.btn2{position: relative;
		background-color: #1abc9c;
		border-radius: 4px;
		color: #fff;
		line-height: 15px;
		-webkit-transition: none;
		transition: none;
		box-shadow: 0 3px 0 #0e8c73;
		text-shadow: 0 1px 1px rgba(0, 0, 0, .3);}
	.btn2:hover {
			background-color: #31c8aa;
			box-shadow: 0 3px 0 #23a188;}
	.btn2:active {
		top: 3px;
		box-shadow: none;}
	
	@keyframes myanim {
	  0 {left:px; top:0px;}
	  100%{left:150px; top:0px;}
	}

	
	#font {
	  color: #fffbf1;
	  text-shadow: 0 5px 5px #2e2e31, 0 5px 5px #2e2e31;
	  font-size: 80px;
	  font-weight: bold;
	  text-decoration: none;
	  letter-spacing: -3px;
	  margin: 0;
	  position: absolute;
	  top: 5%;
	  left: 50%;
	  transform: translateX(-50%) translateY(-50%);
	}
	
 	#font:before,
	#font:after {
	  content: '';
	  padding: 10px; 10px;
	  position: absolute;
	  left: 50%;
	  width: 100%;
	  top: 50%;
	  display: block;
	  border: 2px solid red;
	  transform: translateX(-50%) translateY(-50%) rotate(0deg);
	   animation-name: myanim;
	   animation-duration:10s;
	}
	
	#font:before {
	  border-color: #d9524a #d9524a rgba(0, 0, 0, 0) rgba(0, 0, 0, 0);
	  z-index: -1;
	}
	
	#font:after {
	  border-color: rgba(0, 0, 0, 0) rgba(0, 0, 0, 0) #d9524a #d9524a;
	  box-shadow: 5px 5px 5px rgba(46, 46, 49, .8);
	} 
	
	
	

</style>
</head>
<body>
<div id="container">
		<header id="header" align="center" >		
			 <form action="#" method="#" name="f1" >
				<table class="tb">
					<h1 id="font">Special Day</h1>
					<tr><th><label for="inputtext">ID</label></th><td>
				
				<% 
					if(session.getAttribute("LOGIN") == null) {
						response.sendRedirect("main.jsp");
					}
					%>
					<%= session.getAttribute("LOGIN") %>
				</form>
				
					<form action="logout.jsp" method="post">
						</td><td align="center"><input type="submit" value="????????????"  class="btn1"></td></tr>
					</form>
					
			<form>
				<tr><th><label for="member">????????????</label></th><td> 
					<a href="memberinfo.jsp"><input type="button" value="???????????????" class="btn2"/><a href="memberlist.jsp"><input type="button" value="????????????" class="btn2"/></a></a></td>
				</table>
			</form> 
		</header>
		  <nav id="menu">
				<a href="photo5.html">????????????</a>
				<a href="look1.html">????????????</a>
				<a href="review3.html">??????</a>
				<a href="Customer2.html">????????????</a>
				<a href="Map2.jsp">???????????????</a>		
			</nav>   
		<br><br>
	<section>
		<div class="content">
	    <ul class="bxslider">
	        <li><a href="https://www.naver.com/" target='_blank'"><img src="../image/??????1.png" alt="" title="?????? ????????????" ></a></li>
	        <li><a href="https://www.musinsa.com/" target='_blank' ><img src="../image/?????????2.png" alt="" title="?????????"></a></li>
	        <li><a href="https://chefmuseum.com/" target='_blank' ><img src="../image/??????.png" alt="" title="?????????"></a></li>
	    </ul>
	    </div>
	 </section>
	 <br><br><br><br><br><br>
	<aside id="side"><a href="https://m.shopping.nate.com/#!/category/14"><img src="../image/??????1.png" width="400" height="500"></a></aside>
	<br><br><br><br><br><br><br><br><br><br><br><br>
	</div>
		<footer class=footer><hr>
		
					<p><strong>(???)Special Day</strong> 123-456 ????????? ????????? ????????? 104-1 Special Day ????????????: <sup><strong>?????????</strong></sup> ?????????????????????: 1482-6786 <strong>Copyright &copy: 2021 pjs lecturer</strong></p>
					
		
		</footer>
	
</body>
</html>