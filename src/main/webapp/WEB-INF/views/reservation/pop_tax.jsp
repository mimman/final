<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width">
<title>항공권예매 &gt; 국제선항공 &gt; 항공편 및 운임 선택</title>
<link rel="stylesheet" href="/Air/css/import.css" />
<style type="text/css">
html{overflow-y:hidden !important;margin:0;padding:0;}
body#pop{margin:0;padding:20px;}
</style>
<script src="/Air/js/jquery-1.11.2.min.js"></script>
</head>
<body id="pop">
<div class="pop_s">
   <div class="pop_wrap_h">
      <div class="pop_tit">
      <h1>예약하기</h1>
      <p>원하시는 항공 여정을 선택해 주세요.</p>
      </div>
   </div>
   <!-- //pop_wrap_h -->

   <div class="pop_wrap_b">
      <h2>
      가는 항공편 선택
      </h2>

      <div class="tbl_sch_box mt_30">
         <table cellspacing="0" border="1" summary="도시,항공사,출발기간,총요금,유효기간,예상TAX,예약하기 정보 전달" width="100%" cellpadding="0" class="tbl_sch">
         <caption>항공편 글목록</caption>
         <colgroup>
         <col width="15%">
         <col width="13%">
         <col width="*">
         <col width="15%">
         <col width="15%">
         <col width="13%">
         <col width="13%">
         </colgroup>
         <thead>
         <tr>
         <th scope="col" class="first">도시</th>
         <th scope="col">항공사</th>
         <th scope="col">출발기간</th>
         <th scope="col">총요금</th>
         <th scope="col">유효기간</th>
         <th scope="col">예상TAX</th>
         <th scope="col" class="end">예약하기</th>
         </tr>
         </thead>
         <tbody>
         
         <tr>
         <td class="first">타이페이(타오위안)</td>
         <td>제주항공</td>
         <td>2015/12/23~2016/04/30</td>
         <td>141,000원</td>
         <td>매일출발</td>
         <td class="pd_10"><a href="javascript:openWin('popup.html','600','800')" class="btn_tax">TAX</a></td>
         <td class="pd_10 end"><a href="" class="btn_reser">예약</a></td>
         </tr>
         
         <tr>
         <td class="first">마카오</td>
         <td>중국동방항공</td>
         <td>2015/12/23~2016/03/31</td>
         <td>315,000원</td>
         <td>매일출발</td>
         <td class="pd_10"><a href="" class="btn_tax">TAX</a></td>
         <td class="pd_10 end"><a href="" class="btn_reser">예약</a></td>
         </tr>
         
         <tr>
         <td class="first">타이페이(타오위안)</td>
         <td>중국동방항공</td>
         <td>2015/12/23~2016/03/31</td>
         <td>308,300원</td>
         <td>매일출발</td>
         <td class="pd_10"><a href="" class="btn_tax">TAX</a></td>
         <td class="pd_10 end"><a href="" class="btn_reser">예약</a></td>
         </tr>
         
         </tbody>
         </table>
      </div>
      <!-- //tbl_sch -->

   </div>
   <!-- //pop_wrap_b -->

</div>
<!-- //팝업 -->

</body>
</html>