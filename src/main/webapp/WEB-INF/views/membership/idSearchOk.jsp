<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>회원서비스 &gt; 아이디 찾기 완료</title>
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
            <li class="current"><a href="idSearch.action">아이디 찾기</a></li>
            <li class=""><a href="pwSearch.action">비밀번호 찾기</a></li>
         </ul>
      </div>
      <!-- //tab_w -->

      <h3 class="blind">회원가입</h3>
   
         <!-- contentG -->
         <div id="contentG">

         <!-- 본문영역 -->
         <div id="contentG_w">
         
            <!-- 내용 -->
            회원님의 아이디는 ${searchid} 입니다.
            
            <!-- //내용 -->
         
         </div>
         <!-- //contentG_w -->

         <hr />

         </div>
         <!-- //contentG -->
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