<%@ page contentType="text/html; charset=utf-8"%>
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

         <div class="sub_tit_w blind">
            <p>항공권 예매</p>         
            <span class="mt_16">국내선 항공권</span>
         </div>

         <div id="title2" class="sub blind">
            <div class="tab_w">
               <ul>
               <li class="current"><a class="" href="">국내선 항공권</a></li>
               <li><a class="" href="">국제선 항공권</a></li>
               </ul>
            </div>
         </div>
         <!-- //contentG_title -->

         <h3 class="blind">시설현황</h3>

         <!-- 본문영역 -->
         <div id="contentG">
         
            <!-- 내용 -->
            
            <div class="tab_wrap">
            
            <ul class="tab_tt">                        
               <li class="tab_title"><a href="#self">이메일 인증</a></li>
               <li class="tab_title on"><a href="#self">SMS 인증</a></li>
            </ul>
            
            <div class="tab_con_wrap">
               <div class="tab_con" style="display: none;">
               <form name="form2" method="POST" target="sysfrm">
               <input type="hidden" name="mode" value="email_authno" />
               <div class="find_box">
                  <ul class="find_id">
                     <li>
                        <strong>아이디</strong>
                        <div>
                           <input type="text" name="login_id" class="w150" />
                        </div>
                     </li><li>
                        <strong>성명</strong>
                        <div>
                           <input type="text" name="user_nm" class="w150" />
                        </div>
                     </li>
                     <li>
                        <strong>이메일</strong>
                        <div>
                           <input type="text" name="email1" class="w90" /> @ 
                           <input type="text" name="email2" class="w120" />
                           <input type="button" class="button gray small" value="인증번호발급" onclick="sendEmailAuthNo()" />
                        </div>
                     </li>
                  </ul>
                  <p>* 회원가입시 작성하였던 아이디, 성명, 이메일을 입력하여 주세요.</p>
                  <ul class="find_id">
                     <li>
                        <strong>인증번호</strong>
                        <div>
                           <input type="text" name="auth_no" class="w150" />
                           <input type="button" class="button gray small" value="인증번호 확인" onclick="sendEmailNewPasswd()" />
                        </div>
                     </li>
                  </ul>
                  <p>* 인증받은 번호를 입력하십시요.</p>   
               </div>
               </form>
            </div>
            <script>
            function sendEmailAuthNo() {
               var f = document.forms['form2'];
               f['mode'].value = "email_authno";
               f['auth_no'].removeAttribute("REQUIRED");
               if(!validate(f)) return;
               f.submit();
               f['mode'].value = "";
            }
            function sendEmailNewPasswd() {
               var f = document.forms['form2'];
               f['mode'].value = "email_passwd";
               f['auth_no'].setAttribute("REQUIRED", "Y");
               if(!validate(f)) return;
               f.submit();
               f['mode'].value = "";
            }
            </script>
            
            
            <div class="tab_con" style="display: block;">
               <form name="form3" method="POST" target="sysfrm">
               <input type="hidden" name="mode" value="sms_authno" />
               <div class="find_box">
                  <ul class="find_id">
                     <li>
                        <strong>아이디</strong>
                        <div>
                           <input type="text" name="login_id" class="w150" />
                        </div>
                     </li><li>
                        <strong>성명</strong>
                        <div>
                           <input type="text" name="user_nm" class="w150" />
                        </div>
                     </li>
                     <li>
                        <strong>휴대전화</strong>
                        <div>
                           <select name="mobile1">
                              <option value="010">010</option>
                              <option value="011">011</option>
                              <option value="016">016</option>
                              <option value="017">017</option>
                              <option value="018">018</option>
                              <option value="019">019</option>
                           </select> -
                           <input type="text" name="mobile2" class="w70" maxlength="4" /> -
                           <input type="text" name="mobile3" class="w70" maxlength="4" />
                           <input type="button" class="button gray small" value="인증번호발급" onclick="sendSmsAuthNo()" />
                        </div>
                     </li>
                  </ul>
                  <p>* 회원가입시 작성하였던 아이디, 성명, 휴대폰번호를 입력하여 주세요.</p>
                  <ul class="find_id">
                     <li>
                        <strong>인증번호</strong>
                        <div>
                           <input type="text" name="auth_no" class="w150" />
                           <input type="button" class="button gray small" value="인증번호 확인" onclick="sendSmsNewPasswd()" />
                        </div>
                     </li>
                  </ul>
                  <p>* 인증받은 번호를 입력하십시요.</p>   
               </div>
               </form>
            </div>
            <script>
            function sendSmsAuthNo() {
               var f = document.forms['form3'];
               f['mode'].value = "sms_authno";
               f['auth_no'].removeAttribute("REQUIRED");
               if(!validate(f)) return;
               f.submit();
               f['mode'].value = "";
            }
            function sendSmsNewPasswd() {
               var f = document.forms['form3'];
               f['mode'].value = "sms_passwd";
               f['auth_no'].setAttribute("REQUIRED", "Y");
               if(!validate(f)) return;
               f.submit();
               f['mode'].value = "";
            }
            </script>
                  
            
               </div>
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