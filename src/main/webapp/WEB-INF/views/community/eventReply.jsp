<%@ page contentType="text/html; charset=utf-8"%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>커뮤니티 &gt; 이벤트</title>
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
이벤트 게시판 답변 페이지
</div>
<form method="post" action="eventReplyOk.action">
<div>카테고리<select name="boardcd">
		<option>공지사항</option>
		<option>이벤트</option>
		<option>Q&A</option>
	</select></div>
	<div>제목<input type="text" name="title" value="답글 : "></div>
	<div>내용<textarea rows="10" cols="50" name="content"></textarea>
	<div>첨부파일<input type="file" name="img" ></div>
	<div>비밀번호<input type="password" name="boardpw"></div> 
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