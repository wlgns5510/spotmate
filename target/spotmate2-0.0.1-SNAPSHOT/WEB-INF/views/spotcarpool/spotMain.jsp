<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
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
	<link rel="icon" type="image/png" sizes="192x192"  href="${pageContext.request.contextPath}/assets/images/common/android-icon-192x192.png">
	<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/images/common/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="96x96" href="${pageContext.request.contextPath}/assets/images/common/favicon-96x96.png">
	<link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/assets/images/common/favicon-16x16.png">
	<link rel="manifest" href="${pageContext.request.contextPath}/assets/images/common/manifest.json">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="msapplication-TileImage" content="${pageContext.request.contextPath}/assets/images/common/ms-icon-144x144.png">
	<meta name="theme-color" content="#ffffff">
	
	<!-- css, js 연결 -->
	<link href="${pageContext.request.contextPath}/assets/css/swiper-bundle.min.css" rel="stylesheet" >
	<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
	<script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/style.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/swiper.min.js"></script>
	<title>스팟 카풀 메인</title>

</head>

<body>

	<!-- 	<div id="wrap"> -->

	<!-- header-->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //header-->



	<!-- CONTENT -->
	
	<div class="content-head">
		<div class="clear" style="width:1920px; margin:0px auto;">
			<span class="mainText1"> 누구나 쉽게, <br> 원하는 목적지로 이동
			</span> <span class="mainText2"> 이동하는 경로가 비슷한 드라이버를 찾아 <br>
				출발지부터 목적지까지 편하게 이동해보세요.
			</span>
		</div>

	</div>
	
	<div id="spotContent">

		<div class="service1">
			<div class="service1_image">
				<a href="spotCarpool"> <img
					src="${pageContext.request.contextPath}/assets/images/picture1.png"
					alt="hover">
					<h3>
						<span> SPOT CARPOOL<br> 서비스란?
						</span>
					</h3>
				</a>
			</div>
		</div>

		<p class="carpooltext">
			‘스팟'에서 ‘스팟’으로 이동하는 <br> 드라이버와 유저를 매칭 해주는 카풀 서비스로 <br> 원하는
			장소와 기간을 설정하여 등록할 수 있습니다.
		</p>

		<a href="spotCarpool">
			<button class="usebutton1">
				<img class="usebuttonPicto"
					src="${pageContext.request.contextPath}/assets/images/common/arrow-right.png">
				<p>이용하기</p>
			</button>
		</a>




		<div class="service2">
			<div class="service2_image">
				<a href="spotHitchhike"> <img
					src="${pageContext.request.contextPath}/assets/images/picture2.png"
					alt="hover">
					<h3>
						<span> SPOT HITCHHIKE <br>서비스란?
						</span>
					</h3>
				</a>
			</div>
		</div>

		<p class="hitchhiketext">
			드라이버가 이동 경로를 설정 후, 운행을 시작하면<br> 유저의 현재 위치 5Km 반경내에 있는 차량이 공유되어<br>
			실시간으로 탑승을 요청 할 수 있는 서비스입니다.
		</p>

		<a href="spotHitchhike">
			<button class="usebutton2">
				<img class="usebuttonPicto"
					src="${pageContext.request.contextPath}/assets/images/common/arrow-right.png">
				<p>이용하기</p>
			</button>
		</a>


	</div>


	<!-- footer-->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- //footer-->

	<!-- 	</div> -->



</body>
</html>