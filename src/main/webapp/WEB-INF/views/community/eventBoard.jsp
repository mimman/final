<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<table class="join">
	<caption>상품 보기</caption>
	<colgroup>
	<col width="10%" />
	<col width="*" />
	<col width="15%" />
	<col width="20%" />
	<col width="10%" />
	</colgroup>
     
   <thead>
         <tr align=center bgcolor=#D0D0D0 height=120%>
            <th scope="col"> 번호 </th>
            <th scope="col"> 제목 </th>
            <th scope="col"> 이름 </th>
            <th scope="col"> 날짜 </th>
            <th scope="col"> 조회수 </th>
         </tr>
   </thead>
   
   <tbody>
      
         <c:forEach var="dto" items="${list}">
         <tr>
            <td class="">${dto.getArticleno()}</td>
            <td class=><a href="eventRead.action?articleno=${dto.getArticleno()}">${dto.getTitle()}</td> 
            <td class="">${dto.getWriter()}</td>
            <td class="">${dto.getRegdate()}</td>
            <td class="">${dto.getHit()}</td>
         </tr>
   </c:forEach>
      
      </tbody>
      </table>
<div>
	
	<form action="eventWrite.action" name="board" method="post">
	<table border=0 width=527 align=center cellpadding=4 cellspacing=0 style="margin:0 auto;">
	<tr>
		<td align=center valign=bottom>
			<select name="keyField" size="1">
				<option value="id"> 이름
				<option value="noticetitle" > 제목
				<option value="noticecontext" > 내용
			</select>

			<input type="text" size="16" name="keyWord"  />
			<input type="button" value="찾기" onClick="check()" />
			<input type="submit" value="글쓰기" >
		</td>
	</tr>
	</table>
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