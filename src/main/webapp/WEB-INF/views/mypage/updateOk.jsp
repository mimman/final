<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>���������� &gt; ȸ������ &gt; �����Ϸ�</title>
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
					<ul>
						<li class=""><a href="memberDetail.action">ȸ�� ����</a></li>
						<li class="current"><a href="updateUser.action">ȸ������ ����</a></li>
						<li class=""><a href="withdraw.action">ȸ�� Ż��</a></li>
					</ul>
				</div>
				<!-- //tab_w -->

      <h3 class="blind">��������</h3>

         <!-- �������� -->
         <div id="contentG">
         
            <!-- ���� -->
            
         <div class="ta_c">
         <img src="/Air/img/membership/userModify.jpg">
         
         <div></div><a class="v2 btn_m" href="index.action">Ȩ���� </a></div>
         </div>

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