<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>회원서비스 &gt; 회원가입 &gt; 정보입력</title>

<jsp:include page="/inc/header2.jsp" flush="true" />
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
            <li class=""><a class="" href="updateUser.action">회원정보 수정</a></li>
            <li class="current"><a class="" href="">예약 관리</a></li>
            <li class=""><a class="" href="withdraw.action">회원 탈퇴</a></li>
         </ul>
      </div>
      <!-- //tab_w -->

      <h3 class="blind">시설현황</h3>

      <!-- 본문영역 -->
      <div id="contentG">
      
         <!-- 내용 -->
         <form action="joinCheck.action" method="post" class="join" name="join">
         <div class="joininfo">
            
            <h3>회원 수정</h3>
            
            <ul class="mt_30">
               
              
               <li>
                  <label for="inputName">이름</label><input type="text" id="name" name="name" value="${dto.getName() }" >
               </li>
               <li>
                  <label for="inputBirth">생년월일</label><input type="text" id="birth" name="birth" value="${dto.getBirth() }">
               </li>
               <li>
                  <label for="inputEmail">이메일</label><input type="email" id="email" name="email" value="${dto.getEmail() }">
               </li>
               <li>
                  <label for="inputAddress">주소</label><input type="text" id="address" name="address" value="${dto.getAddress() }">
               </li>
               <li>
                  <label for="inputNation">국가</label><input type="text" id="nation" name="nation" value="${dto.getNation() }">
               </li>
               <li>
                  <label for="inputPhone">phone</label><input type="text" id="phone" name="phone" value="${dto.getPhone() }">
               </li>
            </ul>
            
            <input type="button" value="확인" onclick="nullCheck()" class="mt_20" />
      
         </div>
         </form>
         
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