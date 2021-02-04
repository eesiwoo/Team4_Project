<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/sideBar.css" rel="stylesheet" />
<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="resources/js/jquery-contained-sticky-scroll.js"></script>

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

<script> $(function(){ 
	var $win = $(window); 
	var top = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다. 
	
	/*사용자 설정 값 시작*/
	var speed = 500; // 따라다닐 속도 : "slow", "normal", or "fast" or numeric(단위:msec) 
	var easing = 'linear'; // 따라다니는 방법 기본 두가지 linear, swing 
	var $layer = $('.sideBarContainer'); // 레이어 셀렉팅 
	var layerTopOffset = 0; // 레이어 높이 상한선, 단위:px $layer.css('position', 'relative').css('z-index', '1'); 
	
	/*사용자 설정 값 끝*/ // 스크롤 바를 내린 상태에서 리프레시 했을 경우를 위해 
	if (top > 0 ) $win.scrollTop(layerTopOffset+top); 
	else $win.scrollTop(0); //스크롤이벤트가 발생하면 
	
	$(window).scroll(function(){ 
		yPosition = $win.scrollTop() - 1100; //이부분을 조정해서 화면에 보이도록 맞추세요 
		if (yPosition < 0) { 
			yPosition = 0; 
			} 
		$layer.animate({"top":yPosition }, {duration:speed, easing:easing, queue:false}); 
		
		}); 
	}); 
	
	</script>



</body>
</html>