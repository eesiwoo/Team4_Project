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
<table>
	<tr><th>주문번호</th><th>주문일시</th><th>상품이미지</th><th>상품이름</th><th>주문수량</th><th>배송상태</th><th>배송지</th></tr>
<c:forEach var="o" items="${olist }">
	<c:forEach var="og" items="${oglist}">
	<c:forEach var="ogdto" items="og">
	<tr>
	<td>${o.orders_id}</td>
	<td>${o.orders_date}</td>
	<c:forEach var="gdto" items="${ goodsDto}">
	<c:choose>
	<c:when test="${ogdto.goods_id == gdto.goods_id}">
	<td><img src="resources/images/goods/${gdto.goods_img}.jpg"></td>
	<td>${gdto.goods_name}</td>
	</c:when>
	</c:choose>
	</c:forEach>
	<td>${ogdto.goods_cont}</td>
	<td>${og.orders_state}</td>
	<td>${og.orders_addr}</td>
	</tr>
	</c:forEach>
	</c:forEach>
	</c:forEach>
</table>
</body>
</html>