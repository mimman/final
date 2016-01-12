<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width">
<link rel="stylesheet" href="/Air/css/import.css" />
<script src="/Air/js/jquery-1.11.2.min.js"></script>
<script src="/Air/js/TweenMax.min.js"></script>
<script src="/Air/js/common.libs.js"></script>
<script src="/Air/js/jquery.ListBox.js"></script>
<script src="/Air/js/core.js"></script>
<script src="/Air/js/opacity.slide.js"></script>
<script src="/Air/js/hb.accordion.slide.js"></script>
<script src="/Air/js/common.js"></script>

<title>MIRACLEAIR</title>
</head>
<body>

	<div class="skip">
		<a href="#container">본문 바로가기</a>
	</div>


	<div class="wrapper">
		<div class="header">
			<div class="header-container">
				<h1>
					<a href="#"><img src="/Air/img/main/logo.png" alt="MIRACLEAIR" /></a>
				</h1>
				<aside class="header-side">
					<div class="header-side-container">
						<ul class="webshow">
							<li id="loginli"><a href="">로그인</a></li>
							<li id="logoutli" style="display: none;"><a href="">로그아웃</a></li>
							<li><a href="membership.action">회원가입</a></li>
							<li><a href=""	>마일리지</a></li>
						</ul>
					</div>
				</aside>

				<div class="header-gnb">

					<div class="header-menu">

						<nav class="gnb">
							<ul>
								<li>
									<a class="menu" href="">항공권 예매</a>
									<ul>
										<li><a href="">국내선 항공권</a></li>
										<li><a href="">국제선 항공권</a></li>
									</ul>
								</li>

								<li>
									<a class="menu" href="">여행 가이드</a>
									<ul>
										<li><a href="">도시 가이드</a></li>
										<li><a href="">테마 가이드</a></li>
									</ul>
								</li>

								<li>
									<a class="menu" href="">여행 에세이</a>
									<ul>
										<li><a href="">여행 에세이</a></li>
										<li><a href="">포토 에세이</a></li>
									</ul>
								</li>

								<li>
									<a class="menu" href="">커뮤니티</a>
									<ul>
										<li><a href="">공지사항</a></li>
										<li><a href="">이벤트</a></li>
										<li><a href="">Q&#38;A</a></li>
									</ul>
								</li>

								<li>
									<a class="menu" href="">마이페이지</a>
									<ul>
										<li><a href="">회원정보 수정</a></li>
										<li><a href="">예약 관리</a></li>
										<li><a href="">항공권 조회</a></li>
									</ul>
								</li>
							</ul>
						</nav>

					</div>
				</div>
				<!-- //header-gnb -->

			</div>
			<!-- //header-container -->
		</div>
		<!-- //header -->
	</div>
	<!-- //wrapper -->
	<hr />


	<iframe src="if_main.jsp" frameborder="0" width="100%" height="1660"	marginwidth="0" marginheight="0" scrolling="no"></iframe>

<hr />
<%@ include file="/inc/footer.jsp"%>

</body>
</html>