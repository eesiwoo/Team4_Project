<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css"> -->
<link rel="stylesheet" href="resources/css/orders.css">

</head>
<body>
<jsp:include page="top.jsp"></jsp:include>
	<div class="main">
		<!-- 주문서 -->
		<div class="title">
			<h2 class="tit">주문서</h2>
		</div>


		<!-- 주문 상품  -->
		<h2 class="tit_section">주문상품</h2>

		<form action="orders" method="post" name="myform">
			<div class="boxList">
				<c:forEach var="c_dto" items="${cartList}">
					<table>
						<tr>
							<td class="img"><img width="100" width="100"
								src="resources/images/goods/${c_dto.goods_img}"></td>
							<td class="name"><span class="goods_name">${c_dto.goods_name}</span>
								<input type="hidden" name="goods_id" value="${c_dto.goods_id}" /></td>
							<td class="count"><span class="goods_cont">${c_dto.cart_goods_cont}</span><input
								type="hidden" name="goods_cont" value="${c_dto.cart_goods_cont}" /></td>
							<td class="price"><span class="goods_price_calc">
									${c_dto.goods_price * c_dto.cart_goods_cont * (100 - c_dto.goods_discountRate)/100}</span><span>원</span></td>
						</tr>
					</table>
				</c:forEach>
			</div>


			<!-- 주문자 정보 -->
			<h2 class="tit_section">주문자 정보</h2>

			<table class="user_info">
				<tr>
					<th><span>보내는 분</span></th>
					<td><span>${userInfo.user_name }</span></td>
				</tr>
				<tr>
					<th><span>휴대폰</span></th>
					<td><span>${userInfo.user_tel  }</span></td>
				</tr>
				<tr>
					<th><span>이메일</span></th>
					<td><span>${userInfo.user_email  }</span></td>
				</tr>
			</table>


			<!-- 배송 정보 -->
			<h2 class="tit_section">
				배송 정보 <span class="desc">배송 휴무일: 샛별배송(휴무없음), 택배배송(일요일)</span>
			</h2>

			<table class="delivery">
				<tr>
					<th><span>배송지</span></th>
					<td><input type="text" name="orders_addr"
						placeholder="${userInfo.user_addr}"></td>
				</tr>
				<tr>
					<th><span>받으실 분 연락처</span></th>
					<td><input type="text" name="orders_tel"
						placeholder="${userInfo.user_tel}"></td>
				</tr>
				<tr>
					<th><span>배송시 요청사항</span></th>
					<td><input type="text" name="orders_name"
						placeholder="${userInfo.user_name}"></td>
				</tr>
				<tr>
					<th><span>받으실 분</span></th>
					<td><input type="text" name="orders_comment"
						placeholder="ex)경비실에 놔주세요!"></td>
				</tr>
			</table>


			<!-- 결제 -->
			<!-- <h2 class="tit_section">결제 수단</h2> -->
			<div class="fixed_box">
				<h2 class="tit_section">결제 금액</h2>

				<div class="bill">
					<table class="pay">
						<tr>
							<th><span>상품금액</span></th>
							<td><span class="goodsPrice">${goodsPrice}</span><span>원</span>
								<input type="hidden" name="goodsPrice" id="goodsPrice"
								value="${goodsPrice}"></td>
						</tr>
						<tr>
							<th><span>할인금액</span></th>
							<td><span class="discountprice">${discountprice}</span><span>원</span>
								<input type="hidden" name="discountprice" id="discountprice"
								value="${discountprice}"></td>
						</tr>
						<tr>
							<th><span>최종결제금액</span></th>
							<td><span class="orders_price">${orders_price}</span><span>원</span>
								<input type="hidden" name="orders_price" id="orders_price"
								value="${orders_price}"></td>
						</tr>
					</table>
				</div>
			</div>
			<input type="button" id="btn_order" value="구매하기">
		</form>
	</div>
<jsp:include page="bottom.jsp"></jsp:include>
	<script type="text/javascript">
		$(document).on("click", "#btn_order", function() {
			if (confirm("정말 주문하시겠습니까?")) {
				myform.submit();
			} else {
				return false;
			}
		})
	</script>
</body>
</html>