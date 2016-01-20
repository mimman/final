<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
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
   <div id="containerG_w" class="">
      <h2 class="blind">본문 영역</h2>

      <div class="tab_w clearfix v2">
         <ul>
            <li class="current"><a href="memberDetail.action">회원정보</a></li>
            <li class=""><a href="updateUser.action">회원정보 수정</a></li>
            <li class=""><a href="withdraw.action">회원 탈퇴</a></li>
         </ul>
      </div>
      <!-- //tab_w -->
      
      <div id="contentG">
      <!-- 내용 -->
      
      <div class="joininfo member">

         <h3>회원 정보</h3>
      
         <ul class="mt_50">
         	<li><label for="inputProfile">프로필</label><p><img src="${dto.getImg()}" style="width:200px;height:auto;"></p></li>
            <li><label for="inputName">이름</label><p>${dto.getName() }</p></li>
            <li><label for="inputBirth">생년월일</label><p>${dto.getBirth() }</p></li>
            <li><label for="inputEmail">이메일</label><p>${dto.getEmail() }</p></li>
            <li><label for="inputAddress">주소</label><p>${dto.getAddress() }</p></li>
            <li><label for="inputNation">국가</label><p>${dto.getNation() }</p></li>
            <li><label for="inputPhone">phone</label><p>${dto.getPhone() }</p></li>
         </ul>
      
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