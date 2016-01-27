<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>마이페이지 &gt; 회원수정 &gt; 수정완료</title>
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
						<li class="current"><a href="updateUser.action">회원정보 수정</a></li>
						<li class=""><a href="withdraw.action">회원 탈퇴</a></li>
					</ul>
				</div>
				<!-- //tab_w -->

      <h3 class="blind">정보수정</h3>

         <!-- 본문영역 -->
         <div id="contentG">
         
            <!-- 내용 -->
            
         <div class="ta_c">
         <img src="/Air/img/membership/userModify.jpg">
         
         <div></div><a class="v2 btn_m" href="index.action">홈으로 </a></div>
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