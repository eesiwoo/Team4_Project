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