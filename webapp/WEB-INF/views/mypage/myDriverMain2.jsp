<%@page import="io.opentelemetry.exporter.logging.SystemOutLogExporter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	
	<title>myDriverMain2</title>
	
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
					<h3>드라이버 정보</h3>
					<span style="font-weight: bold">드라이버님이 등록해주신 차량 정보와 상세
						조건입니다.</span>
					<ul>
						<li>현재 등록되어 있는 드라이버님과 차량의 정보입니다.</li>
						<li>수정사항이 있으시면 아래의 내용을 수정하실 수 있습니다.</li>
					</ul>
				</header>


				<article class="myPage_article2">
					<h4>드라이버/차량정보</h4>

					<div class="DriverenrollForm">
						<form action="${pageContext.request.contextPath }/modify" method="post">

							<div class="DL_info">

								<h5>드라이버 정보</h5>
								<!-- Driver License -->
								<table>
									<tr align="left">
										<td><label for="username">이름*</label></td>
										<td><input value="${dlvo.username}" name="username" id="username" placeholder="홍길동" type="text"></td>
									</tr>

									<tr align="left">
										<td><label for="userBD">생년월일*</label></td>
										<td><input value="${dlvo.userBD}" name="userBD" id="userBD" placeholder="19900805"
											type="text"></td>
									</tr>
									<tr align="left">
										<td><label for="dl">면허등록번호*</label></td>
										<td><input value="${dlvo.dl}" name="dl" id="dl" placeholder="면허등록번호입력" type="text"></td>
									</tr>
									<tr align="left">
										<td><label for="licensetype">종류*</label></td>
										<td><input value="${dlvo.licensetype}" name="licensetype" id="licensetype" placeholder="대형 1종" type="text"
											></td>
									</tr>

								</table>
							</div>

							<div class="DC_info">
								<h5>차량 정보</h5>
								<div class="right_smallbtn">
									<a class="smallbtn" type="button" href="#"><span>사진변경</span></a>
								</div>

								<br> <img align="left" class="file_d" alt="차량사진"
									src="/assets/images/${dlvo.c_file}"
									width="732px" height="272px">
								<table>
								
									<tr align="left">
										<td><label for="c_Model">차량모델명*</label></td>
										<td><input value="${dlvo.c_Model}" name="c_Model" id="c_Model" placeholder="테슬라 모델3" type="text"></td>
									</tr>
									<tr align="left">
										<td><label for="c_num">차량등록번호*</label></td>
										<td><input value="${dlvo.c_num}" name="c_num" id="c_num" placeholder="770가7777" type="text"></td>
									</tr>
									<tr align="left">
										<td><label for="c_color">차량색상*</label></td>
										<td><input value="${dlvo.c_color}" name="c_color" id="c_color" placeholder="화이트" type="text"></td>
									</tr>
									<tr align="left">
										<td><label for="num_PA">탑승가능인원*</label></td>
										<td><input value="${dlvo.num_PA}" name="num_PA" id="num_PA" placeholder="2" type="text"></td>
									</tr>
								</table>

							</div>


							<div class="DC_etc">
								<h5>차량 상세조건</h5>
								<table>
									<!-- input type="radio" name="gender" id="male" value="남자"  -->
									<tr align="left">
										<td><input type="checkbox" name="ch_type"
											id="Dformcheckbox" value="1"><span>비흡연자</span></td>
										<td><input type="checkbox" name="ch_type"
											id="Dformcheckbox" value="2" checked="checked">
											<span>여성드라이버</span></td>
									</tr>
									<tr align="left">
										<td><input type="checkbox" name="ch_type"
											id="Dformcheckbox" value="3"><span> 반려동물
												탑승가능</span></td>
										<td><input type="checkbox" name="ch_type"
											id="Dformcheckbox" value="4"> <span>핸드폰
												충전기 보유</span></td>
									</tr>
									<tr align="left">
										<td><input type="checkbox" name="ch_type"
											id="Dformcheckbox" value="5"><span> 트렁크
												사용 가능여부</span></td>
									</tr>
								</table>
							</div>



							<div class="memo">
								<h5>드라이버님을 소개해주세요*</h5>
								<textarea name="introduce">${dlvo.introduce}</textarea>
							</div>

							<input type="submit" placeholder="수정하기" class="DForm_enrollbtn">

						</form>
					</div>
				</article>


			</section>

		</main>



		<!-- //banner & footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	</div>

</body>


</html>