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
      <div id="contentG">

      <!-- 내용 -->
      
      <div class="cont">
      <form method="post" action="eventWriteOk.action">
      
         <table class="table">
            <caption>상품 등록</caption>
            <colgroup>
               <col width="25%" />
               <col width="75%" />
            </colgroup>
      
            <tbody>
               <tr>
                  <th scope="row"><label for="g_cate">카테고리</label></th>     
                             
                  <td><select class="form-control" id="boardcd" name="boardcd">
                        <option value="notice" selected="selected">공지사항</option>
                        <option value="event" >이벤트</option>
                        <option value="qna">Q&A</option>
                   
                  </select></td>
                 
               
               </tr>
               <tr>
                  <th scope="row"><label for="title">제목</label></th>
                  <td>
                     <div class="form-group">
                        <input type="text" class="form-control" id="title"
                           name="title" />
                     </div>
                  </td>
               </tr>
               <tr>
                  <th scope="row"><label for="content">내용</label></th>
                  <td>
                     <div class="form-group">
                        <textarea rows="10" cols="50" id="content" name="content"></textarea>
                     </div>
                  </td>
               </tr>
               <tr>
                  <th scope="row">첨부파일</th>
                  <td>
                     <div class="form-group file">
                        <p>
                          
                        </p>
                        <input type="file" id="img" name="img" />
                     </div>
                  </td>
               </tr>
               <tr>
                  <th scope="row"><label for="boardpw">비밀번호</label></th>
                  <td>
                     <div class="form-group">
                        <input type="password" id="boardpw" name="boardpw" />
                     </div>
                  </td>
               </tr>
               
      
            </tbody>
         </table>
         <!-- //table -->
      
            <ul class="btn_c">
               <li>
                  <button type="submit" class="btn btn-primary">등록</button>
               </li>
               <li>
                  <button type="reset" class="btn btn-primary">다시쓰기</button>
               </li>
            </ul>
      
         </form>
      </div>
      <!-- //cont -->


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