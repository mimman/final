<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>항공권예매 &gt; 국내선항공 &gt; 항공편 조회</title>
<jsp:include page="/inc/header2.jsp" flush="true" />
<!-- datepicker -->

<link rel="stylesheet"
   href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script>
function blockFormRelese3(){
    var bl3 = document.getElementById("bl3");

    if(bl3.style.display=="none"){bl3.style.display="block"}  
}
function blockFormRelese12(){
    var bl1 = document.getElementById("bl1");
    var bl2 = document.getElementById("bl2");
    var bl3 = document.getElementById("bl3");
    if(bl1.style.display=="none"){bl1.style.display="block"}  
    if(bl2.style.display=="none"){bl2.style.display="block"}  
    if(bl3.style.display=="block"){bl3.style.display="none"}  
}
function blockFormRelese1(){
    var bl1 = document.getElementById("bl1");
    var bl2 = document.getElementById("bl2");
    var bl3 = document.getElementById("bl3");
    if(bl1.style.display=="none"){bl1.style.display="block"}  
    bl2.style.display="block"; 
    bl3.style.display="none";
}
function blockForm(){
    var bl1 = document.getElementById("bl1");
    var bl2 = document.getElementById("bl2");
    if(bl1.style.display=="block"){bl1.style.display="none"}  
    if(bl2.style.display=="block"){bl2.style.display="none"}  
}
function blockEndDate(){
   var bl = document.getElementById("bl")
   
   if(bl.style.display=="block"){bl.style.display="none"}
   
}

function blockShuttleEndDate(){
  
   var bl = document.getElementById("bl")
   if(bl.style.display=="none"){bl.style.display="block"}
}

function insertStartCity(city){
   
   document.getElementById("startCity").value= city;
}

