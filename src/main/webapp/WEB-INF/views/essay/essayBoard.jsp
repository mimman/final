<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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

      <!-- 본문영역 -->
      <div id="contentG2">

      <!-- 내용 -->

            
<c:set var="totalRecord" value="${sessionScope.pagedto.getTotalRecord()}" />
<c:set var="numPerPage" value="${sessionScope.pagedto.getNumPerPage() }" />
<c:set var="totalPage" value="${sessionScope.pagedto.getTotalPage()}" />
<c:set var="nowPage" value="${sessionScope.pagedto.getNowPage()}" />
<c:set var="beginPerPage" value="${sessionScope.pagedto.getBeginPerPage()}" />
<c:set var="pagePerBlock" value="${sessionScope.pagedto.getPagePerBlock()}" />
<c:set var="totalBlock" value="${sessionScope.pagedto.getTotalBlock()}" />
<c:set var="nowBlock" value="${sessionScope.pagedto.getNowBlock()}" />

   <div class="ta_r">
      <div class="item1 clear mt_30">
      <form method="post" action="boardSearch.action?boardcd=${boardcd}">
      
         <select name="keyField" size="1">
         <option value="writer">이름</option>
         <option value="title" >제목</option>
         <option value="content" >내용</option>
         </select>
         <input type="text" class="i_text2" name="keyWord" />
         <input class="btn_m" type="submit" value="찾기" />
        </form>
      </div>
      </div>
         <!-- //ta_r -->
         
         
         <div class="gallery_list mt_10">
         <ul class="clear">
         <c:set var="doneLoop" value="false"/>
         
         <c:forEach items="${list}"  varStatus="status" begin="${beginPerPage}" end="${beginPerPage+numPerPage-1}" var="dto" >
         
         <c:if test="${not doneLoop}">
         <c:if test="${numPerPage*beginPerPage+status.index == totalRecord}">
         <c:set var="doneLoop" value="true"/>
         </c:if>

         <li class="fl ta_c">
            <a href="eventRead.action?articleno=${dto.getArticleno()}"><img src="${dto.getImg() }"></a>
            <p class="title"><a href="eventRead.action?articleno=${dto.getArticleno()}">${dto.getTitle()}</a></p>
            <p class="writer">${dto.getWriter()}</p>
            <p class="date">${dto.getRegdate()}</p>
         </li>
         </c:if>
         </c:forEach>
         
         </ul>
         </div>
         <!-- //gallery_list -->
         
         <form action="eventWrite.action" name="board" method="post">
         <div class="ta_r mt_10">
            <c:if test="${id ne null }">
               <input class="btn_m" type="submit" value="글쓰기" >     
            </c:if>       
         </div>
         <!-- //ta_r -->
         </form>


      
       <div class="bbsP mt_20">
          <ul class="clear">
             <c:if test="${nowBlock eq 0}">
                <li><img src="/Air/img/board/btn_prev.gif" alt="이전" /></li>
             </c:if>

      <c:if test="${nowBlock > 0}">
         <li><a href="eventBoard.action?boardcd=${boardcd}&nowBlock=${nowBlock-1}&nowPage=${pagePerBlock*(nowBlock-1)}">
         <img src="/Air/img/board/btn_prev.gif" alt="이전" /></a></li>
      </c:if>
      <c:if test="${sessionScope.pagedto.getTotalRecord() > 0}">
      <c:forEach begin="1" end="${sessionScope.pagedto.getPagePerBlock()}" varStatus="status">
      <c:if test="${not doneLoop}">
      
         <c:if test="${(nowBlock*pagePerBlock)+status.index == totalPage}">
             <c:set var="doneLoop" value="true"/>
         </c:if>
         <c:if test="${(nowBlock*pagePerBlock)+status.index eq nowPage +1}">
          <li><strong>${(nowBlock*pagePerBlock)+status.index}</strong></li>
         </c:if>
         
         <c:if test="${(nowBlock*pagePerBlock)+status.index ne nowPage +1}">
         <li><a href="eventBoard.action?boardcd=${boardcd}&nowPage=${(nowBlock*pagePerBlock)+status.index-1}&nowBlock=${nowBlock}">${(nowBlock*pagePerBlock)+status.index}</a></li>
         </c:if>

      </c:if>
      </c:forEach>  
      </c:if>    
       <c:if test="${totalBlock eq nowBlock+1 }">
         <li><img src="/Air/img/board/btn_next.gif" alt="다음" /></li>
      </c:if>
      <c:if test="${totalBlock > nowBlock+1 }">
         <li><a  class="btn_next"
          href="eventBoard.action?boardcd=${boardcd}&nowBlock=${nowBlock+1}&nowPage=${pagePerBlock*(nowBlock+1)}">
          <img src="/Air/img/board/btn_next.gif" alt="다음" /></a></li>
      </c:if>

      
   </ul>
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