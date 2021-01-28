<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"  />
<script>
jQuery.browser = {};
(function () {
    jQuery.browser.msie = false;
    jQuery.browser.version = 0;
    if (navigator.userAgent.match(/MSIE ([0-9]+)\./)) {
        jQuery.browser.msie = true;
        jQuery.browser.version = RegExp.$1;
    }
})();
</script>

</head>
<body>
<!--    
	admin에서 구현해야 할 기본내용 
	1. 상품 추가(insert) 하기   
	2. 관리자로 로그인했을 때만 보이기  
	
	추가내용 
	- 회원관리 항목
	  
-->
<script type="text/javascript">
	$(document).ready(function(){
		
		$.datepicker.setDefaults({
			dateFormat: 'yy-mm-dd',
			changeMonth : true, changeYear : true,
			nextText: '다음 달', prevText: '이전 달',
			dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
			dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
			monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			showButtonPanel: true,
			showMonthAfterYear: true,
			currentText: '오늘 날짜',
			closeText: '닫기',
		})
		
	$(function(){
		$("#goods_saleBegin").datepicker({});
		$("#goods_saleEnd").datepicker({}); 
	});
		
		$("#submitBtn").click(function(){
			form.submit();
		})
	})
	
</script>



<h1> ** admin 페이지 **</h1> <br>
<form action="insertGoods" method="post" name="form" enctype="multipart/form-data">
	상품명 : <input type="text" name="goods_name"/><br><br>
	카테고리 : <select id="category_id" name="category_id">
				<c:forEach var="i" items="${categoryList}">
					<option value="${i.category_id}">${i.category_name}</option>
				</c:forEach>
			  </select>
	짧은설명 : <input type="text" name="goods_shortDesc"/><br><br>
	상세정보 : <textarea rows="10" cols="200" name="goods_detail"></textarea><br><br> 
	원가 : <input type="number" name="goods_price"/><br><br>
	판매시작일 : <input type="text" id="goods_saleBegin" name="goods_saleBegin"/><br><br>
	판매종료일 : <input type="text" id="goods_saleEnd" name="goods_saleEnd"/><br><br>
	배송방법 : <input type="text" name="goods_delivery"/><br><br> 
	업로드할 이미지 선택 : <input type="file" id="fileImg" name="fileImg" size="200"><br><br>
					  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
					  <form:errors path="file" cssStyle="color:red"/><p/>
					  <input type="hidden" id="goods_img" name="goods_img">
					  
	등록자 : <input type="text" name="goods_reg"/><br><br>
	포장타입 : <select name="goods_state">
				<option>냉장</option>
				<option>냉동</option>
				<option>상온</option>
			</select><br><br>
	할인률 : <input type="number" name="goods_discountRate"/><br><br>
	판매단위 : <input type="number" name="goods_saleUnit"/><br><br>
	중량 : <input type="number" name="goods_weight"/><br><br>
	유통기한 : <input type="text" name="goods_shelfLife"/><br><br>
	알레르기 정보 : <input type="text" name="goods_allergy"/><br><br>
	안내사항 : <input type="text" name="goods_info"/><br><br> 
	<input type="button" value="등록" id="submitBtn">
	<c:if test="${Msg != null }">
		<b style="color:blue;">${Msg}</b>	
	</c:if>
</form>

</body>
</html>