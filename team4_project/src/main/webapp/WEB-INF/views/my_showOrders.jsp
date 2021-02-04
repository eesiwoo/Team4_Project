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
<jsp:include page="top.jsp"></jsp:include>
<table>
	<tr><th>주문번호</th><th>주문일시</th><th>상품이미지</th><th>상품이름</th><th>주문수량</th><th>배송지</th></tr>
	<c:forEach var="og" items="${oglist}">
	<c:forEach var="ogdto" items="${og}">
	<tr>
	<td>${ogdto.orders_id}</td>
	<c:forEach var="gdto" items="${ goodslist}">
	<c:choose>
	<c:when test="${ogdto.goods_id == gdto.goods_id}">
	<td><img src="resources/images/goods/${gdto.goods_img}" width="100" height="100"></td>
	<td>${gdto.goods_name}</td>
	<td>${ogdto.goods_cont}</td>
	</c:when>
	</c:choose>
	</c:forEach>
	</tr>
	</c:forEach>
	</c:forEach>
</table>

</body>
</html>