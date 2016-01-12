<%@ page contentType="text/html; charset=utf-8"%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>회원서비스 &gt; 회원가입 &gt; 정보입력</title>
<jsp:include page="/inc/header2.jsp" flush="true" />
<!-- datepicker -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
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
	
   
   if(id == null ||id == undefined || id.value ==""){
      alert("아이디를  입력해주세요");
   }
   else if(id.value.length > 10){
	   alert("아이디는 10자 미만으로 입력해주세요")
	   id.value = "";
	   id.focus();
   }
   else if((pw == null ||pw == undefined ||pw.value =="")  
         || (pwConf == null ||pwConf == undefined ||pwConf.value =="")){
      alert("비밀번호를 입력해주세요")
   }
   else if(name == null  ||name == undefined ||name.value ==""){
      alert("이름을 입력해주세요")
   }
   else if(name.value.length > 10){
	   alert("이름은 10자 미만으로 입력해주세요")
	   name.value = "";
	   name.focus();
   }
   else if(birth == null  ||birth == undefined ||birth.value ==""){
      alert("생년 월일 을 입력해주세요")
   }
   else if(email == null ||email == undefined ||email.value ==""){
      alert("이메일을 입력해주세요")
   }
   else if(email.value.length > 30){
	   alert("이메일은 30자 미만으로 입력해주세요")
	   email.value= "";
	   email.focus();
   }
   else if(add == null ||add == undefined ||add.value ==""){
      alert("주소를 입력해주세요")
   }
   else if(add.value.length > 50){
	   alert("주소는 50자 미만으로 입력해주세요")
	   add.value= "";
	   add.focus();
   }
   else if(nation == null ||nation == undefined ||nation.value ==""){
      alert("국가를 입력해주세요")
   }
   else if(cell == null ||cell == undefined ||cell.value ==""){
      alert("전화번호를 입력해주세요")
   }
   else if(cell.value.length > 15){
	   alert("전화번호는 12자 미만으로 입력해주세요")
	   cell.value= "";
	   cell.focus();
   }
   else{
      if(pwCheck() && emailCheck())
      document.join.submit();
   }

}


	

function pwCheck(){
   var pw = document.getElementById("password");
   var pwConf = document.getElementById("password_confirm")

   
   if(pw.value.length < 6 && pw.value.length > 15){
      alert("비밀번호는 6 ~ 15자 사이의 값을 입력해주세요");
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

$(function() { 
	  $("#birth").datepicker({
	   dateFormat:'yy-mm-dd', //선택된 날짜 포맷(yyyy.mm.dd)
	   monthNamesShort: ['1월','2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	   monthNames: ['1월','2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	   dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],   
	   dayNamesShot: ['일', '월', '화', '수', '목', '금', '토'],
	   dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
	   firstDay: 1, //0: 일요일 부터 시작, 1:월요일 부터 시작
	   autoSize: true, //default: false, input 사이즈를 자동으로 리사이즈.
	   showAnim: "fold", //default: show
	   showWeek: false, //주차 보이기
	   weekHeader: "주차", //default: Wk, 주차 헤드 부분의 명칭 설정
	   changeMonth: true, //월 변경가능
	   changeYear: true, //년 변경가능
	   showMonthAfterYear: true, //년 뒤에 월 표시
	   yearRange: "1900:2016",
	   gotoCurrent: false //default: false, true일 경우에는 Today버튼 클릭 시 현재 일자로 이동하지 못함. false는 가능.
	  });
	 });


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
            <li class=""><a class="" href="">약관동의</a></li>
            <li class="current"><a class="" href="">회원가입</a></li>
            <li class=""><a class="" href="">가입완료</a></li>
         </ul>
      </div>
      <!-- //tab_w -->

      <h3 class="blind">시설현황</h3>

      <!-- 본문영역 -->
      <div id="contentG">
      
         <!-- 내용 -->
         
         <form action="joinCheck.action" method="post" class="join" name="join">
         <div class="joininfo">
            
            <h3>회원가입</h3>
            
            <ul class="mt_30">
               <li>
                  <label for="inputId">아이디</label>
                  <input type="text" id="id" name="id" placeholder="아이디" />
               </li>
               <li>
                  <label for="inputPassword">비밀번호</label>
                  <input type="password"  id="password" name="password" placeholder="비밀번호" />
               </li>
               <li>
                  <label for="inputConfirPw">비밀번호 확인</label>
                  <input type="password" id="password_confirm" id="password_confirm" name="password_confirm" placeholder="비밀번호 확인" />
               </li>
               <li>
                  <label for="inputName">이름</label><input type="text" id="name" name="name" placeholder="이름" />
               </li>
               <li>
                  <label for="inputBirth">생년월일</label><input class="datepicker" type="text"  id="birth" name="birth" placeholder="0000-00-00" />
               </li>
               <li>
                  <label for="inputEmail">이메일</label><input type="email" id="email" name="email" placeholder="이메일" />
               </li>
               <li>
                  <label for="inputAddress">주소</label><input type="text" id="address" name="address" placeholder="주소" />
               </li>
               <li>
                  <label for="inputNation">국가</label>
                  <select id="nation" name="nation" placeholder="국가" height="6">
                  	<option value="한국">한국</option>
                  	<option value="일본">일본</option>
                  	<option value="중국">중국</option>
                  	<option value="동남아시아">동남아시아</option>
                  	<option value="인도">인도</option>
                  	<option value="북미">북미</option>
                  	<option value="남미">남미</option>
                  	<option value="유럽">유럽</option>
                  	<option value="대양주">대양주</option>
                  	<option value="괌">괌</option>
                  	<option value="러시아">러시아</option>
                  	<option value="몽골">몽골</option>
                  	<option value="중앙아시아">중앙아시아</option>
                  	<option value="중동">중동</option>
                  	<option value="아프리카">아프리카</option>
                  </select>
               </li>
               <li>
                  <label for="inputPhone">phone</label><input type="text" id="phone" name="phone" placeholder="전화번호" />
               </li>
            </ul>
            
            <input type="button" value="확인" onclick="nullCheck(); getDate();" class="mt_20" />
      
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