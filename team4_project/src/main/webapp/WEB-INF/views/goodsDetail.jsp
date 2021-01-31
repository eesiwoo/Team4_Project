<%@page import="pack.model.GoodsDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="resources/css/styles.css" rel="stylesheet" />
    <link href="resources/css/styles_board.css" rel="stylesheet" />
    <link href="resources/css/dropdown.css" rel="stylesheet"/>
	<title>마켓컬리 :: 내일의 장보기, 마켓컬리</title>
	<link rel="shortcut icon" href="resources/images/kurly_mark.png" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
	<script type="text/javascript">
		
	</script>
 
	
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
         <img id="section_img" src="resources/images/goods/${goods.goods_img}.jpg">
         <div id="section_info">
          <div class="goods_name">
            <strong class="name">${goods.goods_name}</strong><br>
            <span class="short_desc">${goods.goods_shortDesc}</span>
          </div>
          <div class="goods_dcinfo">
            회원할인가
          </div>
          <div class="goods_price">
            <div class="dc">
              <span class="dc_price">
                ${goods.goods_price}
                <span class="won">원</span>
              </span>
              <span class="dc_percent">${goods.goods_discountRate}%</span>
            </div>
            <div class="original_price">
              ${goods.goods_price}원
            </div>
            <div class="not_login">로그인 후, 회원할인가와 적립혜택이 적용 됩니다.</div>
          </div>
          <div class="goods_info">
              <div class="list fst">
                <span class="tit">판매단위</span>
                <span class="desc">${goods.goods_saleUnit}팩</span>
              </div>
              <div class="list">
                <span class="tit">중량/용량</span>
                <span class="desc">${goods.goods_weight}g</span>
              </div>
              <div class="list">
                <span class="tit">배송구분</span>
                <span class="desc">${goods.goods_delivery}</span>
              </div>
              <div class="list">
                <span class="tit">포장타입</span>
                <div class="desc">
                  ${goods.goods_state}
                  <strong class="emph">택배배송은 에코포장이 스티로폼으로 대체됩니다.</strong>
                </div>
              </div>
                <div class="list">
                  <span class="tit">알레르기정보</span>
                  <span class="desc">${goods.goods_allergy}</span>
                </div>
                <div class="list">
                  <span class="tit">유통기한</span>
                  <span class="desc">${goods.goods_shelfLife}</span>
                </div>
                <div class="list">
                  <span class="tit">구매수량</span>
                  <span class="desc">
                    <span class="count">
                      <button type="button" id="btn_down" class="btn_down_on">-</button>
                      <input type="number" name="cart_goods_cont" readonly="readonly" 
                      onfocus="this.blur()" class="inp" value=0>
                      <button type="button" id="btn_up" class="btn_down_up">+</button>                      
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
                    <button type="button"id="insertCartBtn" class="txt_type">
                      장바구니 담기
                    </button>
                  </div>
                </div>
              </div>
          </div>
       </div>
      <div class="goods-view-information">
        <ul class="goods-view-information-tab-group">
          <li class="goods-view-information-tab"><a href="#goods_detail">상품설명</a></li>
          <li class="goods-view-information-tab">상품이미지</li>
          <li class="goods-view-information-tab">상세정보</li>
          <li class="goods-view-information-tab"><a href="#review">고객후기</a></li>
          <li class="goods-view-information-tab">상품문의</li>
        </ul>
        <div class="goods-view-information-content">
          <div class="goods_wrap">
            <div class="goods_intro">
              <div class="goods_intro_pic">
                <img src="resources/images/goods/${goods.goods_img}.jpg" alt="${goods.goods_name}">
              </div>
              <div class="goods_intro_context">
                <h3>
                  <small>${goods.goods_shortDesc}</small>
                  ${goods.goods_name}
                </h3>
                <p class="words">
                  ${goods.goods_detail } 
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

    	<div class="goods-view-information">
    	<ul class="goods-view-information-tab-group">
          <li class="goods-view-information-tab"><a href="#goods_detail">상품설명</a></li>
          <li class="goods-view-information-tab">상품이미지</li>
          <li class="goods-view-information-tab">상세정보</li>
          <li class="goods-view-information-tab"><a href="#review">고객후기</a></li>
          <li class="goods-view-information-tab">상품문의</li>
        </ul>
        </div>
		<div class="board">
			<div class="board_tit">
				<h2>PRODUCT REVIEW</h2>
				<div class="sort-wrap clearfix">
					<ul>
						<li>상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로
							이동될 수 있습니다.</li>
						<li>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 1:1 문의에 남겨주세요.</li>
					</ul>
					<select id="howAsc" class="sort">
						<option value="recently">최근등록순</option>
						<option value="likes">좋아요많은순</option>
						<option value="myReview">내가 쓴 글</option>
					</select>
				</div>
			</div>
			<div class="board_table" id="review">
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
	

  <script type="text/javascript">

  	/* 장바구니 담기 */
  	$(document).on('click', '#insertCartBtn', function(){
  		let cart_goods_cont = $(".inp").val();
  		let user_id = "<%=session.getAttribute("user_id")%>";
  		if (cart_goods_cont < 1){
  			alert("구매수량이 0개입니다.");
  			return
  		}
  		
  		if (user_id == "null"){
  			alert("로그인이 필요합니다.");
  			location.href = 'login';
  			return
  		}
  		
  		<% GoodsDto dto = (GoodsDto)request.getAttribute("goods"); %>
  		//alert(goods_id)
  		let goods_id = <%=dto.getGoods_id() %>;
  		
  		$.ajax({
  			type: "post",
  			url:"insertCartGoods",
  			dataType:"json",
  			data:{"goods_id":goods_id, 
  				"cart_goods_cont": cart_goods_cont},
  			success:function(isSuccess){
  				alert(isSuccess.msg.toString())
  				
  			}
  		})
  	});
  
  	/* 구매 수량 변동 */
  	$(document).on('click', '.btn_down_on',function(){
  		let num = $(".inp").val();
  		if (num > 0) $(".inp").val(--num);
	  });
    $(document).on('click', '.btn_down_up',function(){
  		let num = $(".inp").val();
  		if (num < 1000) $(".inp").val(++num);
	  });


  /* 페이지 로딩될 때 1 페이지 표시됨 */
  $(function(){
		var pageId = 1;
		callReview(pageId, "recently");
	 });  
  
 	 
  /* url에서 goods_id 가져오기 */
  function getParameterByName(name) {
      name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
      var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
              results = regex.exec(location.search);
      return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
  }
  
  /* 리뷰 상세내용 표시 */
  $(document).on('click', '.view_content',function(){
		var id = this.id + "_content";
		if(document.getElementById(id).style.display === 'block') {
			document.getElementById(id).style.display = 'none';
		}else {
			document.getElementById(id).style.display = 'block';
		};
		$.ajax({
			type : "get",
			url : "view_count",
			data : {"review_id" : this.id},
			dataType : "json"
		})
		
	  });
  
  /* 좋아요 버튼 클릭 */
  $(document).on('click', '.like_btn',function(){
	  var review_id = this.id;
	 $.ajax({
		   type : "get",
		   url : "clickLikes",
		   data : {"review_id" : review_id},
		   dataType : "json",
		   success : function(data) {
			   let result = data.result;
			  if(result == "fail")
				  alert("로그인 후 이용해 주세요.")
			  else if(result == "like")
				  alert("추천해 주셔서 감사합니다.")
			  else
				  alert("추천이 취소되었습니다.")
		   },
		   error : function(){
			   alert("오류발생");
			   
		   }
	 }); 
	  
  });
  
  /* 페이지 변경 */
  $(document).on('click', '.pagebtn', function(){
	  var pageId = this.id;
	  var howAsc = $("#howAsc").val();
	  callReview(pageId, howAsc);
  });		
  
  /* 리뷰 정렬하기 */
  $(document).on('change', '#howAsc', function(){
	  var pageId = 1;
	  var howAsc = $("#howAsc").val();
	  callReview(pageId, howAsc);
  });		
  

  /* 리뷰목록 불러오기 */
  function callReview(pageId, howAsc) {
	 $("#review").empty(); 
	 var goods_id = getParameterByName('goods_id');
	 
	   $.ajax({
		   type : "get",
		   url : "reviewList",
		   data : {"goods_id" : goods_id,
			       "page" : pageId,
			       "howAsc" : howAsc},
		   dataType : "json",
		   success : function(review) {
				var str = "<table>";
				    str += "<tr class='view_content' id='tr_first'>";
					str += "<td class='tb_no'>번호</td>";
					str += "<td class='tb_tit'>제목</td>";
					str += "<td class='tb_name'>작성자</td>";
					str += "<td class='tb_date'>작성일</td>";
					str += "<td class='tb_help'>좋아요</td>";
					str += "<td class='tb_count'>조회</td>";
					str += "</tr>";
				let notice = review.noticeList;
				$(notice).each(function(i, nl){
					str += "<tr class='view_content' id='" + nl.review_id + "_review'>";
					str += "<td class='tb_no'>공  지</td>"
					str += "<td class='tb_tit'>" + nl.review_title + "</td>";
					str += "<td class='tb_name'>" + nl.user_id + "</td>";
					str += "<td class='tb_date'>" + nl.review_date + "</td>";
					str += "<td class='tb_help'>" + nl.likes_count + "</td>";
					str += "<td class='tb_count'>" + nl.review_viewCount + "</td>";
					str += "</tr>";
					str += "<tr>";
					if(nl.review_img != null){
						str += "<td class='tb_content'><div class='review_content' id='"
						     + nl.review_id +"_review_content'><br/>" + "<img src='" + nl.review_img +"'><br/>"
						     + nl.review_content + "</div></td>";
					}else{
						str += "<td class='tb_content'><div class='review_content' id='"
						     + nl.review_id +"_review_content'>" + nl.review_content + "</div></td>";
					
					}
					str += "</tr>";
				});
					
				let list = review.datas;
				$(list).each(function(i, rd){
					/* 리뷰목록 */
					str += "<tr class='view_content' id='" + rd.review_id + "_review' >";
					str += "<td class='tb_no'>" + rd.review_asc + "</td>";	
					str += "<td class='tb_tit'>" + rd.review_title + "</td>";
					str += "<td class='tb_name'>" + rd.user_id + "</td>";
					str += "<td class='tb_date'>" + rd.review_date + "</td>";
					str += "<td class='tb_help'>" + rd.likes_count + "</td>";
					str += "<td class='tb_count'>" + rd.review_viewCount + "</td>";
					str += "</tr>";
					/* 리뷰 내용 */
					str += "<tr>";
					if(rd.review_img != null){
						str += "<td class='tb_content' colspan='6'><div class='review_content' id='"
						     + rd.review_id +"_review_content'><br/>";
						str += "<img src='" + rd.review_img +"'><br/>";
						str += rd.review_content + "</div>";
						str += "<button class='like_btn' id='" + rd.review_id + "_likes'>좋아요</button></td>";
					}else{
						str += "<td class='tb_content'><div class='review_content' id='"
						     + rd.review_id +"_review_content'>" + rd.review_content + "</div>";
						str += "<button class='like_btn' id='" + rd.review_id + "_likes'>좋아요</button></td>";     
					}
					
					str += "</tr>"
				});
					/* 리뷰 추가 */
					str += "<tr>";
					str += "<td><a href='insertReview?goods_id="+goods_id+"'> 리뷰 쓰기 </a></td>";
					str += "</tr>";
					
					/* 페이징 */
					str += "<tr>";
					str += "<td>";
				let totalPage = review.totalPage;
				let page = review.page;
				for(var pageNum = 1; pageNum<=totalPage; pageNum++){
					if(pageNum == page){
					str += "<span class='pagebtn' id='" + pageNum + "'> <b>" + pageNum + "</b> </span>";
					}
					else{
					str += "<span class='pagebtn' id='" + pageNum + "'>" + pageNum + " </span>";
					}
				}
					str += "</td>";
					str += "</tr>";
				    str += "</table>";
				    
				    
				    
				    $("#review").html(str);
		},
		   error : function(){
			   alert("오류발생");
			   
		   }
	   });
	
	}; 

  </script>	

</body>
</html>