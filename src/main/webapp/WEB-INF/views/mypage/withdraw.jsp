<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:include page="/inc/header1.jsp" flush="true" />
<title>MIRACLE AIR &gt; ��޴� &gt; �߸޴� &gt; �Ҹ޴�</title>
<jsp:include page="/inc/header2.jsp" flush="true" />
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
				<h2 class="blind">���� ����</h2>

				<div class="tab_w clearfix v2">
					<ul>
						<li class=""><a class="" href="mypage.action">ȸ�� ����</a></li>
						<li class=""><a class="" href="updateUser.action">ȸ������ ����</a></li>
						<li class="current"><a class="" href="withdraw.action">ȸ�� Ż��</a></li>
					</ul>
				</div>

				<h3 class="blind">�ü���Ȳ</h3>

				<!-- �������� -->
				<div id="contentG">

					<!-- ���� -->
					<form method="post" action="withdraw.action">
						���� Ż���Ͻðڽ��ϱ�? <input class="btn_m" type="submit" value="Ȯ��">
					</form>

					<!-- //���� -->

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