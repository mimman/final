<%@ page contentType="text/html; charset=utf-8"%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>MIRACLE AIR &gt; 대메뉴 &gt; 중메뉴 &gt; 소메뉴</title>
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

<form method="post" action="eventBoardModify.action">
	분류<select name="boardcd">
		<option>공지사항</option>
		<option>이벤트</option>
		<option>Q&A</option>
	</select>
	제목<input type="text" name="b_name">
	내용<textarea rows="10" cols="50" name="content"></textarea>
	첨부파일<input type="file" name="img" >
	비밀번호<input type="password" name="boardpw">
	
	<input type="submit" value="확인">
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