<%@ page contentType="text/html; charset=EUC-KR"%>
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

            <div class="tab_w clearfix v2">
               <ul>
                  <li class=""><a href="memberDetail.action">회원 정보</a></li>
                  <li class=""><a href="updateUser.action">회원정보 수정</a></li>
                  <li class="current"><a href="withdraw.action">회원 탈퇴</a></li>
               </ul>
            </div>

            <!-- 본문영역 -->
            <div id="contentG">

               <!-- 내용 -->

               <div class="joininfo ta_c">
               <h3>회원 탈퇴</h3>
               <form method="post" action="withdraw.action">
                  <p class="mt_50 fz_20">정말 탈퇴하시겠습니까?</p>
                  <input class="btn_m mt_50" type="submit" value="확인" />
               </form>
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