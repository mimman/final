<%@ page contentType="text/html; charset=EUC-KR"%>
<%
    response.setStatus(HttpServletResponse.SC_OK);
%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>MIRACLE AIR &gt; ��޴� &gt; �߸޴� &gt; �Ҹ޴�</title>
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
      <h2 class="blind">���� ����</h2>

      <div class="tab_w clearfix v2">
         
      </div>

      <h3 class="blind">�ü���Ȳ</h3>

         <!-- �������� -->
         <div id="contentG">
         
            <!-- ���� -->

<h1>����������</h1>
            <!-- //���� -->

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