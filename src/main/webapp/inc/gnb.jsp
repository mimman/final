<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

	<div class="wrapper">
		<div class="header">
			<div class="header-container">
				<h1>
					<a href="index.action"><img src="/Air/img/main/logo.png" alt="MIRACLEAIR" /></a>
				</h1>
				<aside class="header-side">
					<div class="header-side-container">
					
						<ul class="webshow">
							<c:if test="${id eq null || id == ''}">
								<li id="loginli"><a href="membershipLogin.action">로그인</a></li>
								<li><a href="membership.action">회원가입</a></li>
								<li><a href="">마일리지</a></li>
			
							</c:if>
							<c:if test="${fn:length(id) >0 }">
							<li><a href="#">${id}님</a></li>
							<li><a href="logout.action">로그아웃</a></li>
							<li><a href="">마일리지</a></li>
							</c:if>
						</ul>
					</div>
				</aside>

				<div class="header-gnb">

					<div class="header-menu">

						<nav class="gnb">
							<ul>
								<li>
									<a class="menu" href="domestic.action">항공권 예매</a>
									<ul>
										<li><a href="domestic.action">국내선 항공권</a></li>
										<li><a href="inter.action">국제선 항공권</a></li>
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
										<li><a href="eventBoard.action">이벤트</a></li>
										<li><a href="">Q&#38;A</a></li>
									</ul>
								</li>

								<li>
									<a class="menu" href="">마이페이지</a>
									<ul>
										<li><a href="updateUser.action">회원정보 수정</a></li>
										<li><a href="">예약 관리</a></li>
										<li><a href="withdraw.action">회원 탈퇴</a></li>
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