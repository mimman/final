<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>커뮤니티 &gt; 공지사항 </title>
</head>
<body>
<table>
	<caption>상품 보기</caption>
	<colgroup>
	<col width="10%" />
	<col width="*" />
	<col width="15%" />
	<col width="20%" />
	<col width="10%" />
	</colgroup>
     
   <thead>
         <tr align=center bgcolor=#D0D0D0 height=120%>
            <th scope="col"> 번호 </th>
            <th scope="col"> 제목 </th>
            <th scope="col"> 이름 </th>
            <th scope="col"> 날짜 </th>
            <th scope="col"> 조회수 </th>
         </tr>
   </thead>
	<tbody>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</tbody>
      </table>

	
	<form>
	<table border=0 width=527 align=center cellpadding=4 cellspacing=0 style="margin:0 auto;">
	<tr>
		<td align=center valign=bottom>
			<select name="keyField" size="1">
				<option value="id"> 이름
				<option value="noticetitle" > 제목
				<option value="noticecontext" > 내용
			</select>

			<input type="text" size="16" name="keyWord"/>
			<input type="button" value="찾기" />
			<input type="hidden" name="page" value= "0" />
		</td>
	</tr>
	</table>
	</form>
</body>
</html>