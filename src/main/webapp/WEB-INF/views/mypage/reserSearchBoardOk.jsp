<%@ page contentType="text/html; charset=utf-8" isELIgnored="false" isErrorPage="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>항공권예매 &gt; 국내선항공 &gt; 항공편 조회</title>
<jsp:include page="/inc/header2.jsp" flush="true" />
<!-- datepicker -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
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
            
         <div class="tab_w clearfix v2">
            <ul>
               <li class="current"><a href="reservationSearch.action">예약 조회</a></li>
               <li class=""><a class="" href="">예약 내역</a></li>
               <li class=""><a class="" href="reservationDeletePage.action">예약 취소</a></li>
            </ul>
         </div>
         
            <h3>예약조회 결과</h3>

            <!-- 본문영역 -->
            <div id="contentG">
            <!-- 내용 -->

            <div class="joininfo member">

         <h3>예약 정보</h3>
      
         <ul class="mt_50">
         	<li><label for="inputcomReserveNum">예약번호</label><p>${userReserDto.getComReserveNum() }</p></li>
            <li><label for="inputReserveNum">예매번호</label><p>${userReserDto.getReserveNum() }</p></li>
            <li><label for="inputReserveLine">여정</label><p>${userReserDto.getReserveLine() }</p></li>
            <li><label for="inputAirLine">항공사</label><p>${userReserDto.getAirLine() }</p></li>
            <li><label for="inputStartCity">출발도시</label><p>${userReserDto.getStartCity() }</p></li>
            <li><label for="inputEndCity">도착도시</label><p>${userReserDto.getEndCity() }</p></li>
            <li><label for="inputStartDate">출발일</label><p>${userReserDto.getStartDate() }</p></li>
            <li><label for="inputTime">출발시간</label><p>${userReserDto.getStartTime() }</p></li>
            <li><label for="inputAdult">성인</label><p>${userReserDto.getAdult() }명</p></li>
            <li><label for="inputChild">소아</label><p>${userReserDto.getChild() }명</p></li>
            <li><label for="inputToddle">유아</label><p>${userReserDto.getToddle() }명</p></li>
            <li><label for="inputTax">총 비용</label><p>${userReserDto.getTax() }원</p></li>
            <li><label for="inputMileage">적립 마일리지</label><p>${userReserDto.getMileage() } Point</p></li>
         </ul>
      
      </div>
      <!-- //joininfo -->
            
          

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