<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width">
<title>항공권예매 &gt; 국제선항공 &gt; 항공편 및 운임 선택</title>
<link rel="stylesheet" href="/Air/css/import.css" />
<style type="text/css">
html{overflow-y:auto !important;margin:0;padding:0;}
body#pop{margin:0;padding:20px;}
</style>
<script src="/Air/js/jquery-1.11.2.min.js"></script>
<Script>
function post_to_url(path,startTime,endTime,airLine,adultTax,childTax,toddleTax,reserNum,method){
	if(confirm("예약을 하시겠습니까?")){
		method = method || "post";
		
		var form = document.createElement("form");
		form.setAttribute("method", method);
		form.setAttribute("action", path);
		
		var hiddenField = document.createElement("input");
		hiddenField.setAttribute("type", "hidden");
		hiddenField.setAttribute("name", "startTime");
		hiddenField.setAttribute("id", "startTime");
		hiddenField.setAttribute("value", startTime);
		
		var hiddenField2 = document.createElement("input");
		hiddenField2.setAttribute("type", "hidden");
		hiddenField2.setAttribute("name", "endTime");
		hiddenField2.setAttribute("id", "endTime");
		hiddenField2.setAttribute("value", endTime);
		
		var hiddenField3 = document.createElement("input");
		hiddenField3.setAttribute("type", "hidden");
		hiddenField3.setAttribute("name", "airLine");
		hiddenField3.setAttribute("id", "airLine");
		hiddenField3.setAttribute("value", airLine);
		
		var hiddenField4 = document.createElement("input");
		hiddenField4.setAttribute("type", "hidden");
		hiddenField4.setAttribute("name", "adultTax");
		hiddenField4.setAttribute("id", "adultTax");
		hiddenField4.setAttribute("value", adultTax);
		
		var hiddenField5 = document.createElement("input");
		hiddenField5.setAttribute("type", "hidden");
		hiddenField5.setAttribute("name", "childTax");
		hiddenField5.setAttribute("id", "childTax");
		hiddenField5.setAttribute("value", childTax);
		
		var hiddenField6 = document.createElement("input");
		hiddenField6.setAttribute("type", "hidden");
		hiddenField6.setAttribute("name", "toddleTax");
		hiddenField6.setAttribute("id", "toddleTax");
		hiddenField6.setAttribute("value", toddleTax);
		
		var hiddenField7 = document.createElement("input");
		hiddenField7.setAttribute("type", "hidden");
		hiddenField7.setAttribute("name", "reserveNum");
		hiddenField7.setAttribute("id", "reserveNum");
		hiddenField7.setAttribute("value", reserNum);
		
		form.appendChild(hiddenField);
		form.appendChild(hiddenField2);
		form.appendChild(hiddenField3);
		form.appendChild(hiddenField4);
		form.appendChild(hiddenField5);
		form.appendChild(hiddenField6);
		form.appendChild(hiddenField7);
		
		document.body.appendChild(form);
		form.submit();
	}
	
}


