<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function join() {
	alert("작성이 완료되었습니다");
}
</script>
<style type="text/css">
	html { height: 100%;}
	body { margin: 0; height: 100%; background: #f5f6f7; font-family: Dotum,'돋움',Helvetica,sans-serif;}
	#logo { width: 240px;height: 44px;cursor: pointer;}
	#header {padding-top: 62px;padding-bottom: 20px;text-align: center;}
	#wrapper { position: relative;height: 100%;}
	#content {position: absolute;left: 50%;transform: translate(-50%);width: 460px;}

	
	h3 { margin: 19px 0 8px;font-size: 14px;font-weight: 700;}
	.box {
	    display: block;
	    width: 100%;
	    height: 51px;
	    border: solid 1px #dadada;
	    padding: 10px 14px 10px 14px;
	    box-sizing: border-box;
	    background: #fff;
	    position: relative;
	}

	.int {
	    display: block;
	    position: relative;
	    width: 100%;
	    height: 29px;
	    border: none;
	    background: #fff;
	    font-size: 15px;
	}
	
	input {font-family: Dotum,'돋움',Helvetica,sans-serif;    }
	.box.int_id {padding-right: 110px;}
	.box.int_pass { padding-right: 40px;}
	.box.int_pass_check {padding-right: 40px;}
	.step_url {

	    position: absolute;
	    top: 16px;
	    right: 13px;
	    font-size: 15px;
	    color: #8e8e8e;
	}
	
	.pswdImg {
	    width: 18px;
	    height: 20px;
	    display: inline-block;
	    position: absolute;
	    top: 50%;
	    right: 16px;
	    margin-top: -10px;
	    cursor: pointer;
	}
	
	#bir_wrap { display: table;width: 100%;}
	#bir_yy {display: table-cell;width: 147px;   }
	
	select {
	    width: 100%;
	    height: 29px;
	    font-size: 15px;
	    background: #fff url(https://static.nid.naver.com/images/join/pc/sel_arr_2x.gif) 100% 50% no-repeat;
	    background-size: 20px 8px;
	    -webkit-appearance: none;
	    display: inline-block;
	    text-align: start;
	    border: none;
	    cursor: default;
	    font-family: Dotum,'돋움',Helvetica,sans-serif;
	}
	

	
	.error_next_box { margin-top: 9px;font-size: 12px; color: red;    display: none;}
	#alertTxt {
	    position: absolute;
	    top: 19px;
	    right: 38px;
	    font-size: 12px;
	    color: red;
	    display: none;
		}
	.btn_area { margin: 30px 0 91px;}
	
	#btnJoin {
	    width: 100%;
	    padding: 21px 0 17px;
	    border: 0;
	    cursor: pointer;
	    color: #fff;
	    background: linear-gradient(to right,  #E57733, white);
	    font-size: 20px;
	    font-weight: 400;
	    font-family: Dotum,'돋움',Helvetica,sans-serif;
	}
</style>
</head>
<body>
	<form action="main.jsp" method="post">
        <div id="header">
            <input type="image" src="../image/logo.png" id="logo">
        </div>
        </form>
        <form action="register.jsp" method="post">
        <div id="wrapper">
         <div id="content">   <div>
                    <h3 class="join_title">
                        <label for="id">아이디</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="id" class="int" maxlength="20" name="id">
                        <span class="step_url">@naver.com</span>
                    </span>
                </div>
                <div>
                    <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="text" id="pswd1" class="int" maxlength="20" name="pass">
                        <span id="alertTxt">사용불가</span>
                        <img src="../image/자물쇠.png" id="pswd1_img1" class="pswdImg">
                    </span>
                </div>
                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" class="int" maxlength="20" name="name">
                    </span>
                </div>
                <div>
                    <h3 class="join_title"><label for="yy">생년월일</label></h3>
                    <div id="bir_wrap">
                        <div id="bir_yy">
                            <span class="box">
                                <input type="text" id="yy" class="int" maxlength="20" placeholder="년(4자)" name="year">
                            </span>
                        </div>
                </div>
                
                <div>
                    <h3 class="join_title"><label for="gender">성별</label></h3>
                    <span class="box gender_code">
                        <select id="gender" class="sel" name="gender">
                            <option value="남자">남자</option>
                            <option value="여자">여자</option> 
                        </select>                            
                    </span>
                </div>
                <div>
                    <h3 class="join_title"><label for="email">본인확인 이메일<span class="optional">(선택)</span></label></h3>
                    <span class="box int_email">
                        <input type="text" id="email" class="int" maxlength="100" placeholder="선택입력" name="email">
                    </span> 
                </div>
                <div>
                    <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile" class="int" maxlength="16" placeholder="전화번호 입력" name="phone">
                    </span>
                    <span class="error_next_box"></span>    
                </div>
                <div class="btn_area">
                   <button type="submit" id="btnJoin" onclick="join()">
                        <span>가입하기</span>
                    </button>
                </div>
            </div> 
        </div> 
       </form>
</body>
</html>