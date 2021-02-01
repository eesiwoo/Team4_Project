<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>

<h1>** 장바구니 **</h1>
	<form action="preOrders" name="myform" method="post">
		<div class="inner_check">
			<label><input type="checkbox" name="goods_checkAll" id="checkAll" ><span>전체선택</span></label>
			<!-- <a href="#none" class="btn_delete">선택삭제</a> -->
		</div>
		<hr />
		<div class="boxList">
			<c:forEach var="c_dto" items="${cartList}">
				<c:set var="goods" value="${c_dto.goods_id}"/>
					<div class="box">
						<input type="checkbox" class="goods_check" id="${goods}" name="goods_check" /> <img
							width="100" width="100" src="resources/images/goods/${c_dto.goods_img}.jpg">
						<input type="hidden" name="goods_id" value="${goods}"/>
						<span class="goods_name">${c_dto.goods_name}</span>
						<span class="count">
							<button type="button" id="${goods}_down" class="btn_down">-</button>
							<input type="number" name="cart_cont"
							 readonly="readonly" onfocus="this.blur()" class="inp"
							value="${c_dto.cart_goods_cont}">
							<button type="button" id="${goods}_up" class="btn_up">+</button>
							
						</span>
						 
						<span class="goods_price_calc">
						${c_dto.goods_price * c_dto.cart_goods_cont * (100 - c_dto.goods_discountRate)/100}</span><span>원</span>
						<input type="hidden" name="goods_price" class="goods_price" value="${c_dto.goods_price}">
						<input type="hidden" name="goods_discountRate" class="goods_discountRate" value="${c_dto.goods_discountRate}">
						<button type="button" id="${goods}_clear" class="btn_clear" value="${c_dto.goods_id}">x</button>
					</div>
			</c:forEach>
		</div>
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
		<input type="submit" id="btn_order" value="구매하기">
		</div>
		
		
	</form>


<script type="text/javascript">

function del(){
	if (confirm("정말 삭제하시겠습니까?") == true){
	let a = $(this).parent()
	let user_id = "<%=session.getAttribute("user_id")%>"
	
		let goods_id = $(this).attr('value');

		$.ajax({
			type : "get",
			url : "deleteCartGoods",
			dataType : "json",
			data : {
				"goods_id" : goods_id,
				"user_id" : user_id
			},
			success : function(item) {
				if (item.isSuccess) {
					a.remove();
				} else {
					alert("해당 상품을 삭제할 수 없습니다")
				}
			}
		})
		} else {
			return false;
		}
	}

	
	function calc() {

		let mychklist = $("input[name=goods_check]:checkbox")
		let countArr = $(".inp")
		let priceArr = $(".goods_price")

		let totalPrice = 0; 
		let discountprice = 0
		let totalDisPrice = 0
		let price = 0;
		//화면에 출력된 전체 상품목록에서 체크된 상품의 가격과 수량을 곱해서 금액 구하고 totalPrice에 누적
		$("input[name=goods_check]:checkbox").each(function(idx, mychklist) {
			let num = $(".inp")[idx].value;
			let rate = $(".goods_discountRate")[idx].value;
			let goods_price = $(".goods_price")[idx].value;

			if (mychklist.checked) {
				discountprice -= goods_price * num * (rate) / 100
				totalPrice += goods_price * num;
				totalDisPrice += goods_price * num * (100 - rate) / 100;
			}
		});

		$(".totalPrice").text(totalPrice);
		$(".discountprice").text(discountprice);
		$(".totalDisPrice").text(totalDisPrice);

	}
	
	$(document).on("click", "#checkAll", function() {
		if ($("input[name=goods_checkAll]:checkbox").prop("checked")) {
			$("input[name=goods_check]:checkbox").prop("checked", true);
		} else {
			$("input[name=goods_check]:checkbox").prop("checked", false);
		}
		calc();
	});

	// 체크시 금액 변동 
	$(document).on("click", ".goods_check", calc);

	$(document).on('click', '.btn_clear', del);

	$(document).on('click', '.btn_down', function() {
		let num = $(this).next().val();
		if (num > 1) {
			$(this).next().val(--num);
			let afterPrice = $(this).parent().next().text();
			afterPrice *= num / (num + 1);
			$(this).parent().next().text(afterPrice);
		}
		calc();
	});
	
	$("form").submit(function(event){

		event.preventDefault();
		
		var param = $(this).serializeArray();
		console.log(param)
	})
	
	
	/* $(document).on('click', '#btn_order', function(){
		if(confirm("정말 주문하시겠습니까?")){
			 myform.submit(); 
			
			
		} else {
			return false;
		}
	}) */

	$(document).on('click', '.btn_up', function() {
		let num = $(this).prev().val();
		/* alert(num) */
		if (num < 1000) {
			$(this).prev().val(++num);
			let afterPrice = $(this).parent().next().text();
			if (num != 1) {
				afterPrice *= num / (num - 1)
			} else {
				afterPrice = $(this).parent().next().attr("value");
			}
			$(this).parent().next().text(afterPrice);
		}
		calc();
	});
</script>
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