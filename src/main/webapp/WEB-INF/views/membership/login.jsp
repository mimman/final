<%@ page contentType="text/html; charset=utf-8"%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>회원서비스 &gt; 로그인</title>
<jsp:include page="/inc/header2.jsp" flush="true" />
</head>
<body id="sub">
<jsp:include page="/inc/header2_1.jsp" flush="true" />
   <!-- gnb -->
 <jsp:include page="/inc/gnb.jsp" flush="true" /> 
   <!-- //gnb -->

      <hr />

   <!-- containerG_w -->
   <div id="containerG_w" class="sub01">      
     

        
         <!-- //contentG_title -->

  

      <!-- contentG -->
      <div id="contentG">

         <!-- 본문영역 -->
         <div id="contentG_w">


            <!-- 내용 -->
 <div class="join">
                  <form method="post" action="login.action">
                     <table>
                        <tr>
                           <td><label for="inputId">아이디</label>&nbsp;&nbsp;&nbsp;</td>
                           <td><input type="text" name="log_id" placeholder="아이디" /></td>
                        </tr>

                        <tr>
                           <td><label for="inputPw">비밀번호</label>&nbsp;&nbsp;&nbsp;</td>
                           <td><input type="password" name="log_pw"
                              placeholder="비밀번호" /></td>
                        </tr>
                        <tr>
                           <td colspan="2"><button type="submit">확인</button></td>
                        </tr>

                     </table>


                  </form>
               </div>

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