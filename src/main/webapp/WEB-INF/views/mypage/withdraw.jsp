<%@ page contentType="text/html; charset=EUC-KR"%>
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
               <ul>
                  <li class=""><a href="memberDetail.action">ȸ�� ����</a></li>
                  <li class=""><a href="updateUser.action">ȸ������ ����</a></li>
                  <li class="current"><a href="withdraw.action">ȸ�� Ż��</a></li>
               </ul>
            </div>

            <!-- �������� -->
            <div id="contentG">

               <!-- ���� -->

               <div class="joininfo ta_c">
               <h3>ȸ�� Ż��</h3>
               <form method="post" action="withdraw.action">
                  <p class="mt_50 fz_20">���� Ż���Ͻðڽ��ϱ�?</p>
                  <input class="btn_m mt_50" type="submit" value="Ȯ��" />
               </form>
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