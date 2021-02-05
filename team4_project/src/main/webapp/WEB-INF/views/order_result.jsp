<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/order_result.css">
</head>
<body>
	<jsp:include page="top.jsp"></jsp:include>
	<div class="result_main">
		<div class="result_title">
			<h1 class="result_tit">${orderList.size()}개상품주문이완료되었습니다.</h1>
		</div>

		<h2 class="pay_title">상품 및 배송 정보</h2>

		<%-- <table class="result_tab">
			<tr>
				<th><span>받으신 분</span></th>
				<td><span>${orderInfo.orders_name }</span></td>
			</tr>
			<tr>
				<th><span>배송지</span></th>
				<td><span>${orderInfo.orders_addr  }</span></td>
			</tr>
			<tr>
				<th><span>받으실 분 연락처</span></th>
				<td><span>${orderInfo.orders_tel  }</span></td>
			</tr>
			<tr>
				<th><span>배송시 요청사항</span></th>
				<td><span>${orderInfo.orders_comment  }</span></td>
			</tr>
		</table> --%>

		<div class="boxList">
			<table class="boxList_tab">
				<tr>
					<th>상품이미지</th>
					<th>상품명</th>
					<th>수량</th>
					<th>합계</th>
				</tr>
				<c:forEach var="og_dto" items="${orderList}">
					<c:forEach var="gdto" items="${ goodslist}">
						<c:choose>
							<c:when test="${og_dto.goods_id == gdto.goods_id}">
								<tr>
									<td><img width="100" width="100"
										src="resources/images/goods/${gdto.goods_img}"></td>
									<td><span class="goods_name">${gdto.goods_name}</span></td>
									<td><span class="goods_cont">${og_dto.goods_cont}</span></td>
									<td><span class="goods_price_calc">
											${gdto.goods_price * og_dto.goods_cont * (100 - gdto.goods_discountRate)/100}</span><span>원</span></td>
								</tr>
							</c:when>
						</c:choose>
					</c:forEach>
				</c:forEach>
			</table>
		</div>
		<div class="pay_box">
			<h2 class="pay_title">결제 정보</h2>
			<div class="pay_info">
				<table class="pay_tab">
					<tr>
						<th><span>상품금액</span></th>
						<td><span>${orderInfo.goodsPrice}</span></td>
					</tr>
					<tr>
						<th><span>상품할인금액</span></th>
						<td><span>${orderInfo.discountprice}</span></td>
					</tr>
					<tr>
						<th><span>결제 예정 금액</span></th>
						<td><span>${orderInfo.orders_price}</span></td>
					</tr>

				</table>
			</div>
		</div>
	</div>

	<jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>