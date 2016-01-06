<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<jsp:include page="/inc/header1.jsp" flush="true" />
<title>커뮤니티 &gt; 이벤트 </title>
<script>
function BoardDelete(){
	if(confirm("글을 삭제하시겠습니까?")){
		location.href="evevBoardDelete.action?articleno=${boardDto.getArticleno()}&writer=${boardDto.getWriter() }&boardcd=${boardDto.getBoardcd()}";
	}
}

function CommentDelete(commentno,articleno){
	if(confirm("댓글을 삭제하시겠습니까?")){
		location.href="DeleteComment.action?commentno="+commentno+"&articleno="+articleno;
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
 			
 		<div id="containerG_w" class="sub01">
      <h2 class="blind">본문 영역</h2>

      <div class="tab_w clearfix v2">
      <c:if test="${boardcd eq 'notice'}">
      <ul>
            <li class="current"><a href="eventBoard.action?boardcd=notice">공지사항</a></li>
            <li class=""><a href="eventBoard.action?boardcd=event">이벤트</a></li>
            <li class=""><a href="eventBoard.action?boardcd=qna">Q&A</a></li>
         </ul>
      </c:if>
      <c:if test="${boardcd eq 'event'}">
      <ul>
            <li class=""><a href="eventBoard.action?boardcd=notice">공지사항</a></li>
            <li class="current"><a href="eventBoard.action?boardcd=event">이벤트</a></li>
            <li class=""><a href="eventBoard.action?boardcd=qna">Q&A</a></li>
         </ul>
      </c:if>
        <c:if test="${boardcd eq 'qna'}">
      <ul>
            <li class=""><a href="eventBoard.action?boardcd=notice">공지사항</a></li>
            <li class=""><a href="eventBoard.action?boardcd=event">이벤트</a></li>
            <li class="current"><a href="eventBoard.action?boardcd=qna">Q&A</a></li>
         </ul>
      </c:if>
      </div>


            <!-- 내용 -->
      <table class="tbl_sch ta_l">
      <caption>글보기</caption>
      <colgroup>
      <col width="15%" />
      <col width="*" />
      <col width="15%" />
      </colgroup>
      <tr>
      	 
         <td colspan="2">${boardDto.getTitle() } </td>
        
         <td class="ta_r">${boardDto.getRegdate() } </td>
      </tr>
      <tr>
      	 
         <td colspan="2">${boardDto.getWriter() } </td>
         <td class="ta_r">조회수 ${boardDto.getHit() } </td>
      </tr>
      <tr> 
         <td colspan="3" style="padding:20px 10px">${boardDto.getContent() }</td>
      </tr>
      <tr>
         <td colspan="3"></td>
      </tr>
      </table>
 
   <hr size=1>
   <a href="eventBoard.action?boardcd=${boardDto.getBoardcd()}">목 록</a> 
   <c:if test="${boardcd eq 'qna'}">
   <a href="eventReply.action?pos=${boardDto.getPos()}&boardcd=${boardDto.getBoardcd()}">답 변</a> 
   </c:if>
   <a href="eventModifyPage.action?articleno=${boardDto.getArticleno()}&writer=${boardDto.getWriter() }">수 정</a> 
   <a href="#" onclick="BoardDelete(); return false;">삭제 </a>
   
   <c:forEach var="dto" items="${commentList}">
   <div>작성자 : ${dto.getWriter()} | 작성일 : ${dto.getRegdate() } <a href="comment.action?param=reply&articleno=${boardDto.getArticleno()}
   &writer=${boardDto.getWriter() }&boardcd=${boardDto.getBoardcd()}">답글</a> 
   <c:if test="${id eq dto.getWriter()}">
   <a href="">수정</a>
   <a href="" onclick="CommentDelete(${dto.getCommentno()},${boardDto.getArticleno()}); return false;">삭제</a>
   </c:if>
  
   </div>
   <div>${dto.getContent()}</div>
   </c:forEach>
   
   <div class="comment">
      <form method="post" action="comment.action">
      <input type="hidden" name="param" value="comment" >
      <input type="hidden" name="articleno" value="${boardDto.getArticleno() }" >
      <input type="hidden" name="writer" value="${boardDto.getWriter() }">
      <input type="hidden" name="boardcd" value="${boardDto.getBoardcd()}">
      <label for="t_comment" class="blind">의견등록</label>
      <textarea cols="70" rows="23" id="t_comment" name="content" class="textarea_s1" style="width:608px;height:45px;"></textarea>
      <input type="submit" value="등록" class="btn_cmt" />
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