<%@ page contentType="text/html; charset=EUC-KR" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>ȸ������ &gt; �α���</title>
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

      <div class="sub_tit_w blind">
         <p>ȸ������</p>         
         <span class="mt_16">�α���</span>
      </div>
      <!-- //contentG_title -->

      <h3 class="blind">�α���</h3>

         <!-- �������� -->
         <div id="contentG">
         
         <!-- ���� -->
         
         <div class="login_box_w">

            <div class="login_box clear">
               <div class="left fl"></div>

               <div class="right fl">
                  <h4>login <em>ȸ���α���</em></h4>

                  <div class="txt">�̸����ּҿ� ��й�ȣ�� �Է����ּ���.<br />
                  �α��� �Ͻø� ���� ���ϰ� �¶��� ���񽺸� �̿��Ͻ� �� �ֽ��ϴ�.</div>
                  
                  <!-- �α��� -->
                  <div class="login_form mt_10">
                  
                     <form method="post" action="login.action">
                     <div class="email_w clear">
                     
                        <ul class="fl">
                        <li>
                           <em class="item1">
                           <label class="i_label" for="userid">���̵�</label>                           
                           <input name="log_id" class="i_text userid" style="width:273px;" id="log_id" type="text" value="${saveId}" title="*���̵� �Է��ϼ���." />
                           </em>
                        </li>
                        <li>
                           <em class="item1 mt_5">
                              <label class="i_label" for="userpw">��й�ȣ</label>
                              <input name="log_password" class="i_text userpw" style="width:273px;" id="log_password" type="password" value="" title="*��й�ȣ�� �Է��ϼ���." />
                           </em>
                        </li>
                        </ul>
                        <span class="btn fl">
                           <input type="submit" class="btn" value="�α���" />
                        </span>
                    
                     </div>
                	 <c:if test="${saveId ne null}">
                     <input type="checkbox" id="save_id" name="save_id" class="ch_id" checked="checked" /><label for="save_id" class="ch_id">&nbsp; ���̵� ����</label>
                     </c:if>
                     <c:if test="${saveId eq null}">
                    <input type="checkbox" id="save_id" name="save_id" class="ch_id" /><label for="save_id" class="ch_id">&nbsp; ���̵� ����</label>
                     </c:if>
 					</form>
                  </div>
                  <!-- //�α��� -->               

                  <!-- ��ư -->
                  <div class="login_menu">
                     <ul class="btn clear">
                        <li><a href="membership.action">ȸ������</a></li>
                        <li><a class="id" href="idSearch.action">���̵�ã��</a></li>
                        <li class="last"><a href="pwSearch.action">��й�ȣã��</a></li>
                     </ul>
                  </div>
                  <!-- //��ư -->

               </div>
               <!-- //left -->

            </div>
            <!-- //login_box -->
         </div>
         <!-- //login_box_w -->
         
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