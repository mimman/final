<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    $( "#datepicker" ).datepicker({
	   dateFormat:'yy-mm-dd', //선택된 날짜 포맷(yyyy.mm.dd)
	   monthNamesShort: ['1월','2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	   monthNames: ['1월','2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	   dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],   
	   dayNamesShot: ['일', '월', '화', '수', '목', '금', '토'],
	   dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
	   firstDay: 1, //0: 일요일 부터 시작, 1:월요일 부터 시작
	   autoSize: true, //default: false, input 사이즈를 자동으로 리사이즈.
	   showAnim: "fold", //default: show
	   showWeek: false, //주차 보이기
	   weekHeader: "주차", //default: Wk, 주차 헤드 부분의 명칭 설정
	   changeMonth: true, //월 변경가능
	   changeYear: true, //년 변경가능
	   showMonthAfterYear: true, //년 뒤에 월 표시
	   yearRange: "1900:2016",
	   gotoCurrent: false //default: false, true일 경우에는 Today버튼 클릭 시 현재 일자로 이동하지 못함. false는 가능.
	   
	  });
    $( "#datepicker2" ).datepicker({
	   dateFormat:'yy-mm-dd', //선택된 날짜 포맷(yyyy.mm.dd)
	   monthNamesShort: ['1월','2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	   monthNames: ['1월','2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	   dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],   
	   dayNamesShot: ['일', '월', '화', '수', '목', '금', '토'],
	   dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
	   firstDay: 1, //0: 일요일 부터 시작, 1:월요일 부터 시작
	   autoSize: true, //default: false, input 사이즈를 자동으로 리사이즈.
	   showAnim: "fold", //default: show
	   showWeek: false, //주차 보이기
	   weekHeader: "주차", //default: Wk, 주차 헤드 부분의 명칭 설정
	   changeMonth: true, //월 변경가능
	   changeYear: true, //년 변경가능
	   showMonthAfterYear: true, //년 뒤에 월 표시
	   yearRange: "1900:2016",
	   gotoCurrent: false //default: false, true일 경우에는 Today버튼 클릭 시 현재 일자로 이동하지 못함. false는 가능.
	   
	  });
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
            <form method="post" action="reserSearch.action">
             	<input type="hidden" id="sDate" name="sDate">
            <div class="con_box">
               
               <ul class="radio_w clearfix">
                  <li><input type="radio" name="reserveLine" id="oneWay" value="편도" checked="checked" /><label for="oneWay">편도</label></li>
                  <li><input type="radio" name="reserveLine" id="roundTrip" value="왕복" /><label for="roundTrip">왕복</label></li>
                  <li><input type="radio" name="reserveLine" id="manyWay" value="다구간여정" /><label for="manyWay">다구간여정</label></li>
               </ul>
               <!-- //radio_w -->
               
               <div class="top_con clearfix mt_25">
                  <div class="fl city_w">
                     <ul>
                        <li><label for="">출발도시</label><input type="text" name="startCity" id="" /><a class="compass">출발도시 선택</a></li>
                        <li><label for="">도착도시</label><input type="text" name="endCity" id="" /><a class="compass">도착도시 선택</a></li>
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
                     <input type="text" name="startDate" >
                    
                     <div id="datepicker" class="ll-skin-santiago mt_10" name="startDate"></div>
                  </div>
                  
                  <div class="fl">
                     <h4>귀국일</h4>
                      <input type="text" name="endDate" >
                     <div id="datepicker2" class="ll-skin-santiago mt_10" name="endDate"></div>
                  </div>
                  
                  
                  <div class="fl clearfix">
                  
                     <div class="fl ml_75">
                        <h4>좌석선택</h4>
                        <ul class="radio_w2 mt_10">
                           <li><input type="radio" name="seat" id="seat" checked="checked" value="일반석" /><label for="general">일반석</label></li>
                           <li><input type="radio" name="seat" id="seat" value="비즈니스석" /><label for="business">비즈니스석</label></li>
                           <li><input type="radio" name="seat" id="seat" value="일등석" /><label for="firstclass">일등석</label></li>
                        </ul>
                     </div>
                     
                     <div class="fl">
                        <h4>예약인원</h4>
                        <ul class="radio_w2 mt_10">
                           <li class="count_range">
                              <p>성인</p>
                              <input value="-" type="button" count_range="m">
                              <input class="count" value="1" readonly="" name="adult">
                              <input value="+" type="button" count_range="p">
                           </li>
                           <li class="count_range">
                              <p>소아</p>
                              <input value="-" type="button" count_range="m">
                              <input class="count" value="0" readonly="" name="child">
                              <input value="+" type="button" count_range="p">
                           </li>
                           <li class="count_range">
                              <p>유아</p>
                              <input value="-" type="button" count_range="m">
                              <input class="count" value="0" readonly="" name="toddle">
                              <input value="+" type="button" count_range="p">
                           </li>
                        </ul>
                     </div>
                     
                  </div>
                  <!-- //clearfix -->
                  
                  <div class="fl ta_c mt_20">
                     <input type="submit" class="btn_sch clearfix" value="항공편 조회" onclick="getDate();" />
                  </div>
                  
               </div>
               <!-- //clearfix -->
               
            </div>
            <form>
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
               <th scope="col">항공사 </th>
               <th scope="col">출발기간</th>
               <th scope="col">총요금</th>
               <th scope="col">유효기간</th>
               <th scope="col">예상TAX</th>
               <th scope="col" class="end">예약하기</th>
               </tr>
               </thead>
               <tbody>
            	
               <c:forEach var="dto" items="${reserSearchList }">
               <tr>
               <td class="first">${dto.getEndCity()}</td>
               <td>${dto.getAirLine() }</td>
               <td>${dto.getStartDate()}~${dto.getEndDate() }</td>
               <td>${dto.getAdultTax() }</td>
               <td>${dto.getExDate() }</td>
               <td class="pd_10"><a href="" class="btn_tax">TAX</a></td>
               <td class="pd_10 end"><a href="" class="btn_reser">예약</a></td>
               </tr>
               </c:forEach>
              
               
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