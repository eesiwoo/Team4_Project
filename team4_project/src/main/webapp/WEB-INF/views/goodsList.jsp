<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/top.css">
<link rel="stylesheet" href="resources/css/goodsList.css">
</head>
<body>
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
        <li id="last">
          <a href="#" aria-label="Benefits of the week">금주의 혜택</a>
        </li>
      </ul>
      <div class="tools">
        <div id="search" class="search">
          <form>
            <input tpye="text" />
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
      <div id="content">
        <div class="page_article">
          <!-- <div id="menu">신상품</div> -->
          <div id="goodsList">
            <div class="list_goods">
              <div class="inner_listgoods">
                <ul class="list">
                  <li>
                    <div class="item">
                      <div class="thumb">
                        <a
                          class="img"
                          style="
                            background-image: url('https://img-cf.kurly.com/shop/data/goods/1611301749352l0.jpg');
                          "
                          ><!---->
                          <img
                            src="https://img-cf.kurly.com/shop/data/goods/1611301749352l0.jpg"
                            alt="건강한 재료로 완성한 고소함"
                            onerror="this.src='https://res.kurly.com/mobile/img/1808/img_none_x2.png'"
                            width="308"
                            height="396"
                        /></a>
                      </div>
                      <div class="info">
                        <span class="name">
                          [모던구루] 클래식 그래놀라 4종
                        </span>
                        <span class="cost">
                          <span class="price">9,600원</span>
                        </span>
                        <span class="desc">건강한 재료로 완성한 고소함</span>
                        <span class="tag"></span>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="item">
                      <div class="thumb">
                        <a
                          class="img"
                          style="
                            background-image: url('https://img-cf.kurly.com/shop/data/goods/1611301749352l0.jpg');
                          "
                          ><!---->
                          <img
                            src="https://img-cf.kurly.com/shop/data/goods/1611301749352l0.jpg"
                            alt="건강한 재료로 완성한 고소함"
                            onerror="this.src='https://res.kurly.com/mobile/img/1808/img_none_x2.png'"
                            width="308"
                            height="396"
                        /></a>
                      </div>
                      <div class="info">
                        <span class="name">
                          [모던구루] 클래식 그래놀라 4종
                        </span>
                        <span class="cost">
                          <span class="price">9,600원</span>
                        </span>
                        <span class="desc">건강한 재료로 완성한 고소함</span>
                        <span class="tag"></span>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="item">
                      <div class="thumb">
                        <a
                          class="img"
                          style="
                            background-image: url('https://img-cf.kurly.com/shop/data/goods/1611301749352l0.jpg');
                          "
                          ><!---->
                          <img
                            src="https://img-cf.kurly.com/shop/data/goods/1611301749352l0.jpg"
                            alt="건강한 재료로 완성한 고소함"
                            onerror="this.src='https://res.kurly.com/mobile/img/1808/img_none_x2.png'"
                            width="308"
                            height="396"
                        /></a>
                      </div>
                      <div class="info">
                        <span class="name">
                          [모던구루] 클래식 그래놀라 4종
                        </span>
                        <span class="cost">
                          <span class="price">9,600원</span>
                        </span>
                        <span class="desc">건강한 재료로 완성한 고소함</span>
                        <span class="tag"></span>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="item">
                      <div class="thumb">
                        <a
                          class="img"
                          style="
                            background-image: url('https://img-cf.kurly.com/shop/data/goods/1611301749352l0.jpg');
                          "
                          ><!---->
                          <img
                            src="https://img-cf.kurly.com/shop/data/goods/1611301749352l0.jpg"
                            alt="건강한 재료로 완성한 고소함"
                            onerror="this.src='https://res.kurly.com/mobile/img/1808/img_none_x2.png'"
                            width="308"
                            height="396"
                        /></a>
                      </div>
                      <div class="info">
                        <span class="name">
                          [모던구루] 클래식 그래놀라 4종
                        </span>
                        <span class="cost">
                          <span class="price">9,600원</span>
                        </span>
                        <span class="desc">건강한 재료로 완성한 고소함</span>
                        <span class="tag"></span>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="item">
                      <div class="thumb">
                        <a
                          class="img"
                          style="
                            background-image: url('https://img-cf.kurly.com/shop/data/goods/1611301749352l0.jpg');
                          "
                          ><!---->
                          <img
                            src="https://img-cf.kurly.com/shop/data/goods/1611301749352l0.jpg"
                            alt="건강한 재료로 완성한 고소함"
                            onerror="this.src='https://res.kurly.com/mobile/img/1808/img_none_x2.png'"
                            width="308"
                            height="396"
                        /></a>
                      </div>
                      <div class="info">
                        <span class="name">
                          [모던구루] 클래식 그래놀라 4종
                        </span>
                        <span class="cost">
                          <span class="price">9,600원</span>
                        </span>
                        <span class="desc">건강한 재료로 완성한 고소함</span>
                        <span class="tag"></span>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="item">
                      <div class="thumb">
                        <a
                          class="img"
                          style="
                            background-image: url('https://img-cf.kurly.com/shop/data/goods/1611301749352l0.jpg');
                          "
                          ><!---->
                          <img
                            src="https://img-cf.kurly.com/shop/data/goods/1611301749352l0.jpg"
                            alt="건강한 재료로 완성한 고소함"
                            onerror="this.src='https://res.kurly.com/mobile/img/1808/img_none_x2.png'"
                            width="308"
                            height="396"
                        /></a>
                      </div>
                      <div class="info">
                        <span class="name">
                          [모던구루] 클래식 그래놀라 4종
                        </span>
                        <span class="cost">
                          <span class="price">9,600원</span>
                        </span>
                        <span class="desc">건강한 재료로 완성한 고소함</span>
                        <span class="tag"></span>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="item">
                      <div class="thumb">
                        <a
                          class="img"
                          style="
                            background-image: url('https://img-cf.kurly.com/shop/data/goods/1611301749352l0.jpg');
                          "
                          ><!---->
                          <img
                            src="https://img-cf.kurly.com/shop/data/goods/1611301749352l0.jpg"
                            alt="건강한 재료로 완성한 고소함"
                            onerror="this.src='https://res.kurly.com/mobile/img/1808/img_none_x2.png'"
                            width="308"
                            height="396"
                        /></a>
                      </div>
                      <div class="info">
                        <span class="name">
                          [모던구루] 클래식 그래놀라 4종
                        </span>
                        <span class="cost">
                          <span class="price">9,600원</span>
                        </span>
                        <span class="desc">건강한 재료로 완성한 고소함</span>
                        <span class="tag"></span>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="item">
                      <div class="thumb">
                        <a
                          class="img"
                          style="
                            background-image: url('https://img-cf.kurly.com/shop/data/goods/1611301749352l0.jpg');
                          "
                          ><!---->
                          <img
                            src="https://img-cf.kurly.com/shop/data/goods/1611301749352l0.jpg"
                            alt="건강한 재료로 완성한 고소함"
                            onerror="this.src='https://res.kurly.com/mobile/img/1808/img_none_x2.png'"
                            width="308"
                            height="396"
                        /></a>
                      </div>
                      <div class="info">
                        <span class="name">
                          [모던구루] 클래식 그래놀라 4종
                        </span>
                        <span class="cost">
                          <span class="price">9,600원</span>
                        </span>
                        <span class="desc">건강한 재료로 완성한 고소함</span>
                        <span class="tag"></span>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="item">
                      <div class="thumb">
                        <a
                          class="img"
                          style="
                            background-image: url('https://img-cf.kurly.com/shop/data/goods/1611301749352l0.jpg');
                          "
                          ><!---->
                          <img
                            src="https://img-cf.kurly.com/shop/data/goods/1611301749352l0.jpg"
                            alt="건강한 재료로 완성한 고소함"
                            onerror="this.src='https://res.kurly.com/mobile/img/1808/img_none_x2.png'"
                            width="308"
                            height="396"
                        /></a>
                      </div>
                      <div class="info">
                        <span class="name">
                          [모던구루] 클래식 그래놀라 4종
                        </span>
                        <span class="cost">
                          <span class="price">9,600원</span>
                        </span>
                        <span class="desc">건강한 재료로 완성한 고소함</span>
                        <span class="tag"></span>
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
<!-- 테스트 -->
<c:forEach var="i" items="${list }">
	${i.goods_id}
	${i.goods_name}
	${i.category_id}
</c:forEach>
	
<!-- 
	productList에서 구현해야할 기본 내용  
	- 이미지는 가로 3줄
	- 정렬기능(신상품순, 높은 가격순, 낮은 가격순)
	- 1~3 페이지기능

	추가내용 
	- 이미지우측 하단의 장바구니 기능 
	- 이미지를 마우스 갖다대면 이미지 바뀌는 기능. 


-->


 
이미지<br>
제품 이름<br>
가격
 
</body>
</html>