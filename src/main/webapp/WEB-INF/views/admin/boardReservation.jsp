<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>
<body>
	항공예매 리스트 보기

	<table>
		<colgroup>
			<col width="6%" />
			<col width="6%" />
			<col width="6%" />
			<col width="6%" />
			<col width="6%" />
			<col width="6%" />
			<col width="6%" />
			<col width="6%" />
			<col width="6%" />
			<col width="6%" />
			<col width="6%" />
			<col width="6%" />
			<col width="6%" />
			<col width="6%" />
			<col width="6%" />
			<col width="6%" />
			<col width="6%" />
		</colgroup>
		 <thead>
		<tr>
			<th scope="col">항공기 코드</th>
			<th scope="col">예약 번호</th>
			<th scope="col">국내/국제선</th>
			<th scope="col">예약 라인</th>
			<th scope="col">출발 도시</th>
			<th scope="col">도착 도시</th>
			<th scope="col">출발일</th>
			<th scope="col">도착일</th>
			<th scope="col">출발시각</th>
			<th scope="col">도착시각</th>
			<th scope="col">유효기간</th>
			<th scope="col">예약된  좌석</th>
			<th scope="col">총 좌석</th>
			<th scope="col">항공사</th>
			<th scope="col">성인요금</th>
			<th scope="col">소아요금</th>
			<th scope="col">유아요금</th>
		</tr>
	 	</thead>
	 	
	 	<tbody>
	 	<c:forEach var="dto" items="${reserList}">
	 	<tr  style="text-align:center;">
	 		<td>${dto.getAircraftCode() }</td>
	 		<td>${dto.getReserNum() }</td>
	 		<td>${dto.getReserveCode()}</td>
	 		<td>${dto.getReserveLine()}</td>
	 		<td>${dto.getStartCity() }</td>
	 		<td>${dto.getEndCity() }</td>
	 		<td>${dto.getStartDate() }</td>
	 		<td>${dto.getEndDate() }</td>
	 		<td>${dto.getStartTime() }</td>
	 		<td>${dto.getEndTime() }</td>
	 		<td>${dto.getExDate() }</td>
	 		<td>${dto.getSeat() }</td>
	 		<td>${dto.getNum() }</td>
	 		<td>${dto.getAirLine() }</td>
	 		<td>${dto.getAdultTax() }</td>
	 		<td>${dto.getChildTax() }</td>
	 		<td>${dto.getToddleTax() }</td>
	 		
	 	</tr>
	 	</c:forEach>
	 	</tbody>
		<tr>
		</tr>
	</table>
</body>
</html>