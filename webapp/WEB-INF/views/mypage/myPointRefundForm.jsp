<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>SPOTMATE</title>
<meta name="title" content="">
<meta name="description" content="">
<meta name="author" content="">
<meta name="keywords" content="">
<meta property="og:type" content="website">
<meta property="og:title" content="">
<meta property="og:description" content="">
<meta property="og:url" content="">
<meta property="og:image" content="">
<meta property="og:author" content="">
<meta property="kakao:title" content="">
<meta property="kakao:description" content="">

<!-- favicon -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/images/common/favicon.ico" type="image/x-icon">
<link rel="icon" href="${pageContext.request.contextPath}/assets/images/common/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" sizes="57x57" href="${pageContext.request.contextPath}/assets/images/common/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="${pageContext.request.contextPath}/assets/images/common/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="${pageContext.request.contextPath}/assets/images/common/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath}/assets/images/common/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="${pageContext.request.contextPath}/assets/images/common/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="${pageContext.request.contextPath}/assets/images/common/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="${pageContext.request.contextPath}/assets/images/common/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="${pageContext.request.contextPath}/assets/images/common/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath}/assets/images/common/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192" href="${pageContext.request.contextPath}/assets/images/common/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/images/common/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="${pageContext.request.contextPath}/assets/images/common/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/assets/images/common/favicon-16x16.png">
<link rel="manifest" href="${pageContext.request.contextPath}/assets/images/common/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="${pageContext.request.contextPath}/assets/images/common/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">

<!-- css, js 연결 -->
<link href="${pageContext.request.contextPath}/assets/css/swiper-bundle.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.0.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/style.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/swiper.min.js"></script>

<title>myPointRefundForm</title>

</head>

<body>

	<div id="wrap">

		<!-- //header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

		<!-- //topNav -->
		<c:import url="/WEB-INF/views/includes/myPageTopNav.jsp"></c:import>

		<!-- //myPage main contents -->
		<main class="contents">

			<!-- //sideNav  -->
			<c:import url="/WEB-INF/views/includes/myPageSideNav.jsp"></c:import>


			<!-- //section -->
			<section class="myPage_selection">
				<!-- //section-header -->
				<header class="myPage_header">
					<h3>환불 신청</h3>
					<p>보유하고 있는 포인트를 환불하실 수 있습니다.</p>
				</header>

				<!-- //section-article2 -->
				<form action="${pageContext.request.contextPath }/mypageJ/myPointRefund" id="myPointRefund" method="post">
					<article class="myPage_article2">
						<h4>환불내역</h4>
						<div class="myPage_pointCharge">
							<p class="chargeMoney">환불 신청금액*</p>
							<input name="point" value="" placeholder="ex)30000">
							<div class="chargeEx">
								<p>1원 = 1Point입니다.</p>
								<p>포인트는 5,000P부터 1,000P 단위로 환불이 가능합니다.</p>
								<input type="hidden" id="totalPoint" value="${topNavMap.totalPoint }">
							</div>
							<p>환불 입금 받으실 계좌번호*</p>
							<div class="myPage_input2">
								<select name="bank" class="bank">
									<option value=selected>은행</option>
									<option value="신한은행">신한은행</option>
									<option value="농협">NH농협</option>
									<option value="국민은행">국민은행</option>
									<option value="우리은행">우리은행</option>
									<option value="카카오뱅크">카카오뱅크</option>
									<option value="케이뱅크">케이뱅크</option>
								</select> <input type="text" name="accountNum" placeholder="계좌번호를 입력해주세요">
							</div>
							<p>예금주명</p>
							<input type="text" name="name" placeholder="ex)환불받는 분의 성함을 적어주세요">
							<button type="submit" class="myPage_btnB">환불 신청하기</button>
						</div>
					</article>
				</form>
			</section>
		</main>


		<!-- //banner & footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	</div>

</body>
<script type="text/javascript">
	$("#myPointRefund").on("submit", function() {

		var point = $('input[name=point]').val();
		var accountNum = $('input[name=accountNum]').val();
		var name = $('input[name=name]').val();
		var totalPoint = $('#totalPoint').val();

		
		if (point == "" || point == null) {
			alert("환불 금액을 입력해주세요.");
			return false;
		}

		if (point == "" || point == null || point < 5000) {
			alert("포인트는 5,000P부터 환불이 가능합니다.");
			return false;
		}

		if (point > totalPoint) {
			alert("보유한 포인트 내에서 환불신청이 가능합니다.");
			return false;
		}

		if (point % 1000 != 0) {
			alert("포인트는 1,000P 단위로 환불이 가능합니다.");
			return false;
		}

		if (accountNum == "" || accountNum == null) {
			alert("계좌번호를 입력해주세요.");
			return false;
		}

		if (name == "" || name == null) {
			alert("예금주명을 입력해주세요.");
			return false;
		}

	});
</script>

</html>

