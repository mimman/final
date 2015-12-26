<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>MIRACLE AIR &gt; 대메뉴 &gt; 중메뉴 &gt; 소메뉴</title>
<script>
function nullCheck(){
	
	var name = document.getElementById("name");
	var birth = document.getElementById("birth");
	var email = document.getElementById("email");
	var add = document.getElementById("address");
	var nation = document.getElementById("nation");
	var cell = document.getElementById("phone");
	

	
	if(name == null  ||name == undefined ||name.value ==""){
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
		if(emailCheck())
		document.join.submit();
	}

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
     

        
         <!-- //contentG_title -->

  

      <!-- contentG -->
      <div id="contentG">

         <!-- 본문영역 -->
         <div id="contentG_w">


            <!-- 내용 -->


<form action="updateUser.action" method="post" class="join" name="join">
	<input type="hidden" name="id" value="${id}" >
		<h2>회원정보 수정<br/><br/><br/></h2>
		
		
		
		<div>
			<div>
				<label for="inputName">이름</label> <input type="text" id="name" name="name" value="${dto.getName() }" >
			</div>
			<div></div>
		</div>
		<div>
			<div>
				<label for="inputBirth">생년 월 일</label> <input type="text" id="birth" name="birth" value="${dto.getBirth() }">
			</div>
			<div></div>
		</div>


		<div>
			<div>
				<label for="inputEmail">이메일</label> <input type="email" id="email" name="email" value="${dto.getEmail() }">
			</div>

		</div>
		<div>
			<div>
				<label for="inputAddress">주소</label> <input type="text" id="address" name="address" value="${dto.getAddress() }">
			</div>

		</div>
		<div>
			<div>
				<label for="inputNation">국가</label> <input type="text" id="nation" name="nation" value="${dto.getNation() }">
					
			</div>

		</div>
		<div>
			<div>
				<label for="inputPhone">phone</label> <input type="text" id="phone" name="phone" value="${dto.getPhone() }">
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