function insertEndCity(city){
   
   document.getElementById("endCity").value= city;
}
function nullCheck(){
  
   var startCity = document.getElementById("startCity");
   var endCity = document.getElementById("endCity");
   var startDate = document.getElementById("startDate");
   var endDate = document.getElementById("endDate");
   var adult = document.getElementById("adult").value;
   var child = document.getElementById("child").value;
   var toddle = document.getElementById("toddle").value;
   var reserveLine = $(':radio[name="reserveLine"]:checked');
	if(reserveLine.val() == '왕복' || reserveLine.val() == '편도'){
		

     if(startCity == null ||startCity == undefined || startCity.value ==""){
         alert("출발지를  입력해주세요");
      }
      else if(startCity.value.length > 15){
         alert("15자 미만으로 입력해주세요");
         startCity.value = "";
         startCity.focus();
      }
      else if(endCity == null ||endCity == undefined || endCity.value ==""){
         alert("도착지를  입력해주세요");
      }
      else if(endCity.value.length > 15){
         alert("15자 미만으로 입력해주세요");
         end.value = "";
         end.focus();
      }
      else if(startDate == null ||startDate == undefined || startDate.value ==""){
         alert("출발일을  입력해주세요");
      }
      else if(startDate.value.length > 15){
         alert("15자 미만으로 입력해주세요");
         startDate.value = "";
         startDate.focus();
      }
      else if(reserveLine.val() == '왕복' && (endDate == null ||endDate == undefined || endDate.value =="")){

            alert("도착일을  입력해주세요");
      }
      else if(endDate.value.length > 15){
            alert("15자 미만으로 입력해주세요");
            endDate.value = "";
            endDate.focus();
         }
      else if(adult == 0 && child == 0 && toddle == 0 ){
         alert("예약 인원이 없습니다");
      }
      else{
         document.domestic.submit();
      }
	}
	 document.domestic.submit();
}
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
   
   $('#startDate1').datepicker();
   $('#startDate2').datepicker();
   $('#startDate3').datepicker();
   

  
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
                     <li class="tab1 "><a href="domestic.action">국내선
                           항공권</a></li>
                     <li class="tab2 current"><a href="inter.action">국제선 항공권</a></li>
                  </ul>
               </div>
               <!-- //tab_w -->
               <form method="post" action="reserSearch.action" name="domestic" id="domestic">
                  <input type="hidden" name="reserveCode" value="국제" >
                  <div class="con_box" >

                     <ul class="radio_w clearfix">
                        <li><input type="radio" name="reserveLine" id="oneWay"
                           value="편도" checked="checked" onclick="blockEndDate();blockFormRelese1();"/><label for="oneWay">편도</label></li>
                        <li><input type="radio" name="reserveLine" id="roundTrip"
                           value="왕복" onclick="blockShuttleEndDate();blockFormRelese12();"/><label for="roundTrip">왕복</label></li>
                        <li><input type="radio" name="reserveLine" id="manyWay"
                           value="다구간여정" onclick="blockForm();blockFormRelese3();" /><label for="manyWay">다구간여정</label></li>
                     </ul>
                     <!-- //radio_w -->

                     <div class="sch_air clear mt_25">
                        <div class="city_w fl clear" style="margin-right:0;">
                           <ul class="fl" id="bl1" style="display:block;" >
                        <li>
                           <label for="startCity">출발도시</label>
                           <select name="startCity" id="startCity">
                           <option value="" selected="selected"></option>
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
                  	<option value="도쿄(나리타)">도쿄(나리타)</option>
                     <option value="도쿄(하네다)">도쿄(하네다)</option>
                     <option value="오사카">오사카</option>
                     <option value="삿포로">삿포로</option>
                     <option value="나고야">나고야</option>
                     <option value="후쿠오카">후쿠오카</option>
                     <option value="방콕">방콕</option>
                     <option value="푸켓">푸켓</option>
                     <option value="싱가포르">싱가포르</option>
                     <option value="마닐라">마닐라</option>
                     <option value="토론토">토론토</option>
                     <option value="뉴욕(JFK)">뉴욕(JFK)</option>
                     <option value="LA">LA</option>
                     <option value="런던">런던</option>
                     <option value="파리">파리</option>
                     <option value="상해(푸동)">상해(푸동)</option>
                     <option value="상해(홍교)">상해(홍교)</option>
                     <option value="북경">북경</option>
                     <option value="홍콩">홍콩</option>
                     <option value="하노이">하노이</option>
                     <option value="호치민">호치민</option>
                     <option value="시드니">시드니</option>
                           </select>
                        </li>
                        <li>
                           <label for="endCity">도착도시</label>
                           <select name="endCity" id="endCity">
                           <option value="" selected="selected"></option>
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
                  	<option value="도쿄(나리타)">도쿄(나리타)</option>
                     <option value="도쿄(하네다)">도쿄(하네다)</option>
                     <option value="오사카">오사카</option>
                     <option value="삿포로">삿포로</option>
                     <option value="나고야">나고야</option>
                     <option value="후쿠오카">후쿠오카</option>
                     <option value="방콕">방콕</option>
                     <option value="푸켓">푸켓</option>
                     <option value="싱가포르">싱가포르</option>
                     <option value="마닐라">마닐라</option>
                     <option value="토론토">토론토</option>
                     <option value="뉴욕(JFK)">뉴욕(JFK)</option>
                     <option value="LA">LA</option>
                     <option value="런던">런던</option>
                     <option value="파리">파리</option>
                     <option value="상해(푸동)">상해(푸동)</option>
                     <option value="상해(홍교)">상해(홍교)</option>
                     <option value="북경">북경</option>
                     <option value="홍콩">홍콩</option>
                     <option value="하노이">하노이</option>
                     <option value="호치민">호치민</option>
                     <option value="시드니">시드니</option>
                           </select>
                        </li>
                     </ul>
                     
	                <ul id="bl2" class="fl" style="display:block">
					<li><label for="startDate" >출발일</label><input type="text" name="startDate" id="startDate" size="10"
					   maxlength="10" placeholder="yyyy-mm-dd" /></li>
					
					
					<li id="bl" style="display:none"><label for="endDate">귀국일</label><input type="text" name="endDate" id="endDate" size="10"
					      maxlength="10" placeholder="yyyy-mm-dd" /></li>
					  
					</ul>
                     
                     
                    </div>
                    <!-- //편도/왕복 -->

                        
              <div class="city_w fl many" id="bl3" style="display:none;">
              
                <ul class="clear">

              <li class="fl">
                 <label for="startCity">출발도시</label>
                 <select name="startCity1" id="startCity1">
                 <option value="" selected="selected"></option>
                 
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
                  	<option value="도쿄(나리타)">도쿄(나리타)</option>
                     <option value="도쿄(하네다)">도쿄(하네다)</option>
                     <option value="오사카">오사카</option>
                     <option value="삿포로">삿포로</option>
                     <option value="나고야">나고야</option>
                     <option value="후쿠오카">후쿠오카</option>
                     <option value="방콕">방콕</option>
                     <option value="푸켓">푸켓</option>
                     <option value="싱가포르">싱가포르</option>
                     <option value="마닐라">마닐라</option>
                     <option value="토론토">토론토</option>
                     <option value="뉴욕(JFK)">뉴욕(JFK)</option>
                     <option value="LA">LA</option>
                     <option value="런던">런던</option>
                     <option value="파리">파리</option>
                     <option value="상해(푸동)">상해(푸동)</option>
                     <option value="상해(홍교)">상해(홍교)</option>
                     <option value="북경">북경</option>
                     <option value="홍콩">홍콩</option>
                     <option value="하노이">하노이</option>
                     <option value="호치민">호치민</option>
                     <option value="시드니">시드니</option>
                           </select>
                        </li>
                        <li class="fl">
                           <label for="endCity1">도착도시</label>
                           <select name="endCity1" id="endCity1">
                           <option value="" selected="selected"></option>
                        
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
                  	<option value="도쿄(나리타)">도쿄(나리타)</option>
                     <option value="도쿄(하네다)">도쿄(하네다)</option>
                     <option value="오사카">오사카</option>
                     <option value="삿포로">삿포로</option>
                     <option value="나고야">나고야</option>
                     <option value="후쿠오카">후쿠오카</option>
                     <option value="방콕">방콕</option>
                     <option value="푸켓">푸켓</option>
                     <option value="싱가포르">싱가포르</option>
                     <option value="마닐라">마닐라</option>
                     <option value="토론토">토론토</option>
                     <option value="뉴욕(JFK)">뉴욕(JFK)</option>
                     <option value="LA">LA</option>
                     <option value="런던">런던</option>
                     <option value="파리">파리</option>
                     <option value="상해(푸동)">상해(푸동)</option>
                     <option value="상해(홍교)">상해(홍교)</option>
                     <option value="북경">북경</option>
                     <option value="홍콩">홍콩</option>
                     <option value="하노이">하노이</option>
                     <option value="호치민">호치민</option>
                     <option value="시드니">시드니</option>
                           </select>
                        </li>
                        
                  <li class="fl">
                     <label for="startDate" >탑승일</label>
                     <input type="text" name="startDate1" id="startDate1" size="10" maxlength="10" placeholder="yyyy-mm-dd" />
                  </li>
               </ul>
               <!-- //clear -->
                        
                          <ul class="clear">

                        <li class="fl">
                           <label for="startCity">출발도시</label>
                           <select name="startCity2" id="startCity2">
                           <option value="" selected="selected"></option>
                          
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
                  	<option value="도쿄(나리타)">도쿄(나리타)</option>
                     <option value="도쿄(하네다)">도쿄(하네다)</option>
                     <option value="오사카">오사카</option>
                     <option value="삿포로">삿포로</option>
                     <option value="나고야">나고야</option>
                     <option value="후쿠오카">후쿠오카</option>
                     <option value="방콕">방콕</option>
                     <option value="푸켓">푸켓</option>
                     <option value="싱가포르">싱가포르</option>
                     <option value="마닐라">마닐라</option>
                     <option value="토론토">토론토</option>
                     <option value="뉴욕(JFK)">뉴욕(JFK)</option>
                     <option value="LA">LA</option>
                     <option value="런던">런던</option>
                     <option value="파리">파리</option>
                     <option value="상해(푸동)">상해(푸동)</option>
                     <option value="상해(홍교)">상해(홍교)</option>
                     <option value="북경">북경</option>
                     <option value="홍콩">홍콩</option>
                     <option value="하노이">하노이</option>
                     <option value="호치민">호치민</option>
                     <option value="시드니">시드니</option>
                           </select>
                        </li>
                        <li class="fl">
                           <label for="endCity">도착도시</label>
                           <select name="endCity2" id="endCity2">
                           <option value="" selected="selected"></option>
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
                  	<option value="도쿄(나리타)">도쿄(나리타)</option>
                     <option value="도쿄(하네다)">도쿄(하네다)</option>
                     <option value="오사카">오사카</option>
                     <option value="삿포로">삿포로</option>
                     <option value="나고야">나고야</option>
                     <option value="후쿠오카">후쿠오카</option>
                     <option value="방콕">방콕</option>
                     <option value="푸켓">푸켓</option>
                     <option value="싱가포르">싱가포르</option>
                     <option value="마닐라">마닐라</option>
                     <option value="토론토">토론토</option>
                     <option value="뉴욕(JFK)">뉴욕(JFK)</option>
                     <option value="LA">LA</option>
                     <option value="런던">런던</option>
                     <option value="파리">파리</option>
                     <option value="상해(푸동)">상해(푸동)</option>
                     <option value="상해(홍교)">상해(홍교)</option>
                     <option value="북경">북경</option>
                     <option value="홍콩">홍콩</option>
                     <option value="하노이">하노이</option>
                     <option value="호치민">호치민</option>
                     <option value="시드니">시드니</option>
                           </select>
                        </li>
                        
                  <li class="fl">
                     <label for="startDate" >탑승일</label>
                     <input type="text" name="startDate2" id="startDate2" size="10" maxlength="10" placeholder="yyyy-mm-dd" />
                  </li>
               </ul>
               <!-- //clear -->
                        
                          <ul class="clear">

                        <li class="fl">
                           <label for="startCity">출발도시</label>
                           <select name="startCity3" id="startCity3">
                           <option value="" selected="selected"></option>
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
                  	<option value="도쿄(나리타)">도쿄(나리타)</option>
                     <option value="도쿄(하네다)">도쿄(하네다)</option>
                     <option value="오사카">오사카</option>
                     <option value="삿포로">삿포로</option>
                     <option value="나고야">나고야</option>
                     <option value="후쿠오카">후쿠오카</option>
                     <option value="방콕">방콕</option>
                     <option value="푸켓">푸켓</option>
                     <option value="싱가포르">싱가포르</option>
                     <option value="마닐라">마닐라</option>
                     <option value="토론토">토론토</option>
                     <option value="뉴욕(JFK)">뉴욕(JFK)</option>
                     <option value="LA">LA</option>
                     <option value="런던">런던</option>
                     <option value="파리">파리</option>
                     <option value="상해(푸동)">상해(푸동)</option>
                     <option value="상해(홍교)">상해(홍교)</option>
                     <option value="북경">북경</option>
                     <option value="홍콩">홍콩</option>
                     <option value="하노이">하노이</option>
                     <option value="호치민">호치민</option>
                     <option value="시드니">시드니</option>
                           </select>
                        </li>
                        <li class="fl">
                           <label for="endCity">도착도시</label>
                           <select name="endCity3" id="endCity3">
                           <option value="" selected="selected"></option>
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
                  	<option value="도쿄(나리타)">도쿄(나리타)</option>
                     <option value="도쿄(하네다)">도쿄(하네다)</option>
                     <option value="오사카">오사카</option>
                     <option value="삿포로">삿포로</option>
                     <option value="나고야">나고야</option>
                     <option value="후쿠오카">후쿠오카</option>
                     <option value="방콕">방콕</option>
                     <option value="푸켓">푸켓</option>
                     <option value="싱가포르">싱가포르</option>
                     <option value="마닐라">마닐라</option>
                     <option value="토론토">토론토</option>
                     <option value="뉴욕(JFK)">뉴욕(JFK)</option>
                     <option value="LA">LA</option>
                     <option value="런던">런던</option>
                     <option value="파리">파리</option>
                     <option value="상해(푸동)">상해(푸동)</option>
                     <option value="상해(홍교)">상해(홍교)</option>
                     <option value="북경">북경</option>
                     <option value="홍콩">홍콩</option>
                     <option value="하노이">하노이</option>
                     <option value="호치민">호치민</option>
                     <option value="시드니">시드니</option>
                           </select>
                        </li>
                        
                  <li class="fl">
                     <label for="startDate" >탑승일</label>
                     <input type="text" name="startDate3" id="startDate3" size="10" maxlength="10" placeholder="yyyy-mm-dd" />
                  </li>
               </ul>
               <!-- //clear -->
               
                   </div>
                   <!-- //city_w(다구간여정) -->

          
                        <div class="fl">
						<div class="clear">
                           <div class="fl">
                              <h4>좌석선택</h4>
                              <ul class="radio_w2 mt_10">
                                 <li><input type="radio" name="seat" id="general"
                                    checked="checked" value="일반석" /><label for="general">일반석</label></li>
                                 <li><input type="radio" name="seat" id="business"
                                    value="비즈니스석" /><label for="business">비즈니스석</label></li>
                                 <li><input type="radio" name="seat" id="firstclass"
                                    value="일등석" /><label for="firstclass">일등석</label></li>
                              </ul>
                           </div>

                           <div class="fl">
                              <h4>예약인원</h4>
                              <ul class="radio_w2 mt_10">
                                 <li class="count_range">
                                    <p>성인</p> <input value="-" type="button" count_range="m">
                                    <input class="count" value="1" readonly="" id="adult" name="adult">
                                    <input value="+" type="button" count_range="p">
                                 </li>
                                 <li class="count_range">
                                    <p>소아</p> <input value="-" type="button" count_range="m">
                                    <input class="count" value="0" readonly="" id="child" name="child">
                                    <input value="+" type="button" count_range="p">
                                 </li>
                                 <li class="count_range">
                                    <p>유아</p> <input value="-" type="button" count_range="m">
                                    <input class="count" value="0" readonly="" id="toddle" name="toddle">
                                    <input value="+" type="button" count_range="p">
                                 </li>
                              </ul>
                           </div>
                           

                        </div>
                        
                        </div>
                        <!-- //clear -->
                        

                     </div>
                     
                     <!-- //sch_air -->

                     <div class="ta_c mt_50">
                        <input type="button" class="btn_sch clearfix" value="항공편 조회"
                           onclick="nullCheck()" />
                     </div>

                 	</div>
                  </form>
                     <!-- //con_box -->


                     <div class="tbl_sch_box mt_30">
                        <table cellspacing="0" border="1"
                           summary="도시,항공사,출발기간,총요금,유효기간,예상TAX,예약하기 정보 전달" width="100%"
                           cellpadding="0" class="tbl_sch">
                           <caption>항공편 글목록</caption>
                           <colgroup>
                              <col width="15%">
                              <col width="13%">
                              <col width="*">
                              <col width="15%">
                              <c:if test="${userReserDto.getReserveLine() eq '왕복' }">
                              <col width="15%">
                              </c:if>
                              <col width="13%">
                              <col width="13%">
                           </colgroup>
                           <thead>
                              <tr>
                                 <th scope="col" class="first">도시</th>
                                 <th scope="col">항공사</th>
                                 <th scope="col">출발일</th>
                                 <c:if test="${userReserDto.getReserveLine() eq '왕복' }">
                                    <th scope="col">귀국일</th>
                                 </c:if>
                                 <th scope="col">총요금</th>
                                 <th scope="col">유효기간</th>
                                 
                                 <th scope="col" class="end">예약하기</th>
                              </tr>
                           </thead>
                           <tbody>

                              <c:forEach var="dto" items="${reserSearchList }">
                              <c:set var="adult" value="${dto.getAdultTax() * userReserDto.getAdult()}"></c:set>
                              <c:set var="child" value="${dto.getChildTax() * userReserDto.getChild()}"></c:set>
                              <c:set var="toddle" value="${dto.getToddleTax() * userReserDto.getToddle()}"></c:set>
                                 <tr>
                                    <td class="first">${dto.getEndCity()}</td>
                                    <td>${dto.getAirLine() }</td>
                                    <td>${dto.getStartDate()}</td>
                                    <c:if test="${userReserDto.getReserveLine() eq '왕복' }">
                                    <td>${userReserDto.getEndDate()}</td>
                                    </c:if>
                                    <td>${adult+child+toddle } </td>
                                    <td>${dto.getExDate() }</td>
                                    <td class="pd_10 end"><a href="reservePop.action?adult=${userReserDto.getAdult()}&child=${userReserDto.getChild()}&toddle=${userReserDto.getToddle()}&airLine=${dto.getAirLine()}"
                                    " class="btn_reser">예약</a></td>
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