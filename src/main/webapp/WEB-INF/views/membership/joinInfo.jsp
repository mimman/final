<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>MIRACLE AIR &gt; ��޴� &gt; �߸޴� &gt; �Ҹ޴�</title>
<script>
function nullCheck(){
	var id = document.getElementById("id");
	var pw = document.getElementById("password");
	var pwConf = document.getElementById("password_confirm");
	var name = document.getElementById("name");
	var birth = document.getElementById("birth");
	var email = document.getElementById("email");
	var add = document.getElementById("address");
	var nation = document.getElementById("nation");
	var cell = document.getElementById("phone");
	

	//alert(id.value+pw.value+pwConf.value+name.value+birth.value+email.value+add.value+nation.value+cell.value);
	if(id == null ||id == undefined || id.value ==""){
		alert("���̵�  �Է����ּ���");
	}
	else if((pw == null ||pw == undefined ||pw.value =="")  
			|| (pwConf == null ||pwConf == undefined ||pwConf.value =="")){
		alert("��й�ȣ�� �Է����ּ���")
	}
	else if(name == null  ||name == undefined ||name.value ==""){
		alert("�̸��� �Է����ּ���")
	}
	else if(birth == null  ||birth == undefined ||birth.value ==""){
		alert("���� ���� �� �Է����ּ���")
	}
	else if(email == null ||email == undefined ||email.value ==""){
		alert("�̸����� �Է����ּ���")
	}
	else if(add == null ||add == undefined ||add.value ==""){
		alert("�ּҸ� �Է����ּ���")
	}
	else if(nation == null ||nation == undefined ||nation.value ==""){
		alert("������ �Է����ּ���")
	}
	else if(cell == null ||cell == undefined ||cell.value ==""){
		alert("��ȭ��ȣ�� �Է����ּ���")
	}
	else{
		if(pwCheck() && emailCheck())
		document.join.submit();
	}

}

function pwCheck(){
	var pw = document.getElementById("password");
	var pwConf = document.getElementById("password_confirm")

	
	if(pw.value.length < 6 ){
		alert("��й�ȣ�� 6�� �̻��� �Է����ּ���");
		return false;
	}
	else if(pw.value != pwConf.value){
		alert("��й�ȣ�� �ٸ��ϴ�")
		return false;
	}
	return true;
}
function emailCheck(){
	var email = document.getElementById("email");
	var format  = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
	
	if(email.value.search(format)==-1){
		alert("�̸��� ���Ŀ� �°� �Է��� �ּ���");
		$("#email").focus();
		return false;
	}
	return true;
}

</script>
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
      <h2 class="blind">���� ����</h2>

         <!-- //contentG_title -->

      <h3 class="blind">�ü���Ȳ</h3>

      <!-- contentG -->
      <div id="contentG">

         <!-- �������� -->
         <div id="contentG_w">


            <!-- ���� -->
<form action="joinCheck.action" method="post" class="join" name="join">
		<h2>ȸ������<br/><br/><br/></h2>
		<div>
			<div>
				<label for="inputId">���̵�</label> 
				<input type="text" id="id" name="id">
			</div>
  

		</div>

		<div>
			<div>
				<label for="inputPassword">��й�ȣ</label>
				<input type="password"  id="password" name="password" placeholder="��й�ȣ">
					
			</div>

		</div>

		<div>
			<div>
				<label for="inputConfirPw">��й�ȣ Ȯ��</label> 
				<input type="password" id="password_confirm" id="password_confirm" name="password_confirm" placeholder="��й�ȣ Ȯ��">
			</div>

		</div>

		<div>
			<div>
				<label for="inputName">�̸�</label> <input type="text" id="name" name="name" placeholder="�̸�" >
			</div>
			<div></div>
		</div>
		<div>
			<div>
				<label for="inputBirth">���� �� ��</label> <input type="text" id="birth" name="birth" placeholder="0000-00-00">
			</div>
			<div></div>
		</div>


		<div>
			<div>
				<label for="inputEmail">�̸���</label> <input type="email" id="email" name="email" placeholder="�̸���">
			</div>

		</div>
		<div>
			<div>
				<label for="inputAddress">�ּ�</label> <input type="text" id="address" name="address" placeholder="�ּ�">
			</div>

		</div>
		<div>
			<div>
				<label for="inputNation">����</label> <input type="text" id="nation" name="nation" placeholder="����">
					
			</div>

		</div>
		<div>
			<div>
				<label for="inputPhone">phone</label> <input type="text" id="phone" name="phone" placeholder="��ȭ��ȣ">
			</div>

		</div>
		

		<div>
			<label for="inputName"></label>

			<div>
				<input type="button" value="Ȯ��" onclick="nullCheck()">
			</div>
		</div>
	</form>

            <!-- //���� -->

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