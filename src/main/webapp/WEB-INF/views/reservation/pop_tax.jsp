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
function submitForm(reserveLine){
		document.form.submit();	
}
function post_to_url(startTime,endTime,airLine,adultTax,childTax,toddleTax,reserNum,reserveLine){
	
	
	document.getElementById("startTime").value = startTime;
	document.getElementById("endTime").value = endTime;
	document.getElementById("airLine").value = airLine;
	document.getElementById("adultTax").value = adultTax;
	document.getElementById("childTax").value = childTax;
	document.getElementById("toddleTax").value = toddleTax;
	document.getElementById("reserveNum").value = reserNum;

}



function post_to_url2(startTime,endTime,airLine,adultTax,childTax,toddleTax,reserNum){
	
	document.getElementById("startTime2").value = startTime;
	document.getElementById("endTime2").value = endTime;
	document.getElementById("airLine2").value = airLine;
	document.getElementById("adultTax2").value = adultTax;
	document.getElementById("childTax2").value = childTax;
	document.getElementById("toddleTax2").value = toddleTax;
	document.getElementById("reserveNum2").value = reserNum;

}

function post_to_url3(startTime,endTime,airLine,adultTax,childTax,toddleTax,reserNum){
	
	document.getElementById("startTime3").value = startTime;
	document.getElementById("endTime3").value = endTime;
	document.getElementById("airLine3").value = airLine;
	document.getElementById("adultTax3").value = adultTax;
	document.getElementById("childTax3").value = childTax;
	document.getElementById("toddleTax3").value = toddleTax;
	document.getElementById("reserveNum3").value = reserNum;

}


