<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"></script>
</head>
<body>
** 마이페이지 ** 
<!--   
	mypage에서 구현해야할 기본 내용  
	- 구매한 상품 보여주기(상품 이미지, 가격, 구매한 날짜)
	- 회원정보 표시    
	
	
	추가내용 
	- 회원 정보 수정 
	 
 -->
 
 <div id="btn_user"><a href="updateUser"> 개인정보 수정 </a></div>
 <div id="btn_orders"> 구매내역 </div><br>
 
 
 <div id="userInfo"></div>
 
 <script type="text/javascript">
 	
 	$(document).on("click", "#btn_user", function(){
 		let user_id = ${session.getAttribute("user_id")};		
 		$.ajax({
 			type:"get",
 			url:"getUserInfo",
 			dataType:"json",
 			data:{"user_id":user_id},
 			success:function(a){
 				let str = "<table><tr><th>회원명<th></tr>" 
 			}
 				
 		})
 	});
 	
	$(document).on("click", "#btn_orders", function(){
		alert(1)
 	});
 </script>
 
 
</body>
</html>