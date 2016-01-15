<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>MIRACLE AIR &gt; 대메뉴 &gt; 중메뉴 &gt; 소메뉴</title>
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
   <div id="containerG_w" class="sub01">      
      <h2 class="blind">본문 영역</h2>

         <!-- 본문영역 -->
         <div id="contentG">
         
            <!-- 내용 -->
            
            <div class="reser_ok">

               <h3 class="blind">예약완료</h3>
            
               <p class="tit"><strong>예약</strong>이 <strong>완료</strong>되었습니다.
               
               <c:if test="${hdto.getReserveLine() eq '편도' }">
               <ul class="list_v1 mt_20">
                  <li><span>예약번호</span> <strong>Air-${completDto.getComReserveNum()}</strong></li>
                  <li><span>출발일</span> <strong>${completDto.getStartDate()} </strong></li>
                  <li><span>출발시각</span> <strong>${completDto.getStartTime() } </strong></li>
                  <li><span>도착시각</span> <strong>${completDto.getEndTime() }</strong></li>
                  <li><span>예약인원</span> <strong>(일반석)</strong> 성인 <strong>${completDto.getAdult() }</strong>명
                  	소아 <strong>${completDto.getChild() }</strong>명  
                  	유아 <strong>${completDto.getToddle() }</strong>명 </li>
                  <li><span>총 요금</span> <strong>${completDto.getTax() }</strong> 원</li>
                  <li><span>적립 마일리지</span> <strong>${completDto.getMileage() }</strong> point</li>
               </ul>
               </c:if>
               <p class="lh mt_20 fz_13">홈페이지에서 구매하신 항공권은 홈페이지에서 예약 조회를 하실 수 있으며, <br />
               구매하신 항공권의 운임 규정에 따라 홈페이지에서 편리하게 여정 변경이나 환불을 하실 수 있습니다.
            
            </div>
               
            <div class="ta_c mt_20"><a class="v2 btn_m" href="index.action">홈으로</a></div>


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