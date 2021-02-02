<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/cartList.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).on('click', '.btn_clear', function() {
		// db에 다녀오는거 구현
		$(this).parent().remove();
	});

	$(document).on('click', '.btn_down', function() {
		let num = $(this).next().val();
		if (num > 0) {
			$(this).next().val(--num);
			let totalPrice = $(this).parent().next().text();
			totalPrice *= num / (num + 1);
			$(this).parent().next().text(totalPrice);
		}

	});

	$(document).on('click', '.btn_up', function() {
		let num = $(this).prev().val();
		/* alert(num) */
		if (num < 1000) {
			$(this).prev().val(++num);
			let totalPrice = $(this).parent().next().text();
			if (num != 1) {
				totalPrice *= num / (num - 1)
			} else {
				totalPrice = $(this).parent().next().attr("value");
			}
			$(this).parent().next().text(totalPrice);
		}

	});
</script>
</head>
<body>
	<div class="title">
		<h1>장바구니</h1>
	</div>


	<form action="cartList" method="post">
		<div class="inner_check">
			<label><input type="checkbox" name="checkAll"><span>전체선택</span></label>
			<a href="#none" class="btn_delete">선택삭제</a>
		</div>
		<hr />
		<div class="boxList">
			<c:forEach var="c_dto" items="${cartList}">
				<c:set var="goods" value="${c_dto.goods_id}" />
				<div class="box">
					<input type="checkbox" class="check" id="${goods}" name="${goods}" />
					<img src="resources/images/goods/${c_dto.goods_img}.jpg"> <span
						class="goods_name">${c_dto.goods_name}</span> <span class="count">
						<button type="button" id="${goods}_down" class="btn_down">-</button>
						<input type="number" name="cart_${goods}_cont" readonly="readonly"
						onfocus="this.blur()" class="inp" value="${c_dto.cart_goods_cont}">
						<button type="button" id="${goods}_up" class="btn_up">+</button>
					</span> 
					<span>
					<span class="goods_price" value="${c_dto.goods_price}">
						${c_dto.goods_price * c_dto.cart_goods_cont * (100 - c_dto.goods_discountRate)/100}
					</span>
					<span>원</span>
					</span>
					<button type="button" id="${goods}_clear" class="btn_clear">x</button>
				</div>
			</c:forEach>
		</div>
	</form>

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