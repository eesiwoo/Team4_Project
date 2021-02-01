<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		var msg = "<%= request.getAttribute("msg") %>"
		if(msg != "null"){
			alert(msg);
		}
		
		$("#btn").click(function(){
			form.submit();
		})
		
	});
</script>
<link href="resources/css/login.css" rel="stylesheet" />

</head>
<body>
<!--   
	login에서 구현해야할 기본 내용  
	- id, pass 입력, db와 비교    
	
	
	추가내용 
	- naver, kakao 등 계정 연동 api 활용
	 
 -->
 
 <jsp:include page="top.jsp"></jsp:include>
 
 
 <div class="loginContainer">
		<div class="loginH2">
			<h2>로그인</h2>
		</div>

		<form action="login" name="form" method="post">

			<div class="id">
				<input type="text" name="user_id" id="id" placeholder="아이디를 입력해주세요">
			</div>
			<div class="pass">
				<input type="password" name="user_pwd" id="password" placeholder="비밀번호를 입력해주세요">
			</div>

			<div class="line">
				<div class="security">
					<input type="checkbox" id="checkBox" class="checkBox" checked="checked">보안접속
					<label for="checkBox"><span></span></label>
				</div>
				<div class="findYourAcc">
					<a href="#" aria-label="Find your ID">아이디 찾기</a> <span> I </span> <a
						href="#" aria-label="Find your Pass Word">비밀번호 찾기</a>
				</div>
			</div>

			<div class="login">
				<button id="btn">로그인</button>
			</div>
			<div class="register">
				<button>회원가입</button>
			</div>
		</form>

	</div>
 
 
 <jsp:include page="bottom.jsp"></jsp:include>
 
 
 

<!-- <form action="login" name="form" method="post" >
아이디 : <input type="text" name="user_id" placeholder="아이디를 입력하세요"><br><br> 
패스워드 : <input type="password" name="user_pwd" placeholder="비밀번호를 입력하세요"><br><br>
<input type="button" id="btn" value="로그인하기"> 
</form> --> 
 
 
</body>
</html>