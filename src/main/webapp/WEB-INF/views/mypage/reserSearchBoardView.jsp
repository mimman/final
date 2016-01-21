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
               <li class=""><a href="reservationSearch.action">예약 조회</a></li>
               <li class="current"><a class="" href="reservationList.action">예약 내역</a></li>
               <li class=""><a class="" href="reservationDeletePage.action">예약 취소</a></li>
            </ul>
         </div>
         
            

            <!-- 본문영역 -->
            <div id="contentG">
            <!-- 내용 -->

            <div class="joininfo member">

        <h3>예약내역</h3>
       <div class="tbl_sch_box mt_30">
                        <table cellspacing="0" border="1"
                           summary="도시,항공사,출발기간,총요금,유효기간,예상TAX,예약하기 정보 전달" width="100%"
                           cellpadding="0" class="tbl_sch">
                           <caption>항공편 글목록</caption>
                           <colgroup>
                              <col width="12%">
                              <col width="12%">
                              <col width="12%">
                              <col width="12%">
                              <col width="12%">
                              <col width="16%">
                              <col width="12%">
                              <col width="12%">
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
                                 
                                 
                                 <th scope="col" class="end">항공사</th>
                              </tr>
                           </thead>
                           <tbody>

                              <c:forEach var="dto" items="${idSearchList }">
                              
                                 <tr>
                                    <td class="first">${dto.getComReserveNum()}</td>
                                    <td>${dto.getStartCity() }</td>
                                    <td>${dto.getEndCity()}</td>
                                    <td>${dto.getStartDate() }</td>   
                                    <td>${dto.getStartTime()}</td>               
                                    <td>성인 ${dto.getAdult() }명,소아 ${dto.getChild()}명,유아${dto.getToddle()}명 </td>
                                    <td>${dto.getTax() }</td>
                                    <td class="pd_10 end">${dto.getAirLine() }</td>
                                 </tr>
                              </c:forEach>
                     

                           </tbody>
                        </table>
                     </div>
                     <!-- //tbl_sch -->
       
      
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