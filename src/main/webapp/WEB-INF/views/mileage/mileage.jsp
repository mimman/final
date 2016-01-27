<%@ page contentType="text/html; charset=utf-8"%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>MIRACLE AIR &gt; 마일리지 &gt; 마일리지 홈</title>
<jsp:include page="/inc/header2.jsp" flush="true" />
</head>
<body id="sub">
<div class="wrapG_all">
   <div class="wrapG">
   <!-- gnb -->
 <jsp:include page="/inc/gnb.jsp" flush="true" />
   <!-- //gnb -->

      <hr />

   <!-- containerG_w -->
   <div id="containerG_w" class="">
      <h2 class="blind">본문 영역</h2>

      <!-- 본문영역 -->
      <div id="contentG_v2">

      <!-- 내용 -->
      
      <h3>MILEAGE</h3>
      
      <div class="my_txt mt_10">회원님께서는 MIRACLE AIR 탑승 및 MIRACLE AIR와 제휴된<br />
      신용카드, 호텔, 렌터카, 인터넷 쇼핑몰 등을 이용하여 마일리지를 적립하실 수 있습니다.<br />
      회원님께서 적립하신 마일리지는 항공 탑승 또는 제휴사 이용 이외에 추가적인 경제적 대가를 지불함이 없이 무상으로 제공되며, <br />
      마일리지 항공권 발급 등으로 마일리지를 사용하는 시점에 바로 그 가치가 결정됩니다.</div>
      
      <div class="mymile_w clear mt_50">
      
      <ul class="mile">
         <li>
         <a href="myMileage.action">
              <img src="/Air/img/mileage/img_mileage1.jpg" alt="" />
            <em>나의 마일리지</em>
            
            <ul class="list_v1 mg">
               <li>항공권 구매시 5% 적립</li>
               <li>제휴 신용카드 적립</li>
               <li>제휴 항공사 적립</li>
            </ul>
         </a>           
         </li>
         <li>
         <a href="bonusAir.action">
              <img src="/Air/img/mileage/img_mileage2.jpg" alt="" />
            <em>보너스 항공권</em>
            
            <ul class="list_v1 mg">
               <li>보너스 항공권 발급하기</li>
               <li>성수기 기간의 보너스 항공권</li>
               <li>발권일로부터 1년간 유효</li>
            </ul>
         </a>           
         </li>
         <li>
         <a href="seatUpgrade.action">
              <img src="/Air/img/mileage/img_mileage3.jpg" alt="" /><br />
            <em>좌석승급</em>
            
            <ul class="list_v1 mg">
               <li>좌석 승급 조건</li>
               <li>성수기 기간의 좌석승급</li>
               <li>발권일로부터 1년간 유효</li>
            </ul>
         </a>
         </li>
         <li>
         <a href="worldTour.action">
              <img src="/Air/img/mileage/img_mileage4.jpg" alt="" /><br />
            <em>세계일주 보너스</em>
            
            <ul class="list_v1 mg">
               <li>마일리지 패키지 여행</li>
               <li>보너스 가족 양도</li>
               <li>마일리지 가족 합산</li>
            </ul>
         </a>          
         </li>
      </ul>
      
      </div>


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