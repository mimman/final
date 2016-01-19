<%@ page contentType="text/html; charset=utf-8"%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>MIRACLE AIR &gt; 대메뉴 &gt; 중메뉴 &gt; 소메뉴</title>
<jsp:include page="/inc/header2.jsp" flush="true" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script>
$(document).ready(function () {
	$.datepicker.regional['ko'] = {
		closeText: '닫기',
		prevText: '이전달',
		nextText: '다음달',
		currentText: '오늘',
		monthNames: ['1월(JAN)','2월(FEB)','3월(MAR)','4월(APR)','5월(MAY)','6월(JUN)',
		'7월(JUL)','8월(AUG)','9월(SEP)','10월(OCT)','11월(NOV)','12월(DEC)'],
		monthNamesShort: ['1월','2월','3월','4월','5월','6월',
		'7월','8월','9월','10월','11월','12월'],
		dayNames: ['일','월','화','수','목','금','토'],
		dayNamesShort: ['일','월','화','수','목','금','토'],
		dayNamesMin: ['일','월','화','수','목','금','토'],
		weekHeader: 'Wk',
		dateFormat: 'yy-mm-dd',
		firstDay: 0,
		isRTL: false,
		showMonthAfterYear: true,
		yearSuffix: '',
		changeMonth: true,
		changeYear: true,
		yearRange: 'c-99:c+99',
	};
	$.datepicker.setDefaults($.datepicker.regional['ko']);
	
	$('#exDate').datepicker();
	
	$('#startDate').datepicker();
	$('#startDate').datepicker("option", "maxDate", $("#endDate").val());
	$('#startDate').datepicker("option", "onClose", function ( selectedDate ) {
		$("#endDate").datepicker( "option", "minDate", selectedDate );
	});

	$('#endDate').datepicker();
	$('#endDate').datepicker("option", "minDate", $("#startDate").val());
	$('#endDate').datepicker("option", "onClose", function ( selectedDate ) {
		$("#startDate").datepicker( "option", "maxDate", selectedDate );
	});
});
</script>
</head>
<body id="sub">
<div class="wrapG_all">
   <div class="wrapG">
   <!-- gnb -->

   <!-- //gnb -->

      <hr />

   <!-- containerG_w -->
   <div id="containerG_w" class="sub01">      
      <h2 class="blind">본문 영역</h2>

      <div class="tab_w clearfix v2">
         <ul>
            <li class="current"><a href="addReser.action">편도</a></li>
            <li class=""><a href="addReserShuttle.action">왕복</a></li>
            <li class=""><a href="addReserMulti.action">다구간</a></li>
         </ul>
      </div>

         <!-- 본문영역 -->
         <div id="contentG">
         
            <!-- 내용 -->
<form action="insertReserve.action" method="post" >
         <div class="joininfo">
            
            <h3>항공예매 추가</h3>
            
            <ul class="mt_50">
            
             <li>
                  <label for="aircraftCode">항공기 코드</label>
                  <input  type="text"  id="aircraftCode" name="aircraftCode" placeholder="항공기 코드" />
               </li>
               <li>
                  <label for="reserveCode">국내/국제선</label>
                  <select id="reserveCode" name="reserveCode">
                  	<option value="국내">국내</option>
                  	<option value="국제">국제</option>
                  </select>
               </li>
                 <li>
                  <label for="reserveLine">예약라인</label>
                  <select id="reserveLine" name="reserveLine">
                     <option value="편도">편도</option>
                     <option value="왕복">왕복</option>
                     <option value="다구간">다구간</option>
                  </select>
               </li>
               <li>                 
                  <label for="startCity">출발도시</label>
                  <select id="startCity" name="startCity" placeholder="출발도시">
                  	<option value="서울">서울</option>
                  	<option value="부산">부산</option>
                  	<option value="제주">제주</option>
                  	<option value="광주">광주</option>
                  	<option value="군산">군산</option>
                  	<option value="대구">대구</option>
                  	<option value="인천">인천</option>
                  	<option value="여수">여수</option>
                  	<option value="울산">울산</option>
                  	<option value="원주">원주</option>
                  	<option value="진주">진주</option>
                  	<option value="청주">청주</option>
                  	 <option value="일본">일본</option>
                           <option value="중국">중국</option>
                           <option value="미국">미국</option>
                           <option value="독일">독일</option>
                           <option value="터키">터키</option>
                           <option value="아프리카">아프리카</option>
                           <option value="프랑스">프랑스</option>
                           <option value="러시아">러시아</option>
                           <option value="인도">인도</option>
                  </select>               
               </li>
              <li>
                  <label for="endCity">도착도시</label>
                  <select id="endCity" name="endCity" placeholder="도착국가">
             	<option value="서울">서울</option>
                  	<option value="부산">부산</option>
                  	<option value="제주">제주</option>
                  	<option value="광주">광주</option>
                  	<option value="군산">군산</option>
                  	<option value="대구">대구</option>
                  	<option value="인천">인천</option>
                  	<option value="여수">여수</option>
                  	<option value="울산">울산</option>
                  	<option value="원주">원주</option>
                  	<option value="진주">진주</option>
                  	<option value="청주">청주</option>
                  	 <option value="일본">일본</option>
                           <option value="중국">중국</option>
                           <option value="미국">미국</option>
                           <option value="독일">독일</option>
                           <option value="터키">터키</option>
                           <option value="아프리카">아프리카</option>
                           <option value="프랑스">프랑스</option>
                           <option value="러시아">러시아</option>
                           <option value="인도">인도</option>
                  </select>
               </li>
               <li>
                  <label for="startDate">출발일</label>
                  <input  type="text"  id="startDate" name="startDate" placeholder="출발일" />
               </li>
                <li>
                  <label for="endDate">도착일</label>
                  <input  type="text"  id="endDate" name="endDate" placeholder="도착일" />
               </li>
                <li>
                  <label for="startTime">출발시각</label>
                  <input  type="text"  id="startTime" name="startTime" placeholder="출발시각" />
               </li>
               <li>
                  <label for="endTime">도착시각</label>
                  <input  type="text"  id="endTime" name="endTime" placeholder="도착시각" />
               </li>
               
               <li>
                  <label for="exDate">유효기간</label>
                  <input  type="text" id="exDate" name="exDate" placeholder="유효기간" />
               </li>
               <li>
                  <label for="seat">좌석</label>
                  <input type="text" id="seat" name="seat" placeholder="좌석" />
               </li>
               <li>
                  <label for="num">총 인원</label>
                  <input type="text" id="num" name="num" placeholder="인원" />
               </li>
               <li>
                  <label for="airLine">항공사</label>
                  <input type="text" id="airLine" name="airLine" placeholder="항공사" />
               </li>
               <li>
                  <label for="adultTax">성인요금</label>
                  <input type="text" id="adultTax" name="adultTax" placeholder="성인요금" />
               </li>
               <li>
                  <label for="childTax">소아요금</label>
                  <input type="text" id="childTax" name="childTax" placeholder="소아요금" />
               </li>
               <li>
                  <label for="toddleTax">유아요금</label>
                  <input type="text" id="toddleTax" name="toddleTax" placeholder="유아요금" />
               </li>
              
            </ul>
            
            <div class="ta_c">
            	<input type="submit" value="확인"  class="btn_m mt_20" />
      		</div>
      
         </div>
         </form>

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