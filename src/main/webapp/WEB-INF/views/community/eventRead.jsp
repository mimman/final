<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/inc/header1.jsp" flush="true" />
<title>커뮤니티 &gt; 이벤트 </title>
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
   <table class="table">
      <caption>글보기</caption>
      <colgroup>
      <col width="25%" />
      <col width="75%" />
      </colgroup>
      <tr>
         <td colspan="6" bgcolor=#dddddd height=25 align=left class=m colspan=2></td>
      </tr>
       <tr> 
         <td align=left bgcolor=#dddddd width=10%> 제목 </td>
         <td>${boardDto.getTitle() } </td>
         <td align=left bgcolor=#dddddd width=10%> 등록날짜 </td>
         <td>${boardDto.getRegdate() }</td>
         <td align=left bgcolor=#dddddd width=10%> 글쓴이</td>
         <td>${boardDto.getWriter() }</td>
          <td align=left bgcolor=#dddddd width=10%> 조회수 </td>
         <td>${boardDto.getHit() }</td>
      </tr>
      <tr> 
         <td>${boardDto.getContent() }</td>
         
      </tr>
      <tr>
         <td colspan=4 align=right></td>
      </tr>
  
   </table>
 
   <hr size=1>
    <a href="eventBoard.action">목 록</a> 
   <a href="">답 변</a> 
   <a href="eventModifyPage.action?articleno=${boardDto.getArticleno()}&writer=${boardDto.getWriter() }">수 정</a> 
   <a href="evevBoardDelete.action?articleno=${boardDto.getArticleno()}&writer=${boardDto.getWriter() }">삭 제</a> <br>

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