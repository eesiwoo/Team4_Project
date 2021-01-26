<%@page import="pack.model.GoodsDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="resources/css/styles.css" />
    <link rel="stylesheet" href="resources/css/dropdown.css"/>
	<title>마켓컬리 :: 내일의 장보기, 마켓컬리</title>
	<link rel="shortcut icon" href="resources/images/kurly_mark.png" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
	<script type="text/javascript">
		
	</script>
	<style type="text/css"> /* 글 눌렀을 때 글 나오게 하기 위함*/
	.review_content {
		display : none;
	}
	</style>
</head>
<body>
<%-- <% ArrayList<GoodsDto> recentGoods = (ArrayList<GoodsDto>)session.getAttribute("recentGoodsList"); %><br> --%>
<%-- <%=recentGoods.get(1).getGoods_id() %>
상품 : ${goods.goods_id} --%>
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
	<header>
      <div class="list_menu">
        <div class="menu menu_join">
          <a class="link_menu" aria-label="Go to registeration page">
            회원가입
          </a>
        </div>
        <div class="menu">
          <a class="link_menu center" aria-label="Go to login page">로그인</a>
        </div>
        <div class="menu">
          <a class="link_menu" aria-label="Go to service center ">고객센터</a>
        </div>
      </div>
      <div class="bottom">
        <img src="resources/images/kurly.jpeg" alt="logo" />
      </div>
    </header>
    <nav>
      <div class="dropdown">
        <button class="dropbtn">전체 카테고리</button>
        <div class="dropdown-content">
          <a href="#">채소</a>
          <a href="#">과일*견과*쌀</a>
          <a href="#">수산*해산*건어물</a>
          <a href="#">정육*계란</a>
        </div>
      </div>
      <ul class="list">
        <li><a href="#" aria-label="New products">신상품</a></li>
        <li><a href="#" aria-label="Best products">베스트</a></li>
        <li><a href="#" aria-label="Wise Consumption">알뜰쇼핑</a></li>
        <li id="last"><a href="#" aria-label="Benefits of the week">금주의 혜택</a></li>
      </ul>
      <div class="tools">
        <div id="search" class="search">
          <form>
            <input type="text" />
          </form>
        </div>
        <div>
          <img src="resources/images/location.png" alt="”package" GPS” />
        </div>
        <div class="cart">
          <a href="#" class="cart" aria-label="Go to cart">
            <img src="resources/images/cart.png" alt="”장바구니”"
          /></a>
        </div>
      </div>
    </nav>
     <main>
       <div class="section_view">
         <img id="section_img" src="resources/images/cheese.png">
         <div id="section_info">
          <div class="goods_name">
            <strong class="name">[푸글리제]모짜렐라</strong><br>
            <span class="short_desc">담백하고 결이 살아있는 생 모짜렐라</span>
          </div>
          <div class="goods_dcinfo">
            회원할인가
          </div>
          <div class="goods_price">
            <div class="dc">
              <span class="dc_price">
                5,225
                <span class="won">원</span>
              </span>
              <span class="dc_percent">5%</span>
            </div>
            <div class="original_price">
              5,500원
            </div>
            <div class="not_login">로그인 후, 회원할인가와 적립혜택이 적용 됩니다.</div>
          </div>
          <div class="goods_info">
              <div class="list fst">
                <span class="tit">판매단위</span>
                <span class="desc">1팩</span>
              </div>
              <div class="list">
                <span class="tit">중량/용량</span>
                <span class="desc">125g</span>
              </div>
              <div class="list">
                <span class="tit">배송구분</span>
                <span class="desc">샛별배송/택배배송</span>
              </div>
              <div class="list">
                <span class="tit">포장타입</span>
                <div class="desc">
                  냉장/종이포장
                  <strong class="emph">택배배송은 에코포장이 스티로폼으로 대체됩니다.</strong>
                </div>
              </div>
                <div class="list">
                  <span class="tit">알레르기정보</span>
                  <span class="desc">-우유함유</span>
                </div>
                <div class="list">
                  <span class="tit">유통기한</span>
                  <span class="desc">수령일 포함 최소 7일 남은 제품을 보내 드립니다.</span>
                </div>
                <div class="list">
                  <span class="tit">구매수량</span>
                  <span class="desc">
                    <span class="count">
                      <button type="button" class="btn">
                        -
                      </button>
                      <input type="number" readonly="readonly" onfocus="this.blur()" class="inp">
                      <button type="button" class="btn">
                        +
                      </button>
                    </span>
                  </span>
                </div>
                <div class="total">
                  <div class="price">
                    <strong class="tit">총 상품 금액: </strong>
                    <span class="sum">
                      <span class="num">5,500</span>
                      <span class="won">원</span>
                    </span>
                  </div>
                  <div class="txt_point">
                    <span class="ico">적립</span>
                    <span class="no_login">
                      <span>로그인 후, 회원할인가와 적립혜택 제공</span> 
                    </span>
                  </div>
                </div>
                <div class="group_btn">
                  <div class="view_function">
                    <button type="button" class="btn btn_save">
                      늘 사는 것
                    </button>
                    <button type="button" class="btn btn_alarm">
                      재입고 알림
                    </button>
                  </div>
                  <div class="btn_type1">
                    <button type="button" class="txt_type">
                      장바구니 담기
                    </button>
                  </div>
                </div>
              </div>
          </div>
       </div>
      <div class="goods-view-information">
        <ul class="goods-view-information-tab-group">
          <li class="goods-view-information-tab">상품설명</li>
          <li class="goods-view-information-tab">상품이미지</li>
          <li class="goods-view-information-tab">상세정보</li>
          <li class="goods-view-information-tab">고객후기</li>
          <li class="goods-view-information-tab">상품문의</li>
        </ul>
        <div class="goods-view-information-content">
          <div class="goods_wrap">
            <div class="goods_intro">
              <div class="goods_intro_pic">
                <img src="resources/images/cheese2.png" alt="cheese">
              </div>
              <div class="goods_intro_context">
                <h3>
                  <small>담백하고 결이 살아있는</small>
                  [푸글리제] 모짜렐라
                </h3>
                <p class="words">
                  ‘모짜렐라’ 하면 잘게 썰려져 냉동된 토핑용 치즈가 먼저 떠오르실지도 모르겠어요. 가열하면 길게 늘어나는 성질을 최대한 높이기 위해 가공된 치즈 맛에 익숙하다면, 컬리가 신선하게 전해드리는 생 모짜렐라 치즈를 덩어리째로 만나보세요. 가열해 먹을 때와는 완전히 다른 매력을 느끼실 수 있답니다. 숙성기간이 없는 프레시 치즈인 만큼, 풍부한 우유의 풍미와 촉촉하고 신선한 맛을 자랑하지요. 
                </p>
              </div>
            </div>
            <div class="goods_desc">
              <div class="context">
                <div class="pic">
                  <img src="resources/images/cheese3.png" alt="cheese">
                </div>
                <p class="words">
                  <strong class="sub_tit">우유의 꽃, 모짜렐라</strong>
                  남부 이탈리아에서 처음 만들어진 모짜렐라는 우연한 실수로 탄생했다고 해요.
                   다른 치즈를 만들기 위해 준비된 커드 덩어리에 실수로 뜨거운 물을 부었는데,
                    건져낸 커드가 쭈욱 늘어나는 물성으로 바뀐 것이죠. 
                  <br>
                  <br>    
                  손으로 원하는 크기만큼 잘라내서(mozzare) 만들던 방식 때문에 모짜렐라(mozzarella)라는
                   이름을 갖게 되었어요. 과거 이탈리아에서는 물소 젖으로 만든 치즈에만 ‘모짜렐라’라는
                    이름을 붙였지만 1942년 이후 물소 젖과 우유로 만든 두 가지 종류 모두
                     ‘모짜렐라’로 불리게 되었습니다. 
                  <br>
                  <br>
                  이탈리아인들은 모짜렐라 치즈를 ‘우유의 꽃’(일 피오레 디 라테 Il Fiore Di Latte)이라고
                   부르기도 하며, 아침에 동네 치즈 가게에서 갓 만든 모짜렐라를 구입해 소금, 후추, 올리브 오일만
                    뿌려 신선한 우유 향 자체를 즐기곤 하지요.
                  <br>

                </p>
              </div>
              <div class="context">
                <div class="pic">
                  <img src="resources/images/cheese4.png" alt="cheese">
                </div>
                <p class="words">
                  <strong class="sub_tit">푸글리제 모짜렐라 (Fresh Cheese / 125g)</strong>
                  <b>✓ 원재료:</b>
                  우유 (이탈리아산)
                  <br>
                  <b>✓ 보관 형태: </b>
                  유청에 담겨 포장
                  <br>
                  <br>
                  <br>
                  이탈리아 피에몬테 지역의 신선한 원유로 제조한 후 치즈를 만들 때 얻을 수 있는 맑은 액체인 유청에 담겨 포장된 모짜렐라입니다. 맑고 담백한 맛의 끝에 약한 산미가 느껴지고, 결 반대로 잘랐을 때 매끈하기보다는 닭고기와 비슷한 질감이 느껴져요. 도화지 같은 맛과 너무 말랑하지 않은 질감으로 진한 맛의 요리와도 잘 어울리고, 샐러드에 넣어도 쉽게 부서지지 않아요. 
                  <br>
                </p>
              </div>
            </div>
            <div class="goods_tip">
              <h3>
                <span>Kurly’s Tip</span>
              </h3>
              <div class="tip_box">
                <div class="context">
                  <div class="pic">
                    <img src="resources/images/kurly_tip.png" alt="kurly_tip">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
      <footer>
        <div class="inner_footer">
          <div class="footer_cc">
            <h2 class="tit_cc">고객행복센터</h2>
            <div class="cc_view cc_call">
              <h3><span class="tit">1644-1107</span></h3>
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
                <a href="/shop/mypage/mypage_qna_register.php?mode=add_qna" class="tit">1:1 문의</a>
              </h3>
              <dl class="list">
                <dt>24시간 접수 가능</dt>
                <dt>고객센터 운영시간에 순차적으로 답변해드리겠습니다.</dt>
              </dl>
            </div>
          </div>
          <div class="company">
            <ul class="list">
              <li><a class="link" href="/shop/introduce/about_kurly.php">컬리소개</a></li>
              <li><a class="link" href="https://www.youtube.com/embed/WEep7BcboMQ?rel=0&amp;showinfo=0&amp;wmode=opaque&amp;enablejsapi=1" onclick="window.open(this.href, 'pop', 'width=1330,height=660,scrollbars=yes');return false;">컬리소개영상</a></li>
              <li><a class="link" href="https://marketkurly.recruiter.co.kr/appsite/company/index" target="_blank">인재채용</a></li>
              <li><a class="link" href="/shop/service/agreement.php">이용약관</a></li>
              <li><a class="link emph" href="/shop/service/private.php">개인정보방침</a></li>
              <li><a class="link" href="/shop/service/guide.php">이용안내</a></li>
            </ul>
            법인명 (상호) : 주식회사 컬리 <span class="bar">I</span> 사업자등록번호 : 261-81-23567 <a href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2618123567&amp;apv_perm_no=" target="_blank" class="link">사업자정보 확인</a><br>
            통신판매업 : 제 2018-서울강남-01646 호 <span class="bar">I</span> 개인정보보호책임자 : 이원준<br>
            주소 : 서울시 도산대로 16길 20, 이래빌딩 B1 ~ 4F <span class="bar">I</span> 대표이사 : 김슬아<br>
            입점문의 : <a href="https://forms.gle/oKMAe1SaicqMX3SC9" target="_blank" class="link">입점문의하기</a> <span class="bar">I</span> 제휴문의 : <a href="mailto:business@kurlycorp.com" class="link">business@kurlycorp.com</a><br>
            채용문의 : <a href="mailto:recruit@kurlycorp.com" class="link">recruit@kurlycorp.com</a><br>
            팩스: 070 - 7500 - 6098 <span class="bar">I</span> 이메일 : <a href="mailto:help@kurlycorp.com" class="link">help@kurlycorp.com</a> <em class="copy">© KURLY CORP. ALL RIGHTS RESERVED</em>
				<ul class="list_sns">
					<li><a href="https://instagram.com/marketkurly"
						class="link_sns" target="_blank"><img
							src="https://res.kurly.com/pc/ico/1810/ico_instagram.png"
							alt="마켓컬리 인스타그램 바로가기"></a></li>
					<li><a href="https://www.facebook.com/marketkurly"
						class="link_sns" target="_blank"><img
							src="https://res.kurly.com/pc/ico/1810/ico_fb.png"
							alt="마켓컬리 페이스북 바로가기"></a></li>
					<li><a href="http://blog.naver.com/marketkurly"
						class="link_sns" target="_blank"><img
							src="https://res.kurly.com/pc/ico/1810/ico_blog.png"
							alt="마켓컬리 네이버블로그 바로가기"></a></li>
					<li><a href="https://m.post.naver.com/marketkurly"
						class="link_sns" target="_blank"><img
							src="https://res.kurly.com/pc/ico/1810/ico_naverpost.png"
							alt="마켓컬리 유튜브 바로가기"></a></li>
					<li><a
						href="https://www.youtube.com/channel/UCfpdjL5pl-1qKT7Xp4UQzQg"
						class="link_sns lst" target="_blank"><img
							src="https://res.kurly.com/pc/ico/1810/ico_youtube.png"
							alt="마켓컬리 유튜브 바로가기"></a></li>
				</ul>
			</div>
        </div>
      </footer>



<!-- review test -->
<table>
  <tr style="background-color: silver;">
  	<th>번호</th><th>제  목</th><th>작성자</th><th>작성일</th><th>좋아요</th><th>조회</th>
  </tr>
  <c:forEach var="r" items="${reviews}">
  <tr class = "view_content" id="${r.review_id }">
  	<td>${r.review_asc}</td>
  	<td>${r.review_title }</td>
  	<td>${r.user_id}</td>
  	<td>${r.review_date}</td>
  	<td>--</td>
  	<td>${r.review_viewCount}</td>
  </tr>
  	<td><div id="${r.review_id }_content" class="review_content">${r.review_content }</div></td>
  <tr>
  </tr>
  </c:forEach>
  </table>
  
  <!-- 글 상세보기 함수 --> 
  <script type="text/javascript"> 
  $(document).ready(function(){
	  
	  $(".view_content").click(function(){
		var id = this.id + '_content';
		//alert(id);
		if(document.getElementById(id).style.display === 'block') {
			document.getElementById(id).style.display = 'none';
		}else {
			document.getElementById(id).style.display = 'block'
		};
		
	  });
  });
  </script>
</body>
</html>