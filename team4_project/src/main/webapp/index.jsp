<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="goodsList">상품 페이지 테스트</a><br>
<a href="goods?goods_id=2">상품 클릭 테스트</a><br>
<a href="goodsRandom?num=1">상품 임의 1개 테스트</a><br>
<a href="goodsRandom?num=4">상품 임의 4개 테스트1</a><br>
<a href="cartGoods?goods_id=2&user_id=jang">장바구니 페이지 테스트</a><br>
<!--   
	index에서 구현해야할 기본 내용  
	- jquery 이미지 슬라이드   
	- 상품 추천, 이벤트 소식, 알뜰상품(시작할때 무작위 4개 상품 가져오기)
	- 설 얼리버드 특가 레이아웃  
	- (4개 무작위 상품추천과 같음)
	
	추가내용 
	- 설 얼리버드 특가 레이아웃에 시간 줄어드는거 표시 
 -->
 
  <!-- review test -->
 <a href="goodsDetail?goods_id=7">7</a><br>
 <a href="goodsDetail?goods_id=8">8</a><br>
</body>
</html>