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

        
      <div class="tab_w clearfix v2">
         <ul>
            <li class=""><a href="idSearch.action">아이디 찾기</a></li>
            <li class="current"><a href="pwSearch.action">비밀번호 찾기</a></li>
         </ul>
      </div>
      <!-- //tab_w -->

         <h3 class="blind">비밀번호 찾기</h3>

         <!-- 본문영역 -->
         <div id="contentG2">
         
            <!-- 내용 -->
            
            <div class="tab_wrap">
            
            <div class="tab_con_wrap">
            
            <div class="tab_con">
               <form name="form1" method="POST" action="pwSearch.action">
               <div class="sch_box">
                  <ul class="sch_id">
                     <li>
                        <strong>아이디</strong>
                        <div class="item1">
                           <input type="text" name="user_id" class="i_text2" />
                        </div>
                     </li>
                     <li>
                        <strong>성명</strong>
                        <div class="item1">
                           <input type="text" name="user_nm" class="i_text2" />
                        </div>
                     </li>
                     <!--<li>
                         <strong>휴대전화</strong>
                        <div class="item1">
                           <select name="mobile1">
                              <option value="010">010</option>
                              <option value="011">011</option>
                              <option value="016">016</option>
                              <option value="017">017</option>
                              <option value="018">018</option>
                              <option value="019">019</option>
                           </select> -
                           <input type="text" name="mobile2" class="i_text2" maxlength="4" style="width:70px;" /> -
                           <input type="text" name="mobile3" class="i_text2" maxlength="4" style="width:70px;" />
                           <input type="button" class="btn_m" value="찾기" onclick="sendSmsAuthNo()" />
                        </div>
                     </li> -->
                     
                     <li>
                     <strong>이메일</strong>
                     <div class="item1">
                        <input type="text" name="email1" class="i_text2" style="width:190px;" /> 
                        <input type="submit" class="btn_m" value="찾기" />
                     </div>
                  </li>
                  </ul>
                  <p>* 회원가입시 작성하였던 아이디, 성명, 이메일을 입력하여 주세요.</p>
                  
               </div>
               </form>
            </div>
            
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