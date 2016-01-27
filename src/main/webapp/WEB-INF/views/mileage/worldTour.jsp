<%@ page contentType="text/html; charset=utf-8"%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>MIRACLE AIR &gt; 마일리지 &gt; 나의 마일리지</title>
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
      
		<div class="tab_w clearfix v2">
		   <ul>
		      <li class=""><a href="myMileage.action">나의 마일리지</a></li>
		      <li class=""><a href="bonusAir.action">보너스 항공권</a></li>
		      <li class=""><a href="seatUpgrade.action">좌석승급</a></li>
		      <li class="current"><a href="worldTour.action">세계일주 보너스</a></li>
		   </ul>
		</div>

      <!-- 본문영역 -->
      <div id="contentG">

      <!-- 내용 -->
      
      <div class="my_txt">태평양과 대서양을 각각 횡단하여 동쪽 또는 서쪽 한 방향으로 <br />
      계속 여행하며 출발지 국가에서 여행이 종료되는 여정을 의미합니다. <br />
      세계일주 보너스는 스카이팀 항공사가 운항하는 구간을 이용하여 전 세계를 여행할 수 있는 보너스 마일리지 상품입니다.<br />
      </div>

		<div class="world_box">
		<p>세계일주 보너스 적용 규정 및 유의사항</p>
		
		<ul class="list_v1 mt_10">
			<li class="f_bold">필요 마일리지</li>
		</ul>
		
		일반석 : <strong>140,000 마일</strong> / 비즈니스석 : <strong>220,000 마일</strong>
		
		<ul class="list_v1 mt_20">
			<li class="f_bold">예약 및 발권</li>
		</ul>
		
		항공권 예약은 MIRACLE AIR 서비스센터와 발권지점에서 가능하며, 항공권 발권은 MIRACLE AIR 시내지점에서 할 수 있습니다. 기타 문의는 MIRACLE AIR 서비스센터로 문의하시기 바랍니다.
		
		<ul class="list_v1 mt_20">
			<li class="f_bold">적용 규정 및 유의사항</li>
		</ul>
		
		* 스카이팀 항공사 이용 시, 공제마일, 운항구간 및 운항스케줄 등은 각 항공사의 정책과 사정에 따라 예고 없이 변경될 수 있습니다. 정확한 내용은 MIRACLE AIR 서비스센터에서 확인하십시오.
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