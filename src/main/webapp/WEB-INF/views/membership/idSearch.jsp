<%@ page contentType="text/html; charset=utf-8"%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>회원서비스 &gt; 아이디 찾기</title>
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

         <div class="sub_tit_w">
            <p>항공권 예매</p>
         </div>

         <div id="title2" class="sub">
            <div class="tab_w">
               <ul>
               <li class="current"><a class="" href="">국내선 항공권</a></li>
               <li><a class="" href="">국제선 항공권</a></li>
               </ul>
            </div>
         </div>
         <!-- //contentG_title -->

      <h3 class="blind">아이디 찾기</h3>

      <!-- contentG -->
      <div id="contentG">

         <!-- 본문영역 -->
         <div id="contentG_w">

            <!-- 내용 -->
         <form name="form1" method="POST" target="sysfrm">
         <input type="hidden" name="mode" value="find_id" />
         <div class="find_box">
            <ul class="find_id">
               <li>
                  <strong>성명</strong>
                  <div>
                     <input type="text" name="user_nm" class="w150" />
                  </div>
               </li>
               <li>
                  <strong>이메일</strong>
                  <div>
                     <input type="text" name="email1" class="w90" /> @ <input type="text" name="email2" class="w120" /> 
                     <input type="button" class="button gray small" onclick="goFindId()" value="찾기" />
                  </div>
               </li>
            </ul>
            <p>* 회원가입시 작성하였던 성명과 이메일을 입력하여 주세요.</p>   
         </div>
         </form>
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