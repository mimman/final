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
         <ul>
            <li class=""><a href="">공지사항</a></li>
            <li class="current"><a href="">이벤트</a></li>
            <li class=""><a href="">Q&A</a></li>
         </ul>
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
         <select name="keyField" size="1">
         <option value="id">이름</option>
         <option value="noticetitle" >제목</option>
         <option value="noticecontext" >내용</option>
         </select>
         <input type="text" class="i_text2" name="keyWord" />
         <input class="btn_m" type="button" value="찾기" onClick="check()" />
      </div>
      </div>
      <!-- //ta_r -->


 <div class="tbl_sch_box mt_10">
            <table cellspacing="0" border="1" summary="도시,항공사,출발기간,총요금,유효기간,예상TAX,예약하기 정보 전달" width="100%" cellpadding="0" class="tbl_sch v2">
      
            <caption>상품 보기</caption>
            <colgroup>
            <col width="10%" />
            <col width="*" />
            <col width="15%" />
            <col width="20%" />
            <col width="10%" />
            </colgroup>
            
            <thead>
            <tr>
               <th scope="col"> 번호 </th>
               <th scope="col"> 제목 </th>
               <th scope="col"> 이름 </th>
               <th scope="col"> 날짜 </th>
               <th scope="col"> 조회수 </th>
            </tr>
            </thead>

   
   <tbody>
      	
          <c:set var="doneLoop" value="false"/>
      
      <c:forEach items="${list}"  varStatus="status" begin="${beginPerPage}" end="${beginPerPage+numPerPage-1}" var="dto" >
       
       <c:if test="${not doneLoop}">
            <c:if test="${numPerPage*beginPerPage+status.index == totalRecord}">
                  <c:set var="doneLoop" value="true"/>
               </c:if>
         <tr>
            <td class="">${dto.getArticleno()}</td>
            <td class=><a href="eventRead.action?articleno=${dto.getArticleno()}">${dto.getTitle()}</a></td> 
            <td class="">${dto.getWriter()}</td>
            <td class="">${dto.getRegdate()}</td>
            <td class="">${dto.getHit()}</td>
         </tr>
        </c:if>
      </c:forEach>
      
      </tbody>
     </table>
         <div>
         <!-- //tbl_sch_box -->
         
         <form action="eventWrite.action" name="board" method="post">
         <div class="ta_r mt_10">
            <input class="btn_m" type="submit" value="글쓰기" >            
         </div>
         <!-- //ta_r -->
         </form>


      
	<ul class="pagination">

      <c:if test="${nowBlock > 0}">
         <li><a href="eventBoard.action?nowBlock=${nowBlock-1}&nowPage=${pagePerBlock*(nowBlock-1)}">이전 ${pagePerBlock}개</a></li>
      </c:if>
      
      <c:forEach begin="1" end="${sessionScope.pagedto.getPagePerBlock()}" varStatus="status">
      <c:if test="${not doneLoop}">
      
         <c:if test="${(nowBlock*pagePerBlock)+status.index == totalPage}">
             <c:set var="doneLoop" value="true"/>
         </c:if>
         <li><a href="eventBoard.action?nowPage=${(nowBlock*pagePerBlock)+status.index-1}&nowBlock=${nowBlock}">${(nowBlock*pagePerBlock)+status.index}</a></li>
         
      </c:if>
      </c:forEach>      
      
      <c:if test="${totalBlock > nowBlock+1 }">
         <li><a href="eventBoard.action?nowBlock=${nowBlock+1}&nowPage=${pagePerBlock*(nowBlock+1)}">다음 ${pagePerBlock} 개</a></li>
      </c:if>

      
   </ul>
   <%if(session.getAttribute("id") != null){
               %>
   <ul class="btn_r">
      
   
   <%
            }
            %>
   </ul>

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