<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>회원서비스 &gt; 로그인</title>
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

      <div class="sub_tit_w blind">
         <p>회원서비스</p>         
         <span class="mt_16">로그인</span>
      </div>
      <!-- //contentG_title -->

      <h3 class="blind">로그인</h3>

         <!-- 본문영역 -->
         <div id="contentG">
         
         <!-- 내용 -->
         
         <div class="login_box_w">

            <div class="login_box clear">
               <div class="left fl"></div>

               <div class="right fl">
                  <h4>login <em>회원로그인</em></h4>

                  <div class="txt">이메일주소와 비밀번호를 입력해주세요.<br />
                  로그인 하시면 더욱 편리하게 온라인 서비스를 이용하실 수 있습니다.</div>
                  
                  <!-- 로그인 -->
                  <div class="login_form mt_10">
                     
                     <div class="email_w clear">
                     <form method="post" action="login.action">
                        <ul class="fl">
                        <li>
                           <em class="item1">
                           <label class="i_label" for="userid">아이디</label>                           
                           <input name="log_id" class="i_text userid" style="width:273px;" id="log_id" type="text" value="" title="*이메일주소를 입력하세요." />
                           </em>
                        </li>
                        <li>
                           <em class="item1 mt_5">
                              <label class="i_label" for="userpw">비밀번호</label>
                              <input name="log_password" class="i_text userpw" style="width:273px;" id="log_password" type="password" value="" title="*비밀번호를 입력하세요." />
                           </em>
                        </li>
                        </ul>
                        <span class="btn fl">
                           <input type="submit" class="btn" value="로그인" />
                        </span>
                     </form>
                     </div>
                     
                     <input type="checkbox" id="save_id" name="save_id" class="ch_id" /><label for="save_id" class="ch_id">&nbsp; 아이디 저장</label>

                  </div>
                  <!-- //로그인 -->               

                  <!-- 버튼 -->
                  <div class="login_menu">
                     <ul class="btn clear">
                        <li><a href="membership.action">회원가입</a></li>
                        <li><a class="id" href="">아이디찾기</a></li>
                        <li class="last"><a href="">비밀번호찾기</a></li>
                     </ul>
                  </div>
                  <!-- //버튼 -->

               </div>
               <!-- //left -->

            </div>
            <!-- //login_box -->
         </div>
         <!-- //login_box_w -->
         
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