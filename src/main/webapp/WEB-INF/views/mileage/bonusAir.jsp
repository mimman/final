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
		      <li class="current"><a href="bonusAir.action">보너스 항공권</a></li>
		      <li class=""><a href="seatUpgrade.action">좌석승급</a></li>
		      <li class=""><a href="worldTour.action">세계일주 보너스</a></li>
		   </ul>
		</div>
      
      <!-- 본문영역 -->
      <div id="contentG">

      <!-- 내용 -->
      
      <div class="my_txt">홈페이지 또는 지점에서 마일리지를 사용해 보너스 항공권을 이용할 수 있습니다.<br />
      소아인 경우에도 성인과 동일한 공제마일을 적용합니다.<br />
      만 2세 미만의 국제선 유아 보너스 항공권 공제마일은 성인 보너스 항공권 공제마일의 10%를 적용합니다.<br />
      </div>
      
		<div class="tbl_sch_box mt_30">
		   <table cellspacing="0" border="1"
		      summary="도시,항공사,출발기간,총요금,유효기간,예상TAX,예약하기 정보 전달" width="100%"
		      cellpadding="0" class="tbl_sch">
		      <caption>항공편 글목록</caption>
		      <colgroup>
		         <col width="20%" />
		         <col width="*" />
		         <col width="18%" />
		         <col width="18%" />
		         <col width="18%" />
		      </colgroup>
		      <thead>
		         <tr>
		            <th scope="col" class="first">구분</th>
		            <th scope="col">노선</th>
		            <th scope="col">일반석</th>
		            <th scope="col">비즈니스석</th>
		            <th scope="col" class="end">일등석</th>
		         </tr>
		      </thead>
		      <tbody>

				<tr>
					<td class="first lh" rowspan="5">한국 출도착<br />구간</td>
					<td>국내선</td>
					<td>10,000</td>
					<td>-</td>
					<td class="pd_10 end">-</td>
				</tr>
				
				<tr>
					<td>한국-일본, 동북아</td>
					<td>30,000</td>
					<td>50,000</td>
					<td class="pd_10 end">65,000</td>
				</tr>
				
				<tr>
					<td>한국-동남아</td>
					<td>60,000</td>
					<td>80,000</td>
					<td class="pd_10 end">90,000</td>
				</tr>
				
				<tr>
					<td>한국-서남아</td>
					<td>50,000</td>
					<td>90,000</td>
					<td class="pd_10 end">115,000</td>
				</tr>
				
				<tr>
					<td>한국-미주, 대양주, 유럽</td>
					<td>70,000</td>
					<td>125,000</td>
					<td class="pd_10 end">160,000</td>
				</tr>
				
				<tr>
					<td class="first lh" rowspan="10">한국을<br />경유하는<br />이원 구간</td>
					<td>일본-동북아</td>
					<td>45,000</td>
					<td>70,000</td>
					<td class="pd_10 end">100,000</td>
				</tr>
				
				<tr>
					<td>일본,동북아-동남아</td>
					<td>55,000</td>
					<td>85,000</td>
					<td class="pd_10 end">115,000</td>
				</tr>
				
				<tr>
					<td>일본,동북아-서남아</td>
					<td>60,000</td>
					<td>100,000</td>
					<td class="pd_10 end">130,000</td>
				</tr>
				
				<tr>
					<td>일본,동북아-미주,대양주</td>
					<td>75,000</td>
					<td>135,000</td>
					<td class="pd_10 end">175,000</td>
				</tr>
				
				<tr>
					<td>일본,동북아-유럽</td>
					<td>75,000</td>
					<td>135,000</td>
					<td class="pd_10 end">175,000</td>
				</tr>
				
				<tr>
					<td>동남아-유럽</td>
					<td>85,000</td>
					<td>155,000</td>
					<td class="pd_10 end">200,000</td>
				</tr>
				
				<tr>
					<td>동남아-서남아</td>
					<td>70,000</td>
					<td>130,000</td>
					<td class="pd_10 end">165,000</td>
				</tr>
				
				<tr>
					<td>동남아-미주,대양주</td>
					<td>85,000</td>
					<td>155,000</td>
					<td class="pd_10 end">200,000</td>
				</tr>
				
				<tr>
					<td>서남아-미주,대양주</td>
					<td>95,000</td>
					<td>175,000</td>
					<td class="pd_10 end">225,000</td>
				</tr>
				
				<tr>
					<td>대양주-미주</td>
					<td>105,000</td>
					<td>200,000</td>
					<td class="pd_10 end">250,000</td>
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