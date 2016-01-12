<%@ page contentType="text/html; charset=utf-8"%>
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
   <div id="containerG_w" class="mypage">
      <h2 class="blind">본문 영역</h2>

      <!-- 본문영역 -->
      <div id="contentG_v2">

      <!-- 내용 -->
      
      <h3>MY PAGE</h3>
      
      <div class="my_txt mt_10">마이페이지에서는 고객님의 회원 정보를 관리하실 수 있으며,<br />
      고객님께서 예매하신 항공권 조회 및 관리와 작성한 게시글 목록을<br />
      확인하실 수 있습니다.</div>
      
      <div class="quick_w clear mt_50">
      
      <ul class="quick">
         <li>
            <i class="fa fa-user fa-4x"></i>
            <em>회원정보 관리</em><br />
            <span>고객님의 회원정보를<br />
            관리하실 수 있습니다.</span>
            
            <ul class="list_v1 mg" >
               <li><a href="memberDetail.action">회원정보 보기</a></li>
               <li><a href="updateUser.action">회원정보 수정</a></li>
               <li><a href="withdraw.action">회원정보 탈퇴</a></li>
            </ul>            
         </li>
         
         <li>
            <i class="fa fa-plane fa-4x"></i>
            <em>예약 관리</em><br />
            <span>고객님께서 예약한 내역을<br />
            확인하실 수 있습니다.</span>
            
            <ul class="list_v1 mg">
               <li><a href="">예약 조회</a></li>
               <li><a href="">항공권 조회</a></li>
            </ul>
         </li>
         
         <li>
            <i class="fa fa-pencil-square-o fa-4x"></i>
            <em>나의 게시물</em><br />
            <span>고객님께서 작성한 게시글을<br />
            모두 확인하실 수 있습니다.</span>
            
            <ul class="list_v1 mg">
               <li><a href="mypageView.action">나의 게시물</a></li>
            </ul>            
         </li>
         
         <li>
            <i class="fa fa-money fa-4x"></i>
            <em>마일리지</em><br />
            <span>고객님의 마일리지를<br />
            확인하실 수 있습니다.</span>
            
            <ul class="list_v1 mg">
               <li><a href="">나의 마일리지</a></li>
               <li><a href="">보너스 항공권</a></li>
               <li><a href="">좌석승급</a></li>
            </ul>
         </li>
      </ul>
      
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