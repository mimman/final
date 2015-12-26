<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>MIRACLE AIR &gt; 대메뉴 &gt; 중메뉴 &gt; 소메뉴</title>
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
		alert("아이디를  입력해주세요");
	}
	else if((pw == null ||pw == undefined ||pw.value =="")  
			|| (pwConf == null ||pwConf == undefined ||pwConf.value =="")){
		alert("비밀번호를 입력해주세요")
	}
	else if(name == null  ||name == undefined ||name.value ==""){
		alert("이름을 입력해주세요")
	}
	else if(birth == null  ||birth == undefined ||birth.value ==""){
		alert("생년 월일 을 입력해주세요")
	}
	else if(email == null ||email == undefined ||email.value ==""){
		alert("이메일을 입력해주세요")
	}
	else if(add == null ||add == undefined ||add.value ==""){
		alert("주소를 입력해주세요")
	}
	else if(nation == null ||nation == undefined ||nation.value ==""){
		alert("국가를 입력해주세요")
	}
	else if(cell == null ||cell == undefined ||cell.value ==""){
		alert("전화번호를 입력해주세요")
	}
	else{
		if(pwCheck() && emailCheck())
		document.join.submit();
	}

}

function pwCheck(){
	var pw = document.getElementById("password");
	var pwConf = document.getElementById("password_confirm")

	
	if(pw.value.length <= 6 ){
		alert("비밀번호는 6자 이상을 입력해주세요");
		return false;
	}
	else if(pw.value != pwConf.value){
		alert("비밀번호가 다릅니다")
		return false;
	}
	return true;
}
function emailCheck(){
	var email = document.getElementById("email");
	var format  = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
	
	if(email.value.search(format)==-1){
		alert("이메일 형식에 맞게 입력해 주세요");
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
      <h2 class="blind">본문 영역</h2>

         <!-- //contentG_title -->

      <h3 class="blind">시설현황</h3>

      <!-- contentG -->
      <div id="contentG">

         <!-- 본문영역 -->
         <div id="contentG_w">


            <!-- 내용 -->
<form action="joinCheck.action" method="post" class="join" name="join">
		<h2>회원가입<br/><br/><br/></h2>
		<div>
			<div>
				<label for="inputId">아이디</label> 
				<input type="text" id="id" name="id">
			</div>
  

		</div>

		<div>
			<div>
				<label for="inputPassword">비밀번호</label>
				<input type="password"  id="password" name="password" placeholder="비밀번호">
					
			</div>

		</div>

		<div>
			<div>
				<label for="inputConfirPw">비밀번호 확인</label> 
				<input type="password" id="password_confirm" id="password_confirm" name="password_confirm" placeholder="비밀번호 확인">
			</div>

		</div>

		<div>
			<div>
				<label for="inputName">이름</label> <input type="text" id="name" name="name" placeholder="이름" >
			</div>
			<div></div>
		</div>
		<div>
			<div>
				<label for="inputBirth">생년 월 일</label> <input type="text" id="birth" name="birth" placeholder="0000-00-00">
			</div>
			<div></div>
		</div>


		<div>
			<div>
				<label for="inputEmail">이메일</label> <input type="email" id="email" name="email" placeholder="이메일">
			</div>

		</div>
		<div>
			<div>
				<label for="inputAddress">주소</label> <input type="text" id="address" name="address" placeholder="주소">
			</div>

		</div>
		<div>
			<div>
				<label for="inputNation">국가</label> <input type="text" id="nation" name="nation" placeholder="국가">
					
			</div>

		</div>
		<div>
			<div>
				<label for="inputPhone">phone</label> <input type="text" id="phone" name="phone" placeholder="전화번호">
			</div>

		</div>
		

		<div>
			<label for="inputName"></label>

			<div>
				<input type="button" value="확인" onclick="nullCheck()">
			</div>
		</div>
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