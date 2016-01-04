<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/inc/header1.jsp" flush="true" />
<title>커뮤니티 &gt; 이벤트 </title>
<script>
function BoardDelete(){
	if(confirm("글을 삭제하시겠습니까?")){
		location.href="evevBoardDelete.action?articleno=${boardDto.getArticleno()}&writer=${boardDto.getWriter() }&boardcd=${boardDto.getBoardcd()}";
	}
}
</script>
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
   <table class="table" style="border-top:1px solid #ccc">
      <caption>글보기</caption>
      <colgroup>
      <col width="15%" />
      <col width="*" />
      <col width="15%" />
      <col width="15%" />
      <col width="15%" />
      <col width="15%" />
      </colgroup>
       <tr> 
         <td align=left bgcolor=#dddddd>제목 </td>
         <td colspan="5">${boardDto.getTitle() } </td>
        </tr>
        <tr>
         <td align=left bgcolor=#dddddd>등록날짜 </td>
         <td>${boardDto.getRegdate() }</td>
         <td align=left bgcolor=#dddddd>글쓴이</td>
         <td>${boardDto.getWriter() }</td>
         <td align=left bgcolor=#dddddd>조회수 </td>
         <td>${boardDto.getHit() }</td>
      </tr>
      <tr> 
         <td colspan="6" style="padding:20px 10px">${boardDto.getContent() }</td>
         
      </tr>
      <tr>
         <td colspan="6" align=right></td>
      </tr>
  
   </table>
 
   <hr size=1>
   <a href="eventBoard.action?boardcd=event">목 록</a> 
   <c:if test="${boardcd eq 'qna'}">
   <a href="eventReply.action?pos=${boardDto.getPos()}&boardcd=${boardDto.getBoardcd()}">답 변</a> 
   </c:if>
   <a href="eventModifyPage.action?articleno=${boardDto.getArticleno()}&writer=${boardDto.getWriter() }">수 정</a> 
   <a href="#" onclick="BoardDelete(); return false;">삭제 </a>
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