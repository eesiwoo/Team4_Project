<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 테스트 -->
<c:forEach var="i" items="${list }">
	${i.goods_id}
	${i.goods_name}
	${i.category_id}
</c:forEach>
	
<!-- 
	productList에서 구현해야할 기본 내용  
	- 이미지는 가로 3줄
	- 정렬기능(신상품순, 높은 가격순, 낮은 가격순)
	- 1~3 페이지기능

	추가내용 
	- 이미지우측 하단의 장바구니 기능 
	- 이미지를 마우스 갖다대면 이미지 바뀌는 기능. 


-->


 
이미지<br>
제품 이름<br>
가격
 
</body>
</html>