<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/sideBar.css" rel="stylesheet" />
<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript"
	src="resources/js/jquery-contained-sticky-scroll.js"></script>

<style type="text/css">
.grid_4 {
	width: 300px;
	display: inline;
	float: left;
	margin-left: 10px;
	margin-right: 10px;
	padding: 10px;
	color: #fff;
	background-color: #ff6000
}
</style>
</head>
<body>


<div class="sideBarContainer" id="sidebar">
		<div class="sideBarImg">
			<a href="#" aria-label="event"><img alt="sideBarImage"
				src="https://res.kurly.com/pc/service/main/2101/bnr_quick.png"></a>
		</div>
		<div class="sideBarA">
			<a href="#" aria-label="Grade Benefits">등급별 혜택</a> <a href="#"
				aria-label="Recipes">레시피</a> <a href="#" aria-label="Best Reviews">베스트
				후기</a>
		</div>
		<div class="recentProducts">
			<button class="sideUpBtn"></button>
			<strong>최근 본 상품</strong>
			<ul>
				<li><a href="" aria-label="recently viewed product"> <img
						src="http://placehold.it/60x77?text=1">
				</a></li>
			</ul>


			<button class="sideDownBtn"></button>
		</div>
	</div>
	<script type="text/javascript">
	jQuery(document).ready(function() {
		jQuery('#sidebar').containedStickyScroll();
	});
</script>
<!--  
	right는 productList or productDetail에 include 할 것  
	right에서 구현해야 할 기본내용 
	1. 최근 본 상품 (중복 제거)
	2. 광고내용하나(현재는 설선물이라고 적혀있음.) 
	3. 장바구니
	
	
	추가내용 
	- 등급별 혜택
	- 레시피
	- 베스트 후기
	- 맨위로가기 기능(우측 하단 아이콘)ㄹㅍㄹ
	- 24시간동안 session으로 유지되기
-->

</body>
</html>