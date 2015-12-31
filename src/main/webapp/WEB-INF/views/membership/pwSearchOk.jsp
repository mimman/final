<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>회원서비스 &gt; 비밀번호 찾기</title>
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
           <li class=""><a href="idSearch.action">아이디 찾기</a></li>
            <li class="current"><a href="pwSearch.action">비밀번호 찾기</a></li>
         </ul>
      </div>

      <h3 class="blind">시설현황</h3>

         <!-- 본문영역 -->
         <div id="contentG">
         
            <!-- 내용 -->
         회원님의 비밀번호는 ${searchpw} 입니다.

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