function tax(adultTax,adult,childTax,child,toddleTax,toddle){
	//document.getElementById("tax").html(tax);
	//$('#tax').html(Tax);
	
	if(child == 0 && toddle == 0){
		$('#tax').html('('+adultTax + '*'+ adult+')'+ '=' + adultTax*adult);
	}
	else if(adult == 0 && toddle == 0){
		$('#tax').html('('+childTax + '*'+ child+')'+ '=' + childTax*child);
	}
	else if(adult == 0 && child == 0){
		$('#tax').html('('+toddleTax + '*'+ toddle+')'+ '=' + toddleTax*toddle);
	}
	else if(toddle == 0){
		$('#tax').html('('+adultTax + '*'+ adult+')'+'+'+'('+childTax + '*'+ child+')'+ '=' + adultTax*adult+childTax*child);
	}
	else if(child == 0){
		$('#tax').html('('+adultTax + '*'+ adult+')'+'+'+'('+toddleTax + '*'+ toddle+')'+ '=' + adultTax*adult+toddleTax*toddle);
	}
	else if(adult == 0){
		$('#tax').html('('+childTax + '*'+ child+')'+'+'+'('+toddleTax + '*'+ toddle+')'+ '=' + childTax*child+toddleTax*toddle);
	}
	else{
		$('#tax').html('('+adultTax + '*'+ adult+')'+'+'+'('+childTax + '*'+ child+')'+'+'+'('+toddleTax + '*'+ toddle+')'+ '=' + ((adultTax*adult)+(childTax*child)+(toddleTax*toddle)));
	}
	
	
	
	
}
</Script>
</head>
<body id="pop">
<div class="pop_s">
   <div class="pop_wrap_h">
      <div class="pop_tit">
      <h1>국내 실시간 항공권</h1>
      <p class="mt_5">원하시는 항공 여정을 선택해 주세요. </p>
      </div>
   </div>
   <!-- //pop_wrap_h -->

   <div class="pop_wrap_b mt_20">
      
      <div class="taxbox_w clear">
         <p class="fl">가는항공 </p>
         <p class="fl">
            <em> ${userReserDto.getStartCity()} → ${userReserDto.getEndCity()} </em>
            (${userReserDto.getStartDate() })<br />
            <span>성인 <strong>${userReserDto.getAdult()}</strong>명, 소아 <strong>${userReserDto.getChild()}</strong>명, 유아 <strong>${userReserDto.getToddle() }</strong>명</span>
         </p>
         <p class="fr"><em id="tax" name="tax">0</em> 원</p>
      </div>

      <div class="tbl_sch_box">
         <table cellspacing="0" border="1" summary="항공편 정보,출발시간,도착시간,항공운임,잔여좌석 정보 전달" width="100%" cellpadding="0" class="tbl_sch">
         <caption>항공편 글목록</caption>
         <colgroup>
         <col width="*">
         <col width="17%">
         <col width="17%">
         <col width="20%">
         <col width="14%">
         <col width="14%">
         </colgroup>
         <thead>
         <tr>
         <th scope="col" class="first">항공편 정보</th>
         <th scope="col">출발시간</th>
         <th scope="col">도착시간</th>
         <th scope="col">항공운임</th>
         <th scope="col">잔여좌석</th>
         <th scope="col" class="end">선택</th>
         </tr>
         </thead>
         <tbody>
         
         <c:forEach var="dto" items="${reserveDto}">
         <tr>
         <td class="first">${dto.getAircraftCode() }</td>
         <td>${dto.getStartTime() }</td>
         <td>${dto.getEndTime() }</td>
         <td>${dto.getAdultTax() * hdto.getAdult() + dto.getChildTax()*hdto.getChild() +dto.getToddleTax()*hdto.getToddle()}원</td>
         <td>${dto.getSeat() } 석</td>
         <!--  <td class="pd_10 end"><label for="sel1_1" class="blind">항공편 선택</label><input type="radio" id="sel1_1" name="sel_air" onclick="tax(${dto.getAdultTax()}, ${hdto.getAdult() }, ${dto.getChildTax() },${hdto.getChild() },${dto.getToddleTax() },${hdto.getToddle() });post_to_url('reserveOk.action','${dto.getStartTime() }','${dto.getEndTime()}','${dto.getAircraftCode()}',${dto.getAdultTax() * hdto.getAdult() + dto.getChildTax()*hdto.getChild() +dto.getToddleTax()*hdto.getToddle()})" /></td> -->
         <td class="pd_10 end"><label for="sel1_1" class="blind">항공편 선택</label><input type="radio" id="sel1_1" name="sel_air" onclick="tax(${dto.getAdultTax()}, ${hdto.getAdult() }, ${dto.getChildTax() },${hdto.getChild() },${dto.getToddleTax() },${hdto.getToddle() });post_to_url('reserveOk.action','${dto.getStartTime() }','${dto.getEndTime()}','${dto.getAirLine()}',${dto.getAdultTax()}, ${dto.getChildTax()},${dto.getToddleTax()},${dto.getReserNum() })" /></td>
         </tr>
     	</c:forEach>
         </tbody>
         </table>
      </div>
      <!-- //tbl_sch -->
      
      <c:if test="${userReserDto.getReserveLine() eq '왕복' }">
      <div class="taxbox_w v2 clear mt_30">
         <p class="fl">오는항공</p>
         <p class="fl">
            <em>${userReserDto.getEndCity()} → ${userReserDto.getStartCity()}</em>
            (${userReserDto.getEndDate() })<br />
            <span>성인 <strong>${userReserDto.getAdult2()}</strong>명, 소아 <strong>${userReserDto.getChild2()}</strong>명, 유아 <strong>${userReserDto.getToddle2() }</strong>명</span>
         </p>
         <p class="fr"><em id="tax" name="tax">0</em> 원</p>
      </div>

      <div class="tbl_sch_box">
         <table cellspacing="0" border="1" summary="항공편 정보,출발시간,도착시간,항공운임,잔여좌석 정보 전달" width="100%" cellpadding="0" class="tbl_sch">
         <caption>항공편 글목록</caption>
         <colgroup>
         <col width="*">
         <col width="17%">
         <col width="17%">
         <col width="20%">
         <col width="14%">
         <col width="14%">
         </colgroup>
         <thead>
         <tr>
         <th scope="col" class="first">항공편 정보</th>
         <th scope="col">출발시간</th>
         <th scope="col">도착시간</th>
         <th scope="col">항공운임</th>
         <th scope="col">잔여좌석</th>
         <th scope="col" class="end">선택</th>
         </tr>
         </thead>
         <tbody>
         
         <c:forEach var="dto" items="${reserveDto}">
         <tr>
         <td class="first">${dto.getAircraftCode2() }</td>
         <td>${dto.getStartTime2() }</td>
         <td>${dto.getEndTime2() }</td>
         <td>${dto.getAdultTax2() * hdto.getAdult2() + dto.getChildTax2()*hdto.getChild2() +dto.getToddleTax2()*hdto.getToddle2()} 원</td>
         <td>${dto.getSeat2() } 석</td>
         <td class="pd_10 end"><label for="sel2_1" class="blind">항공편 선택</label><input type="radio" id="sel2_1" name="sel_air2" /></td>
         </tr>
         </c:forEach>
         
         
         </tbody>
         </table>
      </div>
      </c:if>
      <!-- //tbl_sch -->
      
      
		
   </div>
   <!-- //pop_wrap_b -->

</div>
<!-- //팝업 -->

</body>
</html>