<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/my_showOrders.css">
</head>
<body>
<jsp:include page="top.jsp"></jsp:include>
	<div class="main">
		<div class="mypage">
			<h2 class="tit_snb">마이컬리</h2>
			<div class="inner_snb">
				<div class="mypage_list"><a href="showOrders">주문내역</a></div>
				<div class="mypage_list"><a href="updateUser">개인정보 수정</a></div>
			</div>
		</div>
		<div class="box">
			<div class="title">
				<h2 class="tit">
					주문 내역 <span class="tit_sub">지난 3년간의 주문 내역 조회가 가능합니다.</span>
				</h2>
			</div>
			<div class="tab">
				<table>
					<tr class="head">
						<th>주문번호</th>
						<th>상품이미지</th>
						<th>상품이름</th>
						<th>주문수량</th>
					</tr>
					<c:forEach var="og" items="${oglist}">
						<c:forEach var="ogdto" items="${og}">
							<tr>
								<td>${ogdto.orders_id}</td>
								<c:forEach var="gdto" items="${ goodslist}">
									<c:choose>
										<c:when test="${ogdto.goods_id == gdto.goods_id}">
											<td><img src="resources/images/goods/${gdto.goods_img}"
												width="100" height="100"></td>
											<td>${gdto.goods_name}</td>
											<td>${ogdto.goods_cont}</td>
										</c:when>
									</c:choose>
								</c:forEach>
							</tr>
						</c:forEach>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</body>
</html>