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
<h1>${orderList.size()}개 상품 주문이 완료되었습니다.</h1>

	<h2>상품 및 배송 정보</h2><hr/>
	<table>
	<tr>
	<td><span>받으신 분 : </span><span>${orderInfo.orders_name }</span></td>
	<td><span>배송지 : </span><span>${orderInfo.orders_addr  }</span></td>
	<td><span>받으실 분 전화번호 : </span><span>${orderInfo.orders_tel  }</span></td>
	<td><span>배송시 요청사항 : </span><span>${orderInfo.orders_comment  }</span></td>
	</tr>
	</table>
	
	<div class="boxList">
			<table><tr><th>상품이미지</th><th>상품명</th><th>수량</th><th>합계</th></tr>
			<c:forEach var="og_dto" items="${orderList}">
				<c:forEach var="gdto" items="${ goodslist}">
				<c:choose>
				<c:when test="${og_dto.goods_id == gdto.goods_id}">
				<tr>
					<td><img width="100" width="100" src="resources/images/goods/${gdto.goods_img}"></td> 
					<td><span class="goods_name">${gdto.goods_name}</span></td>
					<td><span class="goods_cont">${og_dto.goods_cont}</span></td>
					<td><span class="goods_price_calc"> ${gdto.goods_price * og_dto.goods_cont * (100 - gdto.goods_discountRate)/100}</span><span>원</span></td>
				</tr>
				</c:when>
				</c:choose>
				</c:forEach>
			</c:forEach>
			</table>
		</div>
	
	<h2>결제 정보</h2><hr>
	
	<table>
	<tr>
	<td><span>상품금액 : </span><span>${orderInfo.goodsPrice}</span></td>
	<td><span>상품할인금액 : </span><span>${orderInfo.discountprice}</span></td>
	<td><span>결제 예정 금액 : </span><span>${orderInfo.orders_price}</span></td>
	</tr>
	</table>
	

</body>
</html>