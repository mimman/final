<%@ page contentType="text/html; charset=utf-8"%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>MIRACLE AIR &gt; 대메뉴 &gt; 중메뉴 &gt; 소메뉴</title>
<jsp:include page="/inc/header2.jsp" flush="true" />
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
        
      </div>

      <h3 class="blind">시설현황</h3>

         <!-- 본문영역 -->
         <div id="contentG">
         
            <!-- 내용 -->
<form action="insertReserve.action" method="post" >
         <div class="joininfo">
            
            <h3>항공예매 삭제</h3>
            <form method="post" action="deleteReser.action">
            <input type="text" name="deleteReser">
            </form>
            
            <input type="submit" value="확인"  class="mt_20" />
      
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