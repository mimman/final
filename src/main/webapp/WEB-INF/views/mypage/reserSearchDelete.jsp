<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
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
               <li class=""><a class="" href="">예약 내역</a></li>
               <li class="current"><a class="" href="reservationDeletePage.action">예약 취소</a></li>
            </ul>
         </div>
         
            <h3>예약취소</h3>

            <!-- 본문영역 -->
            <div id="contentG">
            <!-- 내용 -->
			<form method="post" action="reservationDelete.action">
            <div class="reser_sch">
            
               <label for="num" style="margin:0 20px 0 10px;">예약번호</label><input type="text" id="comReserveNum" name="comReserveNum" />
            
            </div>
            
            <div style="margin:20px 10px;;">
               <input type="submit" value="삭제" class="btn_m" />
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