function tax(adultTax,adult,childTax,child,toddleTax,toddle){

	
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

function tax1(adultTax,adult,childTax,child,toddleTax,toddle){

	
	if(child == 0 && toddle == 0){
		$('#tax1').html('('+adultTax + '*'+ adult+')'+ '=' + adultTax*adult);
	}
	else if(adult == 0 && toddle == 0){
		$('#tax1').html('('+childTax + '*'+ child+')'+ '=' + childTax*child);
	}
	else if(adult == 0 && child == 0){
		$('#tax1').html('('+toddleTax + '*'+ toddle+')'+ '=' + toddleTax*toddle);
	}
	else if(toddle == 0){
		$('#tax1').html('('+adultTax + '*'+ adult+')'+'+'+'('+childTax + '*'+ child+')'+ '=' + adultTax*adult+childTax*child);
	}
	else if(child == 0){
		$('#tax1').html('('+adultTax + '*'+ adult+')'+'+'+'('+toddleTax + '*'+ toddle+')'+ '=' + adultTax*adult+toddleTax*toddle);
	}
	else if(adult == 0){
		$('#tax1').html('('+childTax + '*'+ child+')'+'+'+'('+toddleTax + '*'+ toddle+')'+ '=' + childTax*child+toddleTax*toddle);
	}
	else{
		$('#tax1').html('('+adultTax + '*'+ adult+')'+'+'+'('+childTax + '*'+ child+')'+'+'+'('+toddleTax + '*'+ toddle+')'+ '=' + ((adultTax*adult)+(childTax*child)+(toddleTax*toddle)));
	}
	
}

function tax2(adultTax,adult,childTax,child,toddleTax,toddle){

	
	if(child == 0 && toddle == 0){
		$('#tax2').html('('+adultTax + '*'+ adult+')'+ '=' + adultTax*adult);
	}
	else if(adult == 0 && toddle == 0){
		$('#tax2').html('('+childTax + '*'+ child+')'+ '=' + childTax*child);
	}
	else if(adult == 0 && child == 0){
		$('#tax2').html('('+toddleTax + '*'+ toddle+')'+ '=' + toddleTax*toddle);
	}
	else if(toddle == 0){
		$('#tax2').html('('+adultTax + '*'+ adult+')'+'+'+'('+childTax + '*'+ child+')'+ '=' + adultTax*adult+childTax*child);
	}
	else if(child == 0){
		$('#tax2').html('('+adultTax + '*'+ adult+')'+'+'+'('+toddleTax + '*'+ toddle+')'+ '=' + adultTax*adult+toddleTax*toddle);
	}
	else if(adult == 0){
		$('#tax2').html('('+childTax + '*'+ child+')'+'+'+'('+toddleTax + '*'+ toddle+')'+ '=' + childTax*child+toddleTax*toddle);
	}
	else{
		$('#tax2').html('('+adultTax + '*'+ adult+')'+'+'+'('+childTax + '*'+ child+')'+'+'+'('+toddleTax + '*'+ toddle+')'+ '=' + ((adultTax*adult)+(childTax*child)+(toddleTax*toddle)));
	}
	
}

function tax3(adultTax,adult,childTax,child,toddleTax,toddle){

	
	if(child == 0 && toddle == 0){
		$('#tax3').html('('+adultTax + '*'+ adult+')'+ '=' + adultTax*adult);
	}
	else if(adult == 0 && toddle == 0){
		$('#tax3').html('('+childTax + '*'+ child+')'+ '=' + childTax*child);
	}
	else if(adult == 0 && child == 0){
		$('#tax3').html('('+toddleTax + '*'+ toddle+')'+ '=' + toddleTax*toddle);
	}
	else if(toddle == 0){
		$('#tax3').html('('+adultTax + '*'+ adult+')'+'+'+'('+childTax + '*'+ child+')'+ '=' + adultTax*adult+childTax*child);
	}
	else if(child == 0){
		$('#tax3').html('('+adultTax + '*'+ adult+')'+'+'+'('+toddleTax + '*'+ toddle+')'+ '=' + adultTax*adult+toddleTax*toddle);
	}
	else if(adult == 0){
		$('#tax3').html('('+childTax + '*'+ child+')'+'+'+'('+toddleTax + '*'+ toddle+')'+ '=' + childTax*child+toddleTax*toddle);
	}
	else{
		$('#tax3').html('('+adultTax + '*'+ adult+')'+'+'+'('+childTax + '*'+ child+')'+'+'+'('+toddleTax + '*'+ toddle+')'+ '=' + ((adultTax*adult)+(childTax*child)+(toddleTax*toddle)));
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
         <c:if test="${userReserDto.getReserveLine() ne '다구간여정' }">
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
         <td class="pd_10 end"><label for="sel1_1" class="blind">항공편 선택</label><input type="radio" id="sel1_1" name="sel_air" onclick="tax(${dto.getAdultTax()}, ${hdto.getAdult() }, ${dto.getChildTax() },${hdto.getChild() },${dto.getToddleTax() },${hdto.getToddle() });post_to_url('${dto.getStartTime() }','${dto.getEndTime()}','${dto.getAirLine()}',${dto.getAdultTax()}, ${dto.getChildTax()},${dto.getToddleTax()},${dto.getReserNum() },'${userReserDto.getReserveLine()}')" /></td>
         </tr>
     	</c:forEach>
     	
     	 
         </tbody>
         </table>
      </div>
      </c:if>
      <!-- //tbl_sch -->
      
      <c:if test="${userReserDto.getReserveLine() eq '왕복' }">
      <div class="taxbox_w v2 clear mt_30">
         <p class="fl">오는항공</p>
         <p class="fl">
            <em>${userReserDto.getEndCity()} → ${userReserDto.getStartCity()}</em>
            (${userReserDto.getEndDate() })<br />
            <span>성인 <strong>${userReserDto.getAdult()}</strong>명, 소아 <strong>${userReserDto.getChild()}</strong>명, 유아 <strong>${userReserDto.getToddle() }</strong>명</span>
         </p>
         <p class="fr"><em id="tax2" name="tax2">0</em> 원</p>
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
         
         <c:forEach var="dto" items="${reserveDto2}">
         <tr>
        <td class="first">${dto.getAircraftCode() }</td>
         <td>${dto.getStartTime() }</td>
         <td>${dto.getEndTime() }</td>
         <td>${dto.getAdultTax() * hdto.getAdult() + dto.getChildTax()*hdto.getChild() +dto.getToddleTax()*hdto.getToddle()}원</td>
         <td>${dto.getSeat() } 석</td>
         <td class="pd_10 end"><label for="sel2_1" class="blind">항공편 선택</label><input type="radio" id="sel2_1" name="sel_air2" 
         onclick="tax2(${dto.getAdultTax()}, ${hdto.getAdult() }, ${dto.getChildTax() },${hdto.getChild() },${dto.getToddleTax() },${hdto.getToddle() });post_to_url2('${dto.getStartTime() }','${dto.getEndTime()}','${dto.getAirLine()}',${dto.getAdultTax()}, ${dto.getChildTax()},${dto.getToddleTax()},${dto.getReserNum() })"/></td>
         </tr>
         </c:forEach>
          
         
         </tbody>
         </table>
      </div>
      </c:if>
      <!-- 다구간여정 -->
      <c:if test="${userReserDto.getReserveLine() eq '다구간여정' }">
      <div class="taxbox_w clear">
         <p class="fl">첫번째 항공 </p>
         <p class="fl">
            <em> ${userReserDto.getStartCity1()} → ${userReserDto.getEndCity1()} </em>
            (${userReserDto.getStartDate1() })<br />
            <span>성인 <strong>${userReserDto.getAdult()}</strong>명, 소아 <strong>${userReserDto.getChild()}</strong>명, 유아 <strong>${userReserDto.getToddle() }</strong>명</span>
         </p>
         <p class="fr"><em id="tax1" name="tax1">0</em> 원</p>
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
         
          
          <c:forEach var="dto" items="${mDto1}">
         <tr>
         	<td class="first">${dto.getAircraftCode()} </td>
         	<td>${dto.getStartTime() }</td>
         	<td>${dto.getEndTime() }</td>
        	 <td>${dto.getAdultTax() * hdto.getAdult() + dto.getChildTax()*hdto.getChild() +dto.getToddleTax()*hdto.getToddle()}원</td>
         	<td>${dto.getSeat() } 석</td>
         	<td class="pd_10 end"><label for="sel1" class="blind">항공편 선택</label><input type="radio" id="sel1" name="sel1" 
         onclick="tax1(${dto.getAdultTax()}, ${hdto.getAdult() }, ${dto.getChildTax() },${hdto.getChild() },${dto.getToddleTax() },${hdto.getToddle() });post_to_url('${dto.getStartTime() }','${dto.getEndTime()}','${dto.getAirLine()}',${dto.getAdultTax()}, ${dto.getChildTax()},${dto.getToddleTax()},${dto.getReserNum() })"/></td>
         </tr>
         </c:forEach>
     	
     	 
         </tbody>
         </table>
      </div>
      
      
      <!-- //tbl_sch -->
      
        <div class="taxbox_w clear mt_20">
         <p class="fl">두번째 항공 </p>
         <p class="fl">
            <em> ${userReserDto.getStartCity2()} → ${userReserDto.getEndCity2()} </em>
            (${userReserDto.getStartDate2() })<br />
            <span>성인 <strong>${userReserDto.getAdult()}</strong>명, 소아 <strong>${userReserDto.getChild()}</strong>명, 유아 <strong>${userReserDto.getToddle() }</strong>명</span>
         </p>
         <p class="fr"><em id="tax2" name="tax2">0</em> 원</p>
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
         
          
          <c:forEach var="dto" items="${mDto2}">
         <tr>
         	<td class="first">${dto.getAircraftCode() }</td>
         	<td>${dto.getStartTime() }</td>
         	<td>${dto.getEndTime() }</td>
        	 <td>${dto.getAdultTax() * hdto.getAdult() + dto.getChildTax()*hdto.getChild() +dto.getToddleTax()*hdto.getToddle()}원</td>
         	<td>${dto.getSeat() } 석</td>
         	<td class="pd_10 end"><label for="sel2" class="blind">항공편 선택</label><input type="radio" id="sel2" name="sel2" 
         onclick="tax2(${dto.getAdultTax()}, ${hdto.getAdult() }, ${dto.getChildTax() },${hdto.getChild() },${dto.getToddleTax() },${hdto.getToddle() });post_to_url2('${dto.getStartTime() }','${dto.getEndTime()}','${dto.getAirLine()}',${dto.getAdultTax()}, ${dto.getChildTax()},${dto.getToddleTax()},${dto.getReserNum() })"/></td>
         </tr>
         </c:forEach>
     	
     	 
         </tbody>
         </table>
      </div>
      
      
      <!-- //tbl_sch -->
      
        <div class="taxbox_w clear mt_20">
         <p class="fl">세번째 항공 </p>
         <p class="fl">
            <em> ${userReserDto.getStartCity3()} → ${userReserDto.getEndCity3()} </em>
            (${userReserDto.getStartDate3() })<br />
            <span>성인 <strong>${userReserDto.getAdult()}</strong>명, 소아 <strong>${userReserDto.getChild()}</strong>명, 유아 <strong>${userReserDto.getToddle() }</strong>명</span>
         </p>
         <p class="fr"><em id="tax3" name="tax3">0</em> 원</p>
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
         
          
          <c:forEach var="dto" items="${mDto3}">
         <tr>
         	<td class="first">${dto.getAircraftCode() }</td>
         	<td>${dto.getStartTime() }</td>
         	<td>${dto.getEndTime() }</td>
        	 <td>${dto.getAdultTax() * hdto.getAdult() + dto.getChildTax()*hdto.getChild() +dto.getToddleTax()*hdto.getToddle()}원</td>
         	<td>${dto.getSeat() } 석</td>
         	<td class="pd_10 end"><label for="sel3" class="blind">항공편 선택</label><input type="radio" id="sel3" name="sel3" 
         onclick="tax3(${dto.getAdultTax()}, ${hdto.getAdult() }, ${dto.getChildTax() },${hdto.getChild() },${dto.getToddleTax() },${hdto.getToddle() });post_to_url3('${dto.getStartTime() }','${dto.getEndTime()}','${dto.getAirLine()}',${dto.getAdultTax()}, ${dto.getChildTax()},${dto.getToddleTax()},${dto.getReserNum() })"/></td>
         </tr>
         </c:forEach>
     	
     	 
         </tbody>
         </table>
      </div>
      
      
      <!-- //tbl_sch -->
     </c:if>
      
      
      <input type="button" onclick="submitForm('${userReserDto.getReserveLine()}');" value="확인">
      
      <!-- //tbl_sch -->
      <form method="post" action="reserveOk.action" id="form" name="form">
      	<c:if test="${userReserDto.getReserveLine() ne '다구간여정'}">
      	<input type="hidden" id="startTime" name="startTime" value="" />
      	<input type="hidden" id="endTime" name="endTime" value="" />
      	<input type="hidden" id="airLine" name="airLine" value="" />
      	<input type="hidden" id="adultTax" name="adultTax" value="" />
      	<input type="hidden" id="childTax" name="childTax" value="" />
      	<input type="hidden" id="toddleTax" name="toddleTax" value="" />
      	<input type="hidden" id="reserveNum" name="reserveNum" value="" />
      	</c:if>
      	<c:if test="${userReserDto.getReserveLine() eq '왕복'}">
      	 <input type="hidden" id="startTime2" name="startTime2" value="" />
      	<input type="hidden" id="endTime2" name="endTime2" value="" />
      	<input type="hidden" id="airLine2" name="airLine2" value="" />
      	<input type="hidden" id="adultTax2" name="adultTax2" value="" />
      	<input type="hidden" id="childTax2" name="childTax2" value="" />
      	<input type="hidden" id="toddleTax2" name="toddleTax2" value="" />
      	<input type="hidden" id="reserveNum2" name="reserveNum2" value="" />
      	</c:if>
      		<c:if test="${userReserDto.getReserveLine() eq '다구간여정'}">
      			<input type="hidden" id="startTime" name="startTime" value="" />
      	<input type="hidden" id="endTime" name="endTime" value="" />
      	<input type="hidden" id="airLine" name="airLine" value="" />
      	<input type="hidden" id="adultTax" name="adultTax" value="" />
      	<input type="hidden" id="childTax" name="childTax" value="" />
      	<input type="hidden" id="toddleTax" name="toddleTax" value="" />
      	<input type="hidden" id="reserveNum" name="reserveNum" value="" />
        
        <input type="hidden" id="startTime2" name="startTime2" value="" />
      	<input type="hidden" id="endTime2" name="endTime2" value="" />
      	<input type="hidden" id="airLine2" name="airLine2" value="" />
      	<input type="hidden" id="adultTax2" name="adultTax2" value="" />
      	<input type="hidden" id="childTax2" name="childTax2" value="" />
      	<input type="hidden" id="toddleTax2" name="toddleTax2" value="" />
      	<input type="hidden" id="reserveNum2" name="reserveNum2" value="" />
      	
      	<input type="hidden" id="startTime3" name="startTime3" value="" />
      	<input type="hidden" id="endTime3" name="endTime3" value="" />
      	<input type="hidden" id="airLine3" name="airLine3" value="" />
      	<input type="hidden" id="adultTax3" name="adultTax3" value="" />
      	<input type="hidden" id="childTax3" name="childTax3" value="" />
      	<input type="hidden" id="toddleTax3" name="toddleTax3" value="" />
      	<input type="hidden" id="reserveNum3" name="reserveNum3" value="" />
      	</c:if>
      	
      </form>
  
		
   </div>
   <!-- //pop_wrap_b -->

</div>
<!-- //팝업 -->

</body>
</html>