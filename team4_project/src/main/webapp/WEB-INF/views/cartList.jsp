<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- aop로 로그인 기능이 구현되어야함. 
로그인이 되어있지 않으면 로그인 페이지로 이동.
--> 
장바구니 목록 : ${cartList}
데이터 타입 : ArrayLis<\GoodsDto>

<!--   
	cartList에서 구현해야할 기본 내용  
	- 장바구니에 담은 객체 보여주기.(db 에서 가져와야함)  
	- 전체체크 및 체크를 할때마다 결제예정금액 보여주기
	- 장바구니에서 객체 뺴기(db delete)   
	
	추가내용 
	- 주소 검색 api연동 
 -->
</body>
</html>