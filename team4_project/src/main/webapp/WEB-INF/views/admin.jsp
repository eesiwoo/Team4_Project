<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
			
		$("#insertBtn").click(function(){
			var fileValue = $("#fileImg").val().split("\\");
			var fileName = fileValue[fileValue.length-1];
			$("#goods_img").val(fileName);
			form.submit();
		})
	})
	
	
	

// 버튼을 누르면 

/* var imgFile = $('#goods_img').val();
var fileForm = /(.*?)\.(jpg|jpeg|png|gif|bmp|pdf)$/;
var maxSize = 10 * 1024 * 1024;
var fileSize;

if($('#goods_img').val() == "") {
	alert("첨부파일은 필수!");
    $("#goods_img").focus();
    return;
}

if(imgFile != "" && imageFile != null) {
	fileSize = document.getElementById("goods_img").files[0].size;
    
    if(!imgFile.match(fileForm)) {
    	alert("이미지 파일만 업로드 가능");
        return;
    } else if(fileSize = maxSize) {
    	alert("파일 사이즈는 5MB까지 가능");
        return;
    }
} */
</script>
<h1> ** admin 페이지 **</h1> <br>
<form action="insertGoods" method="post" name="form" enctype="multipart/form-data">
	상품명 : <input type="text" name="goods_name"/><br><br>
	(btn 짤때 확인) 카테고리 : <select id="category_id" name="category_id">
				<c:forEach var="i" items="${categoryList}">
					<option value="${i.category_id}">${i.category_name}</option>
				</c:forEach>
			  </select>
	짧은설명 : <input type="text" name="goods_shortDesc"/><br><br>
	상세정보 : <textarea rows="10" cols="200" name="goods_detail"></textarea><br><br> 
	원가 : <input type="number" name="goods_price"/><br><br>
	v판매시작일 : <input type="text" name="goods_saleBegin"/><br><br>
	v판매종료일 : <input type="text" name="goods_saleEnd"/><br><br>
	배송방법 : <input type="text" name="goods_delivery"/><br><br>
	업로드할 이미지 선택 : <input type="file" id="fileImg" size="200"><br><br>
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
	<input type="button" value="등록" id="insertBtn">
</form>

</body>
</html>