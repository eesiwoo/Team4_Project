<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"  />
<script>
jQuery.browser = {};
(function () {
    jQuery.browser.msie = false;
    jQuery.browser.version = 0;
    if (navigator.userAgent.match(/MSIE ([0-9]+)\./)) {
        jQuery.browser.msie = true;
        jQuery.browser.version = RegExp.$1;
    }
})();
</script>
</head>
<body>
<script type="text/javascript">
$(document).ready(function(){
	
	$.datepicker.setDefaults({
		dateFormat: 'yy-mm-dd',
		changeMonth : true, changeYear : true,
		nextText: '다음 달', prevText: '이전 달',
		dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
		dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
		monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		showMonthAfterYear: true,

	})
	
$(function(){
	$("#datepicker").datepicker({}); 
});
	
	$("#submitBtn").click(function(){
		form.submit();
	})
})
</script>
<h2>** 회원가입 페이지 **</h2>

<form action="signup" method="post" name="form">
	회원아이디 : <input type="text" name="user_id" placeholder="아이디를 입력하세요"><br><br>
	비밀번호 : <input type="password" name="user_pwd" maxlength='15' placeholder="비밀번호를 입력하세요(15자리 이)"><br><br>
	이름 : <input type="text" name="user_name" placeholder="이름을 입력하세요"><br><br>
	<input type="radio" name="user_gen" value="1" checked="checked">남자 
	<input type="radio" name="user_gen" value="0">여자<br><br>
	생년월일 : <input type="text" id="datepicker" name="user_bDate"><br><br>
	전화번호 : <input type="tel" name="user_tel" placeholder="000-0000-0000" 
	pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}" maxlength="13"> 
	주소 : <input type="text" name="user_addr" placeholder="주소를 입력하세요"><br><br>
	이메일주소 : <input type="text" name="user_email" placeholder="이메일 주소를 입력하세요"><br><br>
	<input type="button" id="submitBtn" value="등록"><br><br>
</form>
</body>
</html>









