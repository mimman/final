<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	<input type="hidden" name="articleno" value="${boardDto.getArticleno() }" >
	<input type="hidden" name="writer" value="${boardDto.getWriter() }">
	제목<input type="text" name="title" value="${boardDto.getTitle() }">
	내용<textarea rows="10" cols="50" name="content" >${boardDto.getContent() }</textarea>
	
	
	
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