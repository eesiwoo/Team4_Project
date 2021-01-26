<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>마켓컬리 :: 내일의 장보기, 마켓컬리</title>
<link href="resources/css/slick.css" rel="stylesheet" type="text/css"  />
<link href="resources/css/slick-theme.css" rel="stylesheet" type="text/css"  />
<link href="resources/css/index.css" rel="stylesheet" />
<link href="resources/css/slider.css" rel="stylesheet" />
<link href="resources/css/footer.css" rel="stylesheet" />
<link href="resources/css/multipleImageSlider.css" rel="stylesheet" />
<link href="resources/css/earlyBirdContainer.css" rel="stylesheet" />
<link href="resources/css/dropdown.css" rel="stylesheet" />
<link rel="shortcut icon" href="resources/images/kurlyTop.png" />
</head>
<body>
<a href="goodsList">상품 페이지 테스트</a><br>
<a href="goods?goods_id=2">상품 클릭 테스트</a><br>
<a href="goodsRandom?num=1">상품 임의 1개 테스트</a><br>
<a href="goodsRandom?num=4">상품 임의 4개 테스트1</a><br>
<a href="cartGoods?user_id=user_id 01">장바구니 페이지 테스트</a><br>
<a href="insertCartGoods?cart_id=cart_id 13&goods_id=2&user_id=user_id 03&cart_goods_cont=2">장바구니 담기 테스트</a><br>
<!--   
	index에서 구현해야할 기본 내용  
	- jquery 이미지 슬라이드   
	- 상품 추천, 이벤트 소식, 알뜰상품(시작할때 무작위 4개 상품 가져오기)
	- 설 얼리버드 특가 레이아웃  
	- (4개 무작위 상품추천과 같음)
	
	추가내용 
	- 설 얼리버드 특가 레이아웃에 시간 줄어드는거 표시 
 -->
 
  <!-- review test -->
 <a href="goodsDetail?goods_id=7">7</a><br>
 <a href="goodsDetail?goods_id=8">8</a><br>
 
 
	<div id="container">
		<header>
			<div class="list_menu">
				<div class="menu menu_join">
					<a class="link_menu" aria-label="Go to registeration page">
						회원가입 </a>
				</div>
				<div class="menu">
					<a class="link_menu center" aria-label="Go to login page">로그인</a>
				</div>
				<div class="menu">
					<a class="link_menu" aria-label="Go to service center ">고객센터</a>
				</div>
			</div>
			<div class="bottom">
				<img src="resources/images/kurly.jpg" alt="logo" />
			</div>
		</header>
		<nav>
			<div class="dropdown">
				<button class="dropbtn">전체 카테고리</button>
				<div class="dropdown-content">
					<a href="#">채소</a> <a href="#">과일*견과*쌀</a> <a href="#">수산*해산*건어물</a>
					<a href="#">정육*계란</a>
				</div>
			</div>
			<ul class="list">
				<li><a href="#" aria-label="New products">신상품</a></li>
				<li><a href="#" aria-label="Best products">베스트</a></li>
				<li><a href="#" aria-label="Wise Consumption">알뜰쇼핑</a></li>
				<li id="last"><a href="#" aria-label="Benefits of the week">금주의
						혜택</a></li>
			</ul>
			<div class="tools">
				<div id="search" class="search">
					<form>
						<input tpye="text" />
					</form>
				</div>
				<div>
					<img src="resources/images/gps.png" alt="package GPS" />
				</div>
				<div class="cart">
					<a href="#" class="cart" aria-label="Go to cart"> <img
						src="resources/images/cart.png" alt="”장바구니”" /></a>
				</div>
			</div>
		</nav>

		<div class="main">
			<div class="carousel-container">
				<div class="carousel-slide">
					<img src="resources/images/mainSlider3.PNG" id="lastClone" /> <img
						src="resources/images/mainSlider1.PNG" /> <img
						src="resources/images/mainSlider2.PNG" /> <img
						src="resources/images/mainSlider3.PNG" /> <img
						src="resources/images/mainSlider1.PNG" id="firstClone" />
				</div>
				<button id="prevBtn"></button>
				<button id="nextBtn"></button>
			</div>

			<div class="howAbout">
				<h2>이 상품 어때요?</h2>
				<section class="regular slider">
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
						상품명<br /> 가격<br />
						<del>원래가격</del>
						<br />
					</div>
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
					</div>
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
					</div>
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
					</div>
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
					</div>
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
					</div>
				</section>
				<br /> <br /> <br />
			</div>

			<div class="earlyBirdContainer">
				<div class="earlyBirdText">
					<br /> <strong>설 얼리버드 특가</strong><br /> <br /> ㅡ<br /> <br />
					<br /> <span>설날까지 매일 진행되는 24시간 한정 특가</span><br /> <br /> <br />
					⏰ 망설이면 늦어요!<br />
				</div>
				<div class="earlyBirdPic">
					<a href="#"><img src="http://placehold.it/600x400?text=1" /></a>
				</div>
				<br /> <br /> <br /> <br />
			</div>

			<div class="eventNews" style="background-color: #f2f2f2">
				<br /> <br />
				<h2>이벤트 소식 ></h2>
				<section class="regular2 slider">
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
					</div>
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
					</div>
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
					</div>
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
					</div>
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
					</div>
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
					</div>
				</section>
				<br /> <br /> <br />
			</div>

			<div class="AlttlProducet">
				<br /> <br />
				<h2>알뜰 상품 ></h2>
				<section class="regular slider">
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
					</div>
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
					</div>
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
					</div>
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
					</div>
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
					</div>
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
					</div>
				</section>
				<br /> <br /> <br />
			</div>

			<div class="newProduct">
				<h2>오늘의 신상품 ></h2>
				<section class="regular slider">
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
					</div>
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
					</div>
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
					</div>
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
					</div>
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
					</div>
					<div>
						<a href="#"><img src="http://placehold.it/250x320?text=1" /></a>
					</div>
				</section>
				<br /> <br /> <br />
			</div>
		</div>

		<footer>
			<div class="inner_footer">
				<div class="footer_cc">
					<h2 class="tit_cc">고객행복센터</h2>
					<div class="cc_view cc_call">
						<h3>
							<span class="tit">1644-1107</span>
						</h3>
						<dl class="list">
							<dt>365고객센터</dt>
							<dt>오전 7시 - 오후 7시</dt>
						</dl>
					</div>
					<div class="cc_view cc_kakao">
						<h3>
							<a class="tit" href="#none">카카오톡 문의</a>
						</h3>
						<dl class="list">
							<dt>365고객센터</dt>
							<dt>오전 7시 - 오후 7시</dt>
						</dl>
					</div>
					<div class="cc_view cc_qna">
						<h3>
							<a href="/shop/mypage/mypage_qna_register.php?mode=add_qna"
								class="tit">1:1 문의</a>
						</h3>
						<dl class="list">
							<dt>24시간 접수 가능</dt>
							<dt>고객센터 운영시간에 순차적으로 답변해드리겠습니다.</dt>
						</dl>
					</div>
				</div>
				<div class="company">
					<ul class="list">
						<li><a class="link" href="/shop/introduce/about_kurly.php">컬리소개</a>
						</li>
						<li><a class="link"
							href="https://www.youtube.com/embed/WEep7BcboMQ?rel=0&amp;showinfo=0&amp;wmode=opaque&amp;enablejsapi=1"
							onclick="window.open(this.href, 'pop', 'width=1330,height=660,scrollbars=yes');return false;">컬리소개영상</a>
						</li>
						<li><a class="link"
							href="https://marketkurly.recruiter.co.kr/appsite/company/index"
							target="_blank">인재채용</a></li>
						<li><a class="link" href="/shop/service/agreement.php">이용약관</a>
						</li>
						<li><a class="link emph" href="/shop/service/private.php">개인정보처리</a>
						</li>
						<li><a class="link" href="/shop/service/guide.php">이용안내</a></li>
					</ul>
					법인명 (상호) : 주식회사 컬리 <span class="bar">I</span> 사업자등록번호 :
					261-81-23567 <a
						href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2618123567&amp;apv_perm_no="
						target="_blank" class="link">사업자정보 확인</a> <br /> 통신판매업 : 제
					2018-서울강남-01646 호 <span class="bar">I</span> 개인정보보호책임자 : 박성수 <br />
					주소 : 서울시 도산대로 16길 20, 이래빌딩 B1 ~ 4F <span class="bar">I</span> 대표이사
					: 조강희 <br /> 입점문의 : <a href="https://forms.gle/oKMAe1SaicqMX3SC9"
						target="_blank" class="link">입점문의하기</a> <span class="bar">I</span>
					제휴문의 : <a href="mailto:business@kurlycorp.com" class="link">business@kurlycorp.com</a>
					<br /> 채용문의 : <a href="mailto:recruit@kurlycorp.com" class="link">recruit@kurlycorp.com</a>
					<br /> 팩스: 070 - 7500 - 6098 <span class="bar">I</span> 이메일 : <a
						href="mailto:help@kurlycorp.com" class="link">help@kurlycorp.com</a>
					<em class="copy">© KURLY CORP. ALL RIGHTS RESERVED</em>
					<ul class="list_sns">
						<li><a href="https://instagram.com/marketkurly"
							class="link_sns" target="_blank"><img
								src="https://res.kurly.com/pc/ico/1810/ico_instagram.png"
								alt="마켓컬리 인스타그램 바로가기" /></a></li>
						<li><a href="https://www.facebook.com/marketkurly"
							class="link_sns" target="_blank"><img
								src="https://res.kurly.com/pc/ico/1810/ico_fb.png"
								alt="마켓컬리 페이스북 바로가기" /></a></li>
						<li><a href="http://blog.naver.com/marketkurly"
							class="link_sns" target="_blank"><img
								src="https://res.kurly.com/pc/ico/1810/ico_blog.png"
								alt="마켓컬리 네이버블로그 바로가기" /></a></li>
						<li><a href="https://m.post.naver.com/marketkurly"
							class="link_sns" target="_blank"><img
								src="https://res.kurly.com/pc/ico/1810/ico_naverpost.png"
								alt="마켓컬리 유튜브 바로가기" /></a></li>
						<li><a
							href="https://www.youtube.com/channel/UCfpdjL5pl-1qKT7Xp4UQzQg"
							class="link_sns lst" target="_blank"><img
								src="https://res.kurly.com/pc/ico/1810/ico_youtube.png"
								alt="마켓컬리 유튜브 바로가기" /></a></li>
					</ul>
				</div>
				<div class="js-goToTop">
					<button class="goToTopButton">페이지 맨 위로</button>
				</div>

			</div>
			<div class="footer_link"></div>
		</footer>


		<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
		<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
		<script type="text/javascript" src="resources/js/slick.min.js"></script>
		<script type="text/javascript" id="multiSlider">
			$(document).on('ready', function() {

				$(".regular").slick({
					dots : false,
					infinite : true,
					slidesToShow : 4,
					slidesToScroll : 1
				});

				$(".regular2").slick({
					dots : true,
					infinite : true,
					slidesToShow : 3,
					slidesToScroll : 1
				});

			});
		</script>
		<script src="resources/js/slider.js"></script>
		<script src="resources/js/index.js"></script>

	</div>
 
 
 
</body>
</html>