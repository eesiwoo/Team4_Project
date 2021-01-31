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
<link href="resources/css/test.css" rel="stylesheet" />
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
<a href="admin">관리자</a>

<!--   
	index에서 구현해야할 기본 내용  
	- jquery 이미지 슬라이드   
	- 상품 추천, 이벤트 소식, 알뜰상품(시작할때 무작위 4개 상품 가져오기)
	- 설 얼리버드 특가 레이아웃  
	- (4개 무작위 상품추천과 같음)
	
	추가내용 
	- 설 얼리버드 특가 레이아웃에 시간 줄어드는거 표시 
 -->
 
	<div id="container">
		<header>
			<div class="list_menu">
				<div class="menu menu_join">
					<a href="signup" class="link_menu" aria-label="Go to registeration page">회원가입</a>
				</div>
				<div class="menu">
					<a href="login" class="link_menu center" aria-label="Go to login page">로그인</a>
				</div>
				<%
				if(session.getAttribute("user_id") != null)
					out.print("<div class='menu'><a href='logout' class='link_menu center' aria-label='Go to login page'>로그아웃</a></div>");
				%>
				<%-- <c:if test="${ session.getAttribute('user_id') != null}">
				<div class="menu">
					<a href="logout" class="link_menu center" aria-label="Go to login page">로그아웃</a>
				</div>
				</c:if> --%>
				<div class="menu">
					<a class="link_menu" aria-label="Go to service center ">고객센터</a>
				</div>
				<div class="menu">
					<a href="admin" class="link_menu" aria-label="Go to service center " >관리자</a>
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
				<li><a href="goodsList" aria-label="New products">신상품</a></li>
				<li><a href="#" aria-label="Best products">베스트</a></li>
				<li><a href="#" aria-label="Wise Consumption">알뜰쇼핑</a></li>
				<li id="last"><a href="#" aria-label="Benefits of the week">금주의
						혜택</a></li>
			</ul>
			<div class="tools">
				<div id="search" class="search">
					<form>
						<input type="text" />
					</form>
				</div>
				<div>
					<img src="resources/images/gps.png" alt="package GPS" />
				</div>
				<div class="cart">
					<a href="cartGoods" class="cart" aria-label="Go to cart"> <img
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
						<a id="index_a1" href="#"><img id="index_image1"  src="http://placehold.it/250x320?text=1"/></a>
						<div id="index_goods_name1">상품명</div> 
						<del id="index_goods_Bprice1">원래가격 : </del><br />
						<div id="index_goods_Pprice1">가격</div>
					</div>
					<div>
						<a id="index_a2" href="#"><img id="index_image2"  src="http://placehold.it/250x320?text=1"/></a>
						<div id="index_goods_name2">상품명</div> 
						<del id="index_goods_Bprice2">원래가격 : </del><br />
						<div id="index_goods_Pprice2">가격</div>
					</div>
					<div>
						<a id="index_a3" href="#"><img id="index_image3"  src="http://placehold.it/250x320?text=1"/></a>
						<div id="index_goods_name3">상품명</div> 
						<del id="index_goods_Bprice3">원래가격 : </del><br />
						<div id="index_goods_Pprice3">가격</div>
					</div>
					<div>
						<a id="index_a4" href="#"><img id="index_image4"  src="http://placehold.it/250x320?text=1"/></a>
						<div id="index_goods_name4">상품명</div> 
						<del id="index_goods_Bprice4">원래가격 : </del><br />
						<div id="index_goods_Pprice4">가격</div>
					</div>
					<div>
						<a id="index_a5" href="#"><img id="index_image5"  src="http://placehold.it/250x320?text=1"/></a>
						<div id="index_goods_name5">상품명</div> 
						<del id="index_goods_Bprice5">원래가격 : </del><br />
						<div id="index_goods_Pprice5">가격</div>
					</div>
					<div>
						<a id="index_a6" href="#"><img id="index_image6"  src="http://placehold.it/250x320?text=1"/></a>
						<div id="index_goods_name6">상품명</div> 
						<del id="index_goods_Bprice6">원래가격 : </del><br />
						<div id="index_goods_Pprice6">가격</div>
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
					<a id="index_a25" href="#"><img id="index_image25" src="http://placehold.it/600x400?text=1" /></a>
					<div id="index_goods_name25">상품명</div> 
					<del id="index_goods_Bprice25">원래가격 : </del><br />
					<div id="index_goods_Pprice25">가격</div>
				</div>
				<br /> <br /> <br /> <br />
			</div>

			<div class="eventNews" style="background-color: #f2f2f2">
				<br /> <br />
				<h2>이벤트 소식 ></h2>
				<section class="regular2 slider">
					<div>
						<a id="index_a7" href="#"><img id="index_image7" src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name7">상품명</div> 
						<del id="index_goods_Bprice7">원래가격 : </del><br />
						<div id="index_goods_Pprice7">가격</div>
					</div>
					<div>
						<a id="index_a8" href="#"><img id="index_image8" src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name8">상품명</div> 
						<del id="index_goods_Bprice8">원래가격 : </del><br />
						<div id="index_goods_Pprice8">가격</div>
					</div>
					<div>
						<a id="index_a9" href="#"><img id="index_image9" src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name9">상품명</div> 
						<del id="index_goods_Bprice9">원래가격 : </del><br />
						<div id="index_goods_Pprice9">가격</div>
					</div>
					<div>
						<a id="index_a10" href="#"><img id="index_image10" src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name10">상품명</div> 
						<del id="index_goods_Bprice10">원래가격 : </del><br />
						<div id="index_goods_Pprice10">가격</div>
					</div>
					<div>
						<a id="index_a11" href="#"><img id="index_image11" src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name11">상품명</div> 
						<del id="index_goods_Bprice11">원래가격 : </del><br />
						<div id="index_goods_Pprice11">가격</div>
					</div>
					<div>
						<a id="index_a12" href="#"><img id="index_image12" src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name12">상품명</div> 
						<del id="index_goods_Bprice12">원래가격 : </del><br />
						<div id="index_goods_Pprice12">가격</div>
					</div>
				</section>
				<br /> <br /> <br />
			</div>

			<div class="AlttlProducet">
				<br /> <br />
				<h2>알뜰 상품 ></h2>
				<section class="regular slider">
					<div>
						<a id="index_a13" href="#"><img id="index_image13" src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name13">상품명</div> 
						<del id="index_goods_Bprice13">원래가격 : </del><br />
						<div id="index_goods_Pprice13">가격</div>
					</div>
					<div>
						<a id="index_a14" href="#"><img id="index_image14" src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name14">상품명</div> 
						<del id="index_goods_Bprice14">원래가격 : </del><br />
						<div id="index_goods_Pprice14">가격</div>
					</div>
					<div>
						<a id="index_a15" href="#"><img id="index_image15" src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name15">상품명</div> 
						<del id="index_goods_Bprice15">원래가격 : </del><br />
						<div id="index_goods_Pprice15">가격</div>
					</div>
					<div>
						<a id="index_a16" href="#"><img id="index_image16" src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name16">상품명</div> 
						<del id="index_goods_Bprice16">원래가격 : </del><br />
						<div id="index_goods_Pprice16">가격</div>
					</div>
					<div>
						<a id="index_a17" href="#"><img id="index_image17" src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name17">상품명</div> 
						<del id="index_goods_Bprice17">원래가격 : </del><br />
						<div id="index_goods_Pprice17">가격</div>
					</div>
					<div>
						<a id="index_a18" href="#"><img id="index_image18" src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name18">상품명</div> 
						<del id="index_goods_Bprice18">원래가격 : </del><br />
						<div id="index_goods_Pprice18">가격</div>
					</div>
				</section>
				<br /> <br /> <br />
			</div>

			<div class="newProduct">
				<h2>오늘의 신상품 ></h2>
				<section class="regular slider">
					<div>
						<a id="index_a19" href="#"><img id="index_image19" src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name19">상품명</div> 
						<del id="index_goods_Bprice19">원래가격 : </del><br />
						<div id="index_goods_Pprice19">가격</div>
					</div>
					<div>
						<a id="index_a20" href="#"><img id="index_image20" src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name20">상품명</div> 
						<del id="index_goods_Bprice20">원래가격 : </del><br />
						<div id="index_goods_Pprice20">가격</div>
					</div>
					<div>
						<a id="index_a21" href="#"><img id="index_image21" src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name21">상품명</div> 
						<del id="index_goods_Bprice21">원래가격 : </del><br />
						<div id="index_goods_Pprice21">가격</div>
					</div>
					<div>
						<a id="index_a22" href="#"><img id="index_image22" src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name22">상품명</div> 
						<del id="index_goods_Bprice22">원래가격 : </del><br />
						<div id="index_goods_Pprice22">가격</div>
					</div>
					<div>
						<a id="index_a23" href="#"><img id="index_image23" src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name23">상품명</div> 
						<del id="index_goods_Bprice23">원래가격 : </del><br />
						<div id="index_goods_Pprice23">가격</div>
					</div>
					<div>
						<a id="index_24" href="#"><img id="index_image24" src="http://placehold.it/250x320?text=1" /></a>
						<div id="index_goods_name24">상품명</div> 
						<del id="index_goods_Bprice24">원래가격 : </del><br />
						<div id="index_goods_Pprice24">가격</div>
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
				// 상품 : 6개 * 4 24개를 가져와서 
			 	// 상품 넣고 ajax 처리. 
			 	$.ajax({
					type:"get",
					url:"goodsRandom",
					dataType:"json",
					data:{"num":25},
					success:function(goodsList){
					//alert(goodsList.datas);
						let list = goodsList.datas;
						$(list).each(function(idx, dto){
							// alert(idx); 0 ~ 17
							idx ++;
							let img = "resources/images/goods/"+dto["goods_img"]+".jpg";
							let resultPrice = Number(dto["goods_price"]) * (100-Number(dto["goods_discountRate"])) / 100;
							let link = "goods?goods_id=" + dto["goods_id"];
							resultPrice += "원";
							
							$("#index_a"+idx).attr("href", link);
							$("#index_image"+idx).attr("src", img);
							$("#index_goods_name"+idx).text(dto["goods_name"]);
							$("#index_goods_Bprice"+idx).text(dto["goods_price"]+"원");
							$("#index_goods_Pprice"+idx).text(resultPrice); 
													
						}); 
					
					
			}, error:function(){		
			}
		});
			 	
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