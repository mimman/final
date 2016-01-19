<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>커뮤니티 &gt; 이벤트</title>
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
     <c:if test="${boardcd eq 'travel'}">
         <ul>
               <li class="current"><a href="eventBoard.action?boardcd=travel">여행에세이</a></li>
               <li class=""><a href="eventBoard.action?boardcd=photo">포토에세이</a></li>
            </ul>
         </c:if>
         <c:if test="${boardcd eq 'photo'}">
         <ul>
               <li class=""><a href="eventBoard.action?boardcd=travel">여행에세이</a></li>
               <li class="current"><a href="eventBoard.action?boardcd=photo">포토에세이</a></li>
            </ul>
         </c:if>

      </div>
		


		<!-- //contentG_title -->



		<!-- contentG -->
		<div id="contentG">

			<!-- 본문영역 -->
			<div id="contentG_w">


				<!-- 내용 -->

	
				<form method="post" action="eventBoardModify.action" enctype="multipart/form-data">
					<input type="hidden" name="boardcd" value="${boardDto.getBoardcd() }" >
					<input type="hidden" name="articleno" value="${boardDto.getArticleno() }" >
					<input type="hidden" name="writer" value="${boardDto.getWriter() }">
					<table class="tbl_board">
            <caption>상품 등록</caption>
            <colgroup>
               <col width="25%" />
               <col width="75%" />
            </colgroup>
      
            <tbody>
               <tr>
                  <th scope="row"><label for="g_cate">카테고리</label></th>     
                           
                  <td><select class="form-control" id="boardcd" name="boardcd">
                        <c:if test="${boardcd eq 'notice'}">
                        <option value="notice">공지사항</option>
                     </c:if>
                     <c:if test="${boardcd eq 'event'}">
                        <option value="event">이벤트</option>
                     </c:if>
                     <c:if test="${boardcd eq 'qna'}">
                        <option value="qna">Q&A</option>
                     </c:if>
                     <c:if test="${boardcd eq 'travel'}">
                        <option value="travel">여행에세이</option>
                     </c:if>
                     <c:if test="${boardcd eq 'photo'}">
                        <option value="photo">포토에세이</option>
                     </c:if>
                   
                  </select></td>
                 
               
               </tr>
               <tr>
                  <th scope="row"><label for="title">제목</label></th>
                  <td>
                     <div class="form-group">
                        <input type="text" class="form-control" id="title"
                           name="title" value="${boardDto.getTitle() }" />
                     </div>
                  </td>
               </tr>
               <tr>
                  <th scope="row"><label for="content">내용</label></th>
                  <td>
                     <div class="form-group">
                        <textarea rows="10" cols="50" id="content" name="content">${boardDto.getContent() }</textarea>
                     </div>
                  </td>
               </tr>
               <tr>
                  <th scope="row">첨부파일</th>
                  <td>
                     <div class="form-group file">
                       
                        <input type="file" id="upFile" name="upFile" />
                     </div>
                  </td>
               </tr>
               
               
      
            </tbody>
         </table>
         <!-- //table -->
      
         <div class="ta_c mt_20">
            <ul class="clear ib">
               <li class="fl"><button type="submit" class="btn_m v2">등록</button></li>
               <li class="fl"><button type="reset" class="btn_m">취소</button></li>
            </ul>
         </div>
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