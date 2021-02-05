<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="resources/css/dropdown.css">
	<link rel="stylesheet" href="resources/css/top.css">
	<link rel="stylesheet" href="resources/css/insertReview.css">
	
	<script type="text/javascript">
	$(document).on('change', '#review_isPrivate', function(){
	if($('#review_isPrivate').prop('checked')){
		$("#val").val('0');
	}else{
		$("#val").val('1');
	}
	});
	</script>	
</head>
<body>
	<jsp:include page="top.jsp"></jsp:include>
	<div class="main">
		<div class="field_head">
			<h3 class="tit">QnA 작성</h3>
			<p class="sub">
			<span class="ico">*</span>
			"필수입력사항"
			</p>
		</div>


	<form action="insertReview" method="post" id="insertForm" enctype="multipart/form-data">
	<input type="hidden" name="goods_id" value=${goods_id }>
	
	<table border="1" style="width: 80%">
	  <tr>
	  	<td>숨김여부</td>
	  	<td>글 숨기기 <input type="checkbox" id="review_isPrivate"checked></td>
	  	
	  </tr>
	  <tr>
	  	<td>제목</td>
	  	<td><input type="text" name="review_title"></td>
	  </tr>
	  <tr>
	  	<td>파일 첨부(최대 20MB)</td>
	  	<td><input type="file" name="review_file"></td>
	  </tr>
	  <tr>
	  	<td>내용</td>
	  	<td>
	  		<textarea rows="5" cols="50" name="review_content"></textarea>
	  	</td>
	  </tr>
	  <tr>
	  	<td colspan="2" style="text-align: center;">
	  	<input type="hidden" name="review_orQna" value="qna">
	  	<input type="hidden" id="val" name="review_isPrivate" value="0" >
	  		<input type="submit" value="등록" id="btnIns">
	  	
	  	</td>
	  </tr>
	</table>
	</form>
	
	</div>
</body>
</html>