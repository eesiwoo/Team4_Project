<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/top.css">
<!-- <script src="resources/js/suggest.js"></script> -->
</head>
<body>
<%
String keyword = request.getParameter("keyword");
%>

	<header>
		<div class="list_menu">
			<div class="menu menu_join">
				<a href="signup" class="link_menu"
					aria-label="Go to registeration page"> 회원가입 </a>
			</div>
			<%
				if (session.getAttribute("user_id") != null) {
					out.print("<div class='menu'>");
					out.print("<a href='logout' class='link_menu center' aria-label='Go to login page'> 로그아웃 </a>");
					out.print("</div>");
					out.print("<div class='menu'>");
					out.print("<a href='mypage' class='link_menu center' aria-label='Go to login page'> 마이페이지 </a>");
					out.print("</div>");
					if (((String) session.getAttribute("user_code")).equals("admin")) {
						out.print("<div class='menu'>");
						out.print("<a href='admin' class='link_menu' aria-label='Go to service center'> 관리자 </a></div></div>");
						out.print("</div>");
					}
				} else {
					out.print("<div class='menu'>");
					out.print("<a href='login' class='link_menu center' aria-label='Go to login page'> 로그인 </a>");
					out.print("</div>");
				}
			%>
			<div class="menu">
				<a class="link_menu" aria-label="Go to service center ">고객센터</a>
			</div>
		</div>
		<div class="bottom">
			<a href="index.jsp"><img src="resources/images/kurly.jpg"
				alt="logo" /></a>
		</div>
	</header>
	<nav>
		<div class="dropdown">
			<button class="dropbtn">전체 카테고리</button>
			<div class="dropdown-content">
				<a href="goodsListSpec?num=1">채소</a> <a href="goodsListSpec?num=2">과일*견과*쌀</a>
				<a href="goodsListSpec?num=3">수산*해산*건어물</a> <a
					href="goodsListSpec?num=4">정육*계란</a><a href="goodsListSpec?num=5">샐러드*간편식</a><a
					href="goodsListSpec?num=6">면*양념*오일</a><a href="goodsListSpec?num=7">간식*과자*떡</a>
				<a href="goodsListSpec?num=8">베이커리*치즈*델리</a><a
					href="goodsListSpec?num=9">건강식품</a><a href="goodsListSpec?num=10">주방용품</a>
			</div>
		</div>
		<ul class="list">
			<li><a href="goodsList" aria-label="New products">신상품</a></li>
			<li><a href="goodsList" aria-label="Best products">베스트</a></li>
			<li><a href="goodsList" aria-label="Wise Consumption">알뜰쇼핑</a></li>
			<!-- <li id="last"><a href="#" aria-label="Benefits of the week">금주의 혜택</a></li> -->
		</ul>
		<div class="tools">
			<div id="search" class="search">
				<form name="frm">
					<input type="text" name="keyword" id="keyword" />
					<div id="suggest" style="display: position:absolute; lefr:100px; top:30px;"></div>
					Selected Name: <input type="text" name="sel" size="10" readonly="readonly">
				</form>
			</div>
			<div>
				<img src="resources/images/gps.png" alt="package GPS" />
			</div>
			<div class="cart">
				<a href="cartGoods" class="cart" aria-label="Go to cart"> <img
					src="resources/images/cart.png" alt="장바구니" /></a>
			</div>
		</div>
	</nav>


<script type="text/javascript">
var checkFirst = loopSend = false;
var lastKeyword = "";

// 1초 텀 두기 
$(document).on("change", "keyword", function(){
	alert(checkFirst)
	if (checkFirst == false) {
    	//1초뒤 sendKeyword() 수행
		alert("if")
        setTimeout("sendKeyword()", 500);
        loopSend = true;
    }
})

//Ajax
function sendKeyword() {
    if (loopSend == false)
        return;
    else {
        var keyWord = document.frm.keyword.value;
        //키워드가 hide 함수를 불러 검색어 창 숨기기
        if (keyWord === "") {
            lastKeyword = "";
            hide("suggest");
            //검색어가 있는 경우 값 요청
        } else if (keyWord !== lastKeyword) {
            lastKeyword = keyWord;

            var keyword = "keyword=" + keyWord;
            $.ajax({
            	type : "post",
            	url : "searchGoods",
            	dataType:"json",
            	data : {"keyword" : keyword},
            	success : function(data){
            		process(data)
            	}
            })



        }
    }
}

//Ajax의 결과를 받고 처리하는 공간이다.
//Ajax에게 받은 Data(이름)에 링크를 건 뒤 Output-Suggest에 보여지는 형식이다.
function process(data) {
    var data = data;
	if (data.length > 0) {
        var tmp = "";
        //각각의 이름에 링크 걸기 각각의 이름은 func(자기이름)이 들어가 있다.
        $(data).each(function(idx,dto){
        	tmp += "<a href=\"javascript:func('" + dto + "')\">" + dto + "</a><br>";
        })
        //Output-Suggest에 결과 보여주기
        var listView = $("#suggest").text(tmp);
    }

}

//이름 클릭시 Output-Selected 에 값 넣기. Suggest창 숨기기
function func(reData) {
    frm.sel.value = reData;
    loopSend = checkFirst = false;
    lastKeyword = "";
    hide("suggest");

    frm.keyword.value="";

}

//Suggest 창 숨기는 함수
function hide(ele) {
    var e = document.getElementById(ele);
    if (e) e.style.display = "none";
}

//Suggest 창 보이게 속성 바꾸는 함수
function show(ele) {
    var e = document.getElementById(ele);
    if (e) e.style.display = "";
}
</script>
</body>
</html>