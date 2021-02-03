<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	** 주문 페이지 **
	
	주문상품<hr/>
	<form action="orders" method="post" name="myform">
	<div class="boxList">
			<c:forEach var="c_dto" items="${cartList}">
				<table><tr>
					<td><img width="100" width="100" src="resources/images/goods/${c_dto.goods_img}"></td> 
					<td><span class="goods_name">${c_dto.goods_name}</span><input type="hidden" name="goods_id" value="${c_dto.goods_id}"/></td>
					<td><span class="goods_cont">${c_dto.cart_goods_cont}</span><input type="hidden" name="goods_cont" value="${c_dto.cart_goods_cont}"/></td>
					<td><span class="goods_price_calc"> ${c_dto.goods_price * c_dto.cart_goods_cont * (100 - c_dto.goods_discountRate)/100}</span><span>원</span></td>
				</tr></table>
			</c:forEach>
		</div>
	주문자 정보<hr/>
	<table>
	<tr>
	<td><span>보내는 분 : </span><span>${userInfo.user_name }</span></td>
	<td><span>휴대폰 : </span><span>${userInfo.user_tel  }</span></td>
	<td><span>이메일 : </span><span>${userInfo.user_email  }</span></td>
	</tr>
	</table>
	배송 정보<hr/>
	<table>
	<tr>
	<td><span>배송지 : </span><input type="text" name="orders_addr" placeholder="${userInfo.user_addr}"></td>
	<td><span>받으실 분 전화번호 : </span><input type="text" name="orders_tel" placeholder="${userInfo.user_tel}"></td>
	<td><span>받으실 분 : </span><input type="text" name="orders_name" placeholder="${userInfo.user_name}"></td>
	<td><span>배송시 요청사항 : </span><input type="text" name="orders_comment" placeholder="ex)경비실에 놔주세요!"></td>
	</tr>
	</table>
	결제 수단<hr>
	결제 금액<hr>
	
	<h2>** 결제 하기 ** </h2>
	
	<div class="bill">
		<div>
		<span>상품금액 : </span>
		<span class="goodsPrice">${goodsPrice}</span><span>원</span>
		</div>
		<div>
		<span>상품할인금액 : </span>
		<span class="discountprice">${discountprice}</span><span>원</span>
		</div>
		<div>
		<span>결제 예정 금액 : </span>
		<span class="orders_price">${orders_price}</span><span>원</span>
		<input type="hidden" name="orders_price" id="orders_price" value="${orders_price}">
		</div>
		<input type="button" id="btn_order" value="구매하기">
		</div>
	</form>
	
	<script type="text/javascript">
	$(document).on("click", "#btn_order", function(){
		if(confirm("정말 주문하시겠습니까?")){
			myform.submit(); 
		} else{
			return false;
		}
	})
	</script>
</body>
</html>