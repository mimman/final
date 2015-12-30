<%@ page contentType="text/html; charset=utf-8"%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>항공권예매 &gt; 국내선항공 &gt; 항공편 조회</title>
<jsp:include page="/inc/header2.jsp" flush="true" />
<!-- datepicker -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script>
$(function() {
     $( "#datepicker" ).datepicker();
     $( "#datepicker2" ).datepicker();
});

$(document).ready(function(){
    $('.count_range input[count_range]').click(function(e){
        e.preventDefault();
        var type = $(this).attr('count_range');
        var $count = $(this).parent().children('input.count');
        var count_val = $count.val(); // min 1
        if(type=='m'){
            if(count_val<1){
                return;
            }
            $count.val(parseInt(count_val)-1);
        }else if(type=='p'){
            $count.val(parseInt(count_val)+1);
        }
    });
});
</script>
</head>
<body id="sub">

<div class="wrapG_all">
   <div class="wrapG">
   <!-- gnb -->
   <jsp:include page="/inc/gnb.jsp" flush="true" />
   <!-- //gnb -->

   <hr />

   <!-- containerG_w -->
   <div id="containerG_w" class="sub01">
      <h2 class="blind">본문 영역</h2>

      <div class="sub_tit_w blind">
         <p>항공권 예매</p>
         <span class="mt_16">국내선 항공권</span>
      </div>
      <!-- //contentG_title -->

      <h3 class="blind">국내선 항공권</h3>


         <!-- 본문영역 -->
         <div id="contentG">
            <!-- 내용 -->

            <div class="tab_w clearfix">
               <ul>
                  <li class="tab1 current"><a href="domestic.action">국내선 항공권</a></li>
                  <li class="tab2"><a href="inter.action">국제선 항공권</a></li>
               </ul>
            </div>
            <!-- //tab_w -->
            
            <div class="con_box">
               
               <ul class="radio_w clearfix">
                  <li><input type="radio" name="way" id="oneWay" value="" checked="checked" /><label for="oneWay">편도</label></li>
                  <li><input type="radio" name="way" id="roundTrip" value="" /><label for="roundTrip">왕복</label></li>
                  <li><input type="radio" name="way" id="manyWay" value="" /><label for="manyWay">다구간여정</label></li>
               </ul>
               <!-- //radio_w -->
               
               <div class="top_con clearfix mt_25">
                  <div class="fl city_w">
                     <ul>
                        <li><label for="">출발도시</label><input type="text" name="" id="" /><a class="compass">출발도시 선택</a></li>
                        <li><label for="">도착도시</label><input type="text" name="" id="" /><a class="compass">도착도시 선택</a></li>
                     </ul>
                  </div>
                  <!-- //city_w -->
                  
                  <div class="fl flight_w">
                     <ul class="flight_list out clearfix">
                        <li><a href="">인천</a></li>
                        <li><a href="">김포</a></li>
                        <li><a href="">부산</a></li>
                        <li><a href="">제주</a></li>
                        <li><a href="">광주</a></li>
                        <li><a href="">대구</a></li>
                        <li><a href="">울산</a></li>
                        <li><a href="">청주</a></li>
                        <li class="end"><a href="">포항</a></li>
                     </ul>
                     
                     <ul class="flight_list out clearfix" style="display:none;">
                        <li><a href="">도쿄(나리타)</a></li>
                        <li><a href="">도쿄(하네다)</a></li>
                        <li><a href="">오사카</a></li>
                        <li><a href="">삿포로</a></li>
                        <li><a href="">나고야</a></li>
                        <li><a href="">후쿠오카</a></li>
                        <li><a href="">방콕</a></li>
                        <li class="end"><a href="">푸켓</a></li>
                        <li><a href="">싱가포르</a></li>
                        <li><a href="">마닐라</a></li>
                        <li><a href="">토론토</a></li>
                        <li><a href="">뉴욕(JFK)</a></li>
                        <li><a href="">LA</a></li>
                        <li><a href="">런던</a></li>
                        <li><a href="">파리</a></li>
                        <li><a href="">상해(푸동)</a></li>
                        <li class="end"><a href="">상해(홍교)</a></li>
                        <li><a href="">북경</a></li>
                        <li><a href="">홍콩</a></li>
                        <li><a href="">하노이</a></li>
                        <li><a href="">호치민</a></li>
                        <li class="end"><a href="">시드니</a></li>
                     </ul>
                  </div>
                  <!-- //flight_w -->
                  
               </div>
               
               <div class="bot_con clearfix mt_25">
                  <div class="fl">
                     <h4>출발일</h4>
                     <div id="datepicker" class="ll-skin-santiago mt_10"></div>
                  </div>
                  
                  <div class="fl">
                     <h4>귀국일</h4>
                     <div id="datepicker2" class="ll-skin-santiago mt_10"></div>
                  </div>
                  
                  
                  <div class="fl clearfix">
                  
                     <div class="fl ml_75">
                        <h4>좌석선택</h4>
                        <ul class="radio_w2 mt_10">
                           <li><input type="radio" name="seat" id="general" value="" checked="checked" /><label for="general">일반석</label></li>
                           <li><input type="radio" name="seat" id="business" value="" /><label for="business">비즈니스석</label></li>
                           <li><input type="radio" name="seat" id="firstclass" value="" /><label for="firstclass">일등석</label></li>
                        </ul>
                     </div>
                     
                     <div class="fl">
                        <h4>예약인원</h4>
                        <ul class="radio_w2 mt_10">
                           <li class="count_range">
                              <p>성인</p>
                              <input value="-" type="button" count_range="m">
                              <input class="count" value="1" readonly="" name="">
                              <input value="+" type="button" count_range="p">
                           </li>
                           <li class="count_range">
                              <p>소아</p>
                              <input value="-" type="button" count_range="m">
                              <input class="count" value="0" readonly="" name="">
                              <input value="+" type="button" count_range="p">
                           </li>
                           <li class="count_range">
                              <p>유아</p>
                              <input value="-" type="button" count_range="m">
                              <input class="count" value="0" readonly="" name="">
                              <input value="+" type="button" count_range="p">
                           </li>
                        </ul>
                     </div>
                     
                  </div>
                  <!-- //clearfix -->
                  
                  <div class="fl ta_c mt_20">
                     <input type="submit" class="btn_sch clearfix" value="항공편 조회" />
                  </div>
                  
               </div>
               <!-- //clearfix -->
               
            </div>
            <!-- //con_box -->
            
            
            <div class="tbl_sch_box mt_30">
               <table cellspacing="0" border="1" summary="도시,항공사,출발기간,총요금,유효기간,예상TAX,예약하기 정보 전달" width="100%" cellpadding="0" class="tbl_sch">
               <caption>항공편 글목록</caption>
               <colgroup>
               <col width="15%">
               <col width="13%">
               <col width="*">
               <col width="15%">
               <col width="15%">
               <col width="13%">
               <col width="13%">
               </colgroup>
               <thead>
               <tr>
               <th scope="col" class="first">도시</th>
               <th scope="col">항공사</th>
               <th scope="col">출발기간</th>
               <th scope="col">총요금</th>
               <th scope="col">유효기간</th>
               <th scope="col">예상TAX</th>
               <th scope="col" class="end">예약하기</th>
               </tr>
               </thead>
               <tbody>
               
               <tr>
               <td class="first">타이페이(타오위안)</td>
               <td>제주항공</td>
               <td>2015/12/23~2016/04/30</td>
               <td>141,000원</td>
               <td>매일출발</td>
               <td class="pd_10"><a href="" class="btn_tax">TAX</a></td>
               <td class="pd_10 end"><a href="" class="btn_reser">예약</a></td>
               </tr>
               
               <tr>
               <td class="first">마카오</td>
               <td>중국동방항공</td>
               <td>2015/12/23~2016/03/31</td>
               <td>315,000원</td>
               <td>매일출발</td>
               <td class="pd_10"><a href="" class="btn_tax">TAX</a></td>
               <td class="pd_10 end"><a href="" class="btn_reser">예약</a></td>
               </tr>
               
               <tr>
               <td class="first">타이페이(타오위안)</td>
               <td>중국동방항공</td>
               <td>2015/12/23~2016/03/31</td>
               <td>308,300원</td>
               <td>매일출발</td>
               <td class="pd_10"><a href="" class="btn_tax">TAX</a></td>
               <td class="pd_10 end"><a href="" class="btn_reser">예약</a></td>
               </tr>
               
               </tbody>
               </table>
            </div>
            <!-- //tbl_sch -->
      


            <!-- //내용 -->
         </div>
         <!-- //contentG -->

         <hr />

   </div>
   <!-- //containerG_w -->

   </div>
   <!-- //wrapG -->
   </div>
   <!-- //wrapG_all -->

   <hr />

   <jsp:include page="/inc/footer.jsp" flush="true" />
</body>
</html>