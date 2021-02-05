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
	<jsp:include page="top.jsp"></jsp:include>
     <main>
       <div class="section_view">
         <img id="section_img" src="resources/images/goods/${goods.goods_img}">
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
            	<c:out value="${goods.goods_price * (100 - goods.goods_discountRate)/100}"/>  
              </span>
              <span class="won">원</span>
              
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
                <span class="desc">${goods.goods_saleUnit}</span>
              </div>
              <div class="list">
                <span class="tit">중량/용량</span>
                <span class="desc">${goods.goods_weight}</span>
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
                      <span class="num">${goods.goods_price}</span>
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
          <li class="goods-view-information-tab"><a href="#qna">상품문의</li>
        </ul>
        <div class="goods-view-information-content">
          <div class="goods_wrap">
            <div class="goods_intro">
              <div class="goods_intro_pic">
                <img src="resources/images/goods/${goods.goods_img}" alt="${goods.goods_name}">
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
          </div>
        </div>
      </div>

    	<div class="goods-view-information">
    	<ul class="goods-view-information-tab-group">
          <li class="goods-view-information-tab"><a href="#goods_detail">상품설명</a></li>
          <li class="goods-view-information-tab">상품이미지</li>
          <li class="goods-view-information-tab">상세정보</li>
          <li class="goods-view-information-tab"><a href="#review">고객후기</a></li>
          <li class="goods-view-information-tab"><a href="#qna">상품문의</li>
        </ul>
        </div>
		<div class="board">
			<div class="board_tit">
				<h2>PRODUCT REVIEW</h2>
				<div class="sort-wrap clearfix">
					<ul>
						<li>상품에 대한 후기를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로
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
		<br/><br/><br/><br/><br/><br/>
		<div class="goods-view-information">
    	<ul class="goods-view-information-tab-group">
          <li class="goods-view-information-tab"><a href="#goods_detail">상품설명</a></li>
          <li class="goods-view-information-tab">상품이미지</li>
          <li class="goods-view-information-tab">상세정보</li>
          <li class="goods-view-information-tab"><a href="#review">고객후기</a></li>
          <li class="goods-view-information-tab"><a href="#qna">상품문의</li>
        </ul>
        </div>
		
		
		
				<div class="board">
			<div class="board_tit">
				<h2>Q n A</h2>
				<div class="sort-wrap clearfix">
					<ul>
						<li>상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로
							이동될 수 있습니다.</li>
						<li>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 1:1 문의에 남겨주세요.</li>
					</ul>
				</div>
			</div>
			<div class="board_table" id="qna">
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
  	 
  	function calPrice(num){
  		let dc_price = $(".dc_price").text();
  		$(".num").text(num * dc_price); 
  	}
  	
  	/* 구매 수량 변동 */
  	$(document).on('click', '.btn_down_on',function(){
  		let num = $(".inp").val();
  		if (num > 0) $(".inp").val(--num);
  		calPrice(num); 		
  		
	  });
    $(document).on('click', '.btn_down_up',function(){
  		let num = $(".inp").val();
  		if (num < 1000) $(".inp").val(++num);
  		calPrice(num);
	  });


  /* 페이지 로딩될 때 1 페이지 표시됨 */
  $(function(){
		var pageId = 1;
		callReview(pageId, "recently" ,"review");
		callReview(pageId, "recently" ,"qna");
		
		var log = getParameterByName("log")
		if(log == "x"){
			alert("로그인 후 이용해주세요")
		}else{
			
		}	
		
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
	  var id = this.id;
	  var RorQ = $('#'+id).parent().parent().attr('name');
	  var code = "<%=session.getAttribute("user_code") %>";
	  var arName =  $('#'+id).children().eq(2).text();
	  var user_id = "<%=session.getAttribute("user_id") %>";
	  
	  
	  /* 목차를 누른건지 체크 */
	  if(id != 'tr_first'){
	  /* 비밀글 체크 후 조회여부 결정  (0이면 비밀글)*/
	  if($('#'+id).attr("value") != "0" || code == "admin" || arName == user_id  ){
		$.ajax({
			type : "get",
			url : "view_count",
			data : {"review_id" : id},
			dataType : "json",
			async: false,
			success : function(data) {
				var content = id+"_content";
				if($('#'+content).css("display") == "none"){
					let howAsc = data.howAsc;
					 let pageId = data.page;
					 callReview(pageId, howAsc,RorQ);
				}else{
					$('#'+content).toggle();
				 }
			},
			error : function(){
			     alert("내용표시 오류발생");  
			}
		});
	  }
	  else
		  alert("비밀글 입니다.");
	  
	  } 
	  /* 목차면 아무것도 하지 않음 */
	  else {}
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
			   let howAsc = data.howAsc;
			   let pageId = data.page;
			  if(result == "fail")
				  alert("로그인 후 이용해 주세요.")
			  else if(result == "like"){
				  alert("추천해 주셔서 감사합니다.")
				  callReview(pageId, howAsc, "review");			  
			  }else{
				  alert("추천이 취소되었습니다.")
				  callReview(pageId, howAsc, "review");	  
			  }
		   },
		   error : function(){
			   alert("오류발생");  
		   }
	 }); 
	  
  });
  
  
  /* 페이지 변경 */
  $(document).on('click', '.pagebtn', function page(){
	  var pageId = this.id;
	  var howAsc = $("#howAsc").val();
	  var RorQ = $('.pagebtn').parent().attr('name');
	  callReview(pageId, howAsc, RorQ);
  });		
  
  /* 리뷰 정렬하기 */
  $(document).on('change', '#howAsc', function asc(){
	  var pageId = 1;
	  var howAsc = $("#howAsc").val();
	  callReview(pageId, howAsc, "review");
  });		
  

  /* 리뷰목록 불러오기 */
  function callReview(pageId, howAsc, RorQ) {
	 var goods_id = getParameterByName('goods_id');
	 
	   $.ajax({
		   type : "get",
		   url : RorQ,
		   data : {"goods_id" : goods_id,
			       "page" : pageId,
			       "howAsc" : howAsc,
			       "RorQ" : RorQ},
		   dataType : "json",
		   success : function(review) {
				var str = "<table name='"+RorQ+"'>";
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
					/* 공지목록 */
					str += "<tr class='view_content' id='" + nl.review_id + "_review' value='"+nl.review_isPrivate+"'>";
					str += "<td class='tb_no'>공  지</td>"
					str += "<td class='tb_tit'>" + nl.review_title + "</td>";
					str += "<td class='tb_name'>" + nl.user_id + "</td>";
					str += "<td class='tb_date'>" + nl.review_date + "</td>";
					str += "<td class='tb_help'>0</td>";
					str += "<td class='tb_count'>" + nl.review_viewCount + "</td>";
					str += "</tr>";
					str += "<tr>";
					if(nl.review_img != null){
						str += "<td class='tb_content'><div class='review_content' id='"
						     + nl.review_id +"_review_content'><br/>"
						     + "<img src='" + nl.review_img +"' style =' width: 300px; height: 200px;'><br/>"
						     + nl.review_content + "</div></td>";
					}else{
						str += "<td class='tb_content'><div class='review_content' id='"
						     + nl.review_id +"_review_content'><br/>"
						     + nl.review_content + "</div></td>";
						
					}
					str += "</tr>";
					
				});
					
				let list = review.datas;
				if(list != false){
				$(list).each(function(i, rd){
					/* 리뷰목록 */
					str += "<tr class='view_content' id='" + rd.review_id + "_review' value='"+rd.review_isPrivate+"'>";
					str += "<td class='tb_no'>" + rd.review_asc + "</td>";	
					str += "<td class='tb_tit'>" + rd.review_title + "</td>";
					str += "<td class='tb_name'>" + rd.user_id + "</td>";
					str += "<td class='tb_date'>" + rd.review_date + "</td>";
					str += "<td class='tb_help'>"+rd.likes_count+"</td>";
					str += "<td class='tb_count'>" + rd.review_viewCount + "</td>";
					str += "</tr>";
					/* 리뷰 내용 */
					str += "<tr>";
					/* 이미지 여부 체크 */
					if(rd.review_img != null){
						str += "<td class='tb_content' colspan='6'><div class='review_content' id='"
						     + rd.review_id +"_review_content'><br/>";
						str += "<img src='" + rd.review_img +"' style =' width: 300px; height: 200px;'><br/>";
						str += rd.review_content
						if(RorQ == "review"){
							str += "<br/><button class='like_btn' id='" + rd.review_id + "_likes'>좋아요</button></td>";
						}
					}else{
						str += "<td class='tb_content' colspan='6'><div class='review_content' id='"
						     + rd.review_id +"_review_content'>" + rd.review_content;
						if(RorQ == "review"){
							str += "<br/><button class='like_btn' id='" + rd.review_id + "_likes'>좋아요</button></td>";
						}   
					}
					
					str += "</div>" + "</tr>";
					
				});
				} else {
					str += "<tr><td>등록된 "+ RorQ +"가 없습니다.</td></tr>"
				}
					/* 리뷰 추가 */
					str += "<tr>";
					str += "<td><a href='insertReview?goods_id="+goods_id+"&RorQ="+RorQ+"'> "+ RorQ +" 쓰기 </a></td>";
					str += "</tr>";
				    str += "</table>";
				    
					/* 페이징 */
					str += "<div name='"+RorQ+"'>";
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
					str += "</div>";
				    
				    $('#'+RorQ).html(str);
				    $('.review_content').hide();
				    var content =review.review_id + "_review_content";
				    $('#'+content).toggle();
		},
		   error : function(){
			   alert("오류발생 본문 불러오기");
			   
		   }
	   });
	
	}; 

  </script>	

</body>
</html>