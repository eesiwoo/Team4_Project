<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="insertReview" method="post" id="insertForm">
	<input type="hidden" name="goods_id" value=${goods_id }>
	
	<table border="1" style="width: 80%">
	  <tr>
	  	<td>별점</td>
	  	<td><input type="number" name="review_star"></td>
	  </tr>
	  <tr>
	  	<td>숨김여부</td>
	  	<td><input type="text" name="review_isPrivate"></td>
	  </tr>
	  <tr>
	  	<td>제목</td>
	  	<td><input type="text" name="review_title"></td>
	  </tr>
	  <tr>
	  	<td>내용</td>
	  	<td>
	  		<textarea rows="5" cols="50" name="review_content"></textarea>
	  	</td>
	  </tr>
	  <tr>
	  	<td colspan="2" style="text-align: center;">
	  		<input type="submit" value="등록" id="btnIns">
	  	
	  	</td>
	  </tr>
	</table>
	</form>

</body>
</html>