var checkFirst = loopSend = false;
var lastKeyword = "";

// 1초 텀 두기 
function sijak() {
    if (checkFirst == false) {
    	//1초뒤 sendKeyword() 수행
        setTimeout("sendKeyword()", 500);
        loopSend = true;
    }
}

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
            	success : function(dbdata){
            		process(dbdata)
            	}
            })



        }
    }
}

//Ajax의 결과를 받고 처리하는 공간이다.
//Ajax에게 받은 Data(이름)에 링크를 건 뒤 Output-Suggest에 보여지는 형식이다.
function process(dbdata) {
    var data = dbdata
    var result = data.split("|");
    var tot = result[0];
    if (tot > 0) {
        var datas = result[1].split(",");
        var imsi = "";
        //각각의 이름에 링크 걸기 각각의 이름은 func(자기이름)이 들어가 있다.
        for (var i = 0; i < datas.length; i++) {
            imsi += "<a href=\"javascript:func('" + datas[i] + "')\">" + datas[i] + "</a><br>";
        }
        //Output-Suggest에 결과 보여주기
        var listView = $("#suggest").text(imsi);
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