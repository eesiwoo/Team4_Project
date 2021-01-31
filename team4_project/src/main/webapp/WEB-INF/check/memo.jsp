<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>Insert title here</title>
   <style type="text/css">
      table{
         width: 800px;
      }
   
   </style>
   <script type="text/javascript">
      //체크박스의 모두 선택/해제 작업을 처리하는 함수
      function allcheck(){
         mycheck = document.myform.prd;
         allchkVal = document.myform.allchk.checked;
         for(i = 0; i < mycheck.length; i++){
            mycheck[i].checked = allchkVal;
         }
         calc(); //allcheck함수가 모두 실행된 후 calc()를 호출하겠다는 의미 - 함수에서 함수를 호출
      }
      //선택한 항목의 금액을 계산하는 함수
      //각각의 체크박스를 선택할 때, 모든체크박스 선택하는 체크박스를 선택할 때, 수량을 변경할 때
      function calc(){
         //prd체크박스를 가져오기
         mychklist = document.myform.prd;
         //모든 가격과 수량객체 가져오기
         countArr = document.myform.count;
         priceArr = document.myform.price;
         
         totalPrice = 0; //전체 금액의 합계를 저장할 변수
         price = 0; //체크가 설정된 상품의 가격을 계산해서 저장할 변수
         
         /* id명을 배열로 관리하며 작업하면 항목 추가되었을 때 소스를 변경해주어야만 하므로 class명으로 정의한 후
         <span>태그를 객체 배열로 관리 ==> DOM객체 방법
          */         
          prdPriceArr = document.getElementsByClassName("prdPrice");
   
         //화면에 출력된 전체 상품목록에서 체크된 상품의 가격과 수량을 곱해서 금액 구하고 totalPrice에 누적
         for(i = 0; i < mychklist.length; i++){
            price = 0;
            if(mychklist[i].checked){
               price = parseInt(countArr[i].value) * parseInt(priceArr[i].value);
            }else{
               document.myform.allchk.checked = false;
            }
            totalPrice = totalPrice + price;
            //각 상품의 가격이 출력될 수 있도록 <span>객체 배열에서 해당 상품의 가격객체를 꺼내서 가격을 설정하기
            prdPriceArr[i].innerHTML = price;
         }
         document.getElementById("totalprice").innerHTML = totalPrice;
      }
      
      
   </script>
   
</head>
<body>
   <form name="myform">
      <table border="1">
         <tr>
            <td><input type="checkbox" name="allchk" onclick="allcheck()"/>항목명</td>
            <td>상품정보</td>
            <td>수량</td>
            <td>판매가</td>
            <td>구매예정가</td>
         </tr>
         <tr>
            <td><input type="checkbox" name="prd" onclick="calc()"/>완도미역</td>
            <td><img src="../images/pro1.jpg"/></td>
            <td><input type="number" name="count" value="1" onchange="calc()"/></td>   
            <td><input type="text" name="price" value="6900"/><span>원</span></td>
            <td><span></span><span class="prdPrice">원</span></td>
         </tr>
         <tr>
            <td><input type="checkbox" name="prd" onclick="calc()"/>스카트 빨아쓰는 휴지</td>
            <td><img src="../images/pro2.jpg"/></td>
            <td><input type="number" name="count" value="1" onchange="calc()"/></td>
            <td><input type="text" name="price" value="7800"/><span>원</span></td>
            <td><span></span><span class="prdPrice">원</span></td>
         </tr>
         
         <tr>
            <td colspan="6" align="right"><span id="totalprice"></span><span>원</span></td>
         </tr>
      </table>
   </form>
</body>
</html>