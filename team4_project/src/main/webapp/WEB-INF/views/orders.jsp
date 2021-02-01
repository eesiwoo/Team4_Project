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
	** 주문 페이지 **
	
	<form action="orders" method="post">
		
	</form>
	주문상품<hr/>
	<c:forEach var="i" items="${cartList}">
	
	</c:forEach>
	주문자 정보<hr/>
	배송 정보<hr/>
	결제 수단<hr>
	결제 금액<hr>
	
	<h2>** 결제 하기 ** </h2>
	<div class="bill">
		<div>
		<span>상품금액 : </span>
		<span class="totalPrice"></span><span>원</span>
		</div>
		<div>
		<span>상품할인금액 : </span>
		<span class="discountprice"></span><span>원</span>
		</div>
		<div>
		<span>결제 예정 금액 : </span>
		<span class="totalDisPrice"></span><span>원</span>
		</div>
		<input type="button" id="btn_order" value="구매하기">
		</div>
</body>
</html>