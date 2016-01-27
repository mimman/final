<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
		      <li class="current"><a href="myMileage.action">나의 마일리지</a></li>
		      <li class=""><a href="bonusAir.action">보너스 항공권</a></li>
		      <li class=""><a href="seatUpgrade.action">좌석승급</a></li>
		      <li class=""><a href="worldTour.action">세계일주 보너스</a></li>
		   </ul>
		</div>
      
      <!-- 본문영역 -->
      <div id="contentG">

      <!-- 내용 -->
      
      <h3 class="blind">나의 마일리지</h3>
      
      <div class="my_txt">회원님께서는 MIRACLE AIR 탑승 및 MIRACLE AIR와 제휴된<br />
      신용카드, 호텔, 렌터카, 인터넷 쇼핑몰 등을 이용하여 마일리지를 적립하실 수 있습니다.<br />
      회원님께서 적립하신 마일리지는 항공 탑승 또는 제휴사 이용 이외에 추가적인 경제적 대가를 지불함이 없이 무상으로 제공되며, <br />
      마일리지 항공권 발급 등으로 마일리지를 사용하는 시점에 바로 그 가치가 결정됩니다.</div>
      
      <div class="mymile_w v2 clear mt_50">
		사용 가능한 마일리지 : ${dto.getMileage() }
      </div>
	
	<h4>상세 적립내역</h4>
	
	<div class="tbl_sch_box mt_30">
		<table cellspacing="0" border="1"
			summary="도시,항공사,출발기간,총요금,유효기간,예상TAX,예약하기 정보 전달" width="100%"
			cellpadding="0" class="tbl_sch">
			<caption>항공편 글목록</caption>
			<colgroup>
				<col width="11%">
				<col width="10%">
				<col width="10%">
				<col width="10%">
				<col width="11%">
				<col width="10%">
				<col width="10%">
				<col width="10%">
				<col width="*">
			</colgroup>
			<thead>
				<tr>
					<th scope="col" class="first">예약번호</th>
					<th scope="col">출발도시</th>
					<th scope="col">도착도시</th>
					<th scope="col">탑승일</th>
					<th scope="col">출발시간</th>
					<th scope="col">인원</th>
					<th scope="col">총요금</th>
					<th scope="col">좌석 등급</th>
					<th scope="col">항공사</th>
					<th scope="col" class="end">마일리지</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach var="mdto" items="${mileageList}">

					<tr>
						<td class="first">${mdto.getComReserveNum()}</td>
						<td>${mdto.getStartCity() }</td>
						<td>${mdto.getEndCity()}</td>
						<td>${mdto.getStartDate() }</td>
						<td>${mdto.getStartTime()}</td>
						<td>성인 ${mdto.getAdult() }명,소아
							${mdto.getChild()}명,유아${mdto.getToddle()}명</td>
						<td>${mdto.getTax() }</td>
						<td>${mdto.getSeat() }</td>
						<td>${mdto.getAirLine() }</td>
						<td class="pd_10 f_bold end">${mdto.getMileage()}</td>
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