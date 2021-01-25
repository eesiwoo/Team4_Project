<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 
	productDetail에서 구현해야할 기본 내용  
	- 왼쪽에 큰 이미지, 오른쪽에 정보나열
	- 아래에 이미지 및 정보 나열(최소 이미지1, 글 한단락) 
	- 상품 선택에 후 장바구니와 연동(form 태그) 
	- 제품후기 게시판(sprweb16board와 유사) 구현 
	

	추가내용 
	- content의 top(상품 설명, 상품 이미지, 상세정보 .. 등)을 
	클릭하면 해당 페이지에서 그곳으로 이동하는 기능 
	- 연관 상품 보여주기  
	  


-->

<!-- review -->
<table>
  <tr>
  	<th>번호</th><th>제  목</th><th>작성자</th><th>작성일</th><th>도움</th><th>조회</th>
  </tr>
  <c:forEach var="r" items="${reviews}">
  <tr>
  	<td>${r.review_asc}</td>
  	<td>${r.review_title }</td>
  	<td>${r.user_id}</td>
  	<td>${r.review_date}</td>
  	<td>00</td> <!-- 나중에 수정 -->
  	<td>${r.review_viewCount}</td>
  </tr>	
  </c:forEach>
</table>
</body>
</html>