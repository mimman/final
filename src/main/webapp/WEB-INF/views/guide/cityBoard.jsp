<%@ page contentType="text/html; charset=utf-8"%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>여행가이드 &gt; 도시가이드 </title>
<jsp:include page="/inc/header2.jsp" flush="true" />
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>

<script type="text/javascript">
function initialize() {
	  var count = 13; // 표시 개수
	  
	  var currentPos = new google.maps.LatLng(19.9167662,128.9555081); // 구글맵 기준 위도, 경도 위치
	  var arrPos = new Array(); // 표시 위치
	  var arrLink = new Array(); // 표시 문자열
	  var minZoomLevel = 2;
	  
	  arrPos[0] = new google.maps.LatLng(1.3520830,103.8198360);
	  arrPos[1] = new google.maps.LatLng(19.8967660,-155.5827820);
	  arrPos[2] = new google.maps.LatLng(36.2048240,138.2529240);
	  arrPos[3] = new google.maps.LatLng(1.9772470,73.5361030);
	  arrPos[4] = new google.maps.LatLng(22.3964280,114.1094970);
	  arrPos[5] = new google.maps.LatLng(-40.9005570,174.8859710);
	  arrPos[6] = new google.maps.LatLng(34.3965600,132.4596230);
	  arrPos[7] = new google.maps.LatLng(64.9630510,-19.0208350);
	  arrPos[8] = new google.maps.LatLng(-25.2743980,133.7751360);
	  arrPos[9] = new google.maps.LatLng(41.8719400,12.5673800);
	  arrPos[10] = new google.maps.LatLng(46.2276380,2.2137490);
	  arrPos[11] = new google.maps.LatLng(50.0755380,14.4378000);
	  arrPos[12] = new google.maps.LatLng(33.4996210,126.5311880);

	  arrLink[0] = "city01.action?num=1";
	  arrLink[1] = "city01.action?num=2";
	  arrLink[2] = "city01.action?num=3";
	  arrLink[3] = "city01.action?num=4";
	  arrLink[4] = "city01.action?num=5";
	  arrLink[5] = "city01.action?num=6";
	  arrLink[6] = "city01.action?num=7";
	  arrLink[7] = "city01.action?num=8";
	  arrLink[8] = "city01.action?num=9";
	  arrLink[9] = "city01.action?num=10";
	  arrLink[10] = "city01.action?num=11";
	  arrLink[11] = "city01.action?num=12";
	  arrLink[12] = "city01.action?num=13";
	  
	  // 기본 맵 띄우기
	  var myMapOptions = {
	    zoom: minZoomLevel
	   ,center: currentPos
	   ,mapTypeId: google.maps.MapTypeId.ROADMAP
	  };
	  var map = new google.maps.Map(document.getElementById("map_canvas"), myMapOptions);
	  // 마커 찍기
	  for(var idx = 0; idx < count; idx++)
	  {
	   var marker = new google.maps.Marker({
	    map: map,
	    draggable: false,
	    //animation: google.maps.Animation.DROP,
	    position: arrPos[idx],
	    url:arrLink[idx],
	    visible: true
	   });
	   
	   // Limit the zoom level
	   google.maps.event.addListener(map, 'zoom_changed', function () {
	       if (map.getZoom() < minZoomLevel) map.setZoom(minZoomLevel);
	   });
	   
	   google.maps.event.addListener(marker, 'click', function(){
	      window.open(this.url, "새창", "width=950, height=800, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );
	   })
	   
	   
	  }

	  
	 }

</script>

</head>
<body id="sub" onload="initialize()">

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
            <li class="current"><a href="cityBoard.action">도시가이드</a></li>
            
         </ul>
      </div>

      <h3 class="blind">도시가이드</h3>

         <!-- 본문영역 -->
         <div id="contentG">
         
            <!-- 내용 -->

<div id="map_canvas" style="width:1000px; height:700px"></div>

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