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
	
	<title>myUsageUserMain</title>
	
</head>

<body>

	<div id="wrap">

		<!-- //header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

		<!-- //topNav -->
		<nav class="myPage_topNav">
			<div class="box1">
				<div class="box1_box">
					<img src="/assets/images/box_user.png">
				</div>
				<p>Ryeo-kyoung,kim님</p>
				<span>Reviews</span><span><img src="/assets/images/ico_star.png">4.3</span>
			</div>
			<div class="box2">
				<p>
					<a href="/myPointCharge">포인트 충전 ></a>
				</p>
				<span>1,0000P </span> <img src="/assets/images/ico_point.png">
			</div>
			<div class="box3">
				<p>
					<a href="/myCouponMain">쿠폰 사용 ></a>
				</p>
				<span>2개 </span> <img src="/assets/images/ico_coupon.png">
			</div>
		</nav>



		</nav>

		<!-- //myPage main contents -->
		<main class="contents">

			<!-- //sideNav  -->
			<nav class="myPage_sideNav">
				<h2>마이페이지</h2>
				<!-- h2? -->
				<ul class="myPage_list">
					<li><a href="./myDriverForm">드라이버 신청/정보<img src="/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myUsageDriverMain">이용 내역<img src="/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myReservationDriverMain">예약 내역<img src="/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myQnaMain">문의 내역<img src="/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myPointMain">포인트<img src="/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myCouponMain">쿠폰<img src="/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myPointRefundMain">환불 내역<img src="/assets/images/chevron-right-blue.png"></a></li>
					<li class="myPage_list_last"><a href="./myInfoChk">개인정보 수정<img src="/assets/images/chevron-right-blue.png"></a></li>
				</ul>
			</nav>

			<!-- //section -->
			<section class="myPage_selection">
				<!-- //section-header -->
				<header class="myPage_header">
					<h3>이용내역</h3>
					<p>드라이버와 유저로 구분되어 이용내역이 보이니 하단의 탭을 먼저 선택해주세요.</p>
					<ul>
						<li>드라이버 예약내역은 서비스를 등록하여 주행한 이용내역입니다.</li>
						<li>유저 이용 내역은 다른 드라이버의 차량을 이용한 내역입니다.</li>
					</ul>
				</header>

				<div class="topnav">

					<ul>
						<li><a href="/myUsageDriverMain">DRIVER 이용내역</a></li>
					</ul>
					<ul>
						<li><a class="active" href="/myUsageUserMain">USER 이용내역</a></li>
					</ul>
				</div>

				<!-- //section-article -->

				<article class="myPage_article">



					<div class="UsageinputBox">
						<form>
							<input type="date" value="2022-08-02"> <span> ~ </span> <input type="date" value="2022-08-02">

							<!-- <label for="lecture">유형</label> -->
							<select id="option1" class="form-select" aria-label="Default select example">
								<option value=selected>유형</option>
								<option value="1">카풀정기권</option>
								<option value="2">히치하이크</option>
								<option value="3">메이트</option>
								<option value="4">카풀1회성</option>
								<option value="5"><span style="color: red">패널티</span></option>
							</select>

							<!-- <label for="lecture">참여주체</label> -->
							<select id="option1" class="form-select" aria-label="Default select example">
								<option value=selected>상태</option>
								<option value="1">후기작성</option>
								<option value="2">후기완료</option>
							</select>

							<button type="button" class="UsagemyPage_btnB">조회하기</button>
							<!-- <a href="./myPointCarge"><button type="button" class="myPage_btnY">등록하러가기 ></button></a> -->
						</form>
					</div>

				</article>

				<!-- //section-article2 -->
				<article class="myPage_article2">
					<h4>이용 내역</h4>
					<table>
						<thead>
							<tr>
								<th>번호</th>
								<th>유형</th>
								<th>날짜</th>
								<th>출발지</th>
								<th>도착지</th>
								<th>지급포인트</th>
								<th>상태</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>카풀 정기권</td>
								<td>2022.07.26</td>
								<td>출발지</td>
								<td>도착지</td>
								<td>+3000</td>
								<td>
									<form>
										<input type="button" class="btn_review" value="후기작성" onclick="msg()">
									</form>
								</td>



							</tr>
							<tr>
								<td>2</td>
								<td>히치하이크</td>
								<td>2022.07.26</td>
								<td>출발지</td>
								<td>도착지</td>
								<td>+10000</td>
								<td>
									<form>
										<input type="button" class="btn_review" value="후기작성" onclick="msg()">
									</form>
								</td>
							</tr>
							<tr>
								<td>3</td>
								<td>메이트</td>
								<td>2022.07.26</td>
								<td>출발지</td>
								<td>도착지</td>
								<td>+5000</td>
								<td>
									<form>
										<input type="button" class="btn_review" value="후기작성" onclick="msg()">
									</form>
								</td>
							</tr>
							<tr>
								<td>4</td>
								<td>카풀1회성</td>
								<td>2022.07.26</td>
								<td>출발지</td>
								<td>도착지</td>
								<td>+5000</td>
								<td>
									<form>
										<input type="button" class="btn_review" value="후기작성" onclick="msg()">
									</form>
								</td>
							</tr>
							<tr>
								<td>5</td>
								<td>히치하이크</td>
								<td>2022.07.26</td>
								<td>출발지</td>
								<td>도착지</td>
								<td>+5000</td>
								<td>
									<form>
										<input type="button" class="btn_review" value="후기완료" onclick="msg()">
									</form>
								</td>
							</tr>
							<tr>
								<td>6</td>
								<td>히치하이크</td>
								<td>2022.07.26</td>
								<td>출발지</td>
								<td>도착지</td>
								<td>+5000</td>
								<td>
									<form>
										<input type="button" class="btn_review" value="후기완료" onclick="msg()">
									</form>
								</td>
							</tr>
							<tr>
								<td>7</td>
								<td>히치하이크</td>
								<td>2022.07.26</td>
								<td>출발지</td>
								<td>도착지</td>
								<td>+5000</td>
								<td>
									<form>
										<input type="button" class="btn_review" value="후기완료" onclick="msg()">
									</form>
								</td>
							</tr>
							<tr>
								<td>8</td>
								<td>카풀 정기권</td>
								<td>2022.07.26</td>
								<td>출발지</td>
								<td>도착지</td>
								<td>+3000</td>
								<td>
									<form>
										<input type="button" class="btn_review" value="후기작성" onclick="msg()">
									</form>
								</td>
							</tr>
							<tr>
								<td>9</td>
								<td>카풀 정기권</td>
								<td>2022.07.26</td>
								<td>출발지</td>
								<td>도착지</td>
								<td>+5000</td>
								<td>
									<form>
										<input type="button" class="btn_review" value="후기완료" onclick="msg()">
									</form>
								</td>
							</tr>
							<tr>
								<td>10</td>
								<td>카풀 정기권</td>
								<td>2022.07.26</td>
								<td>출발지</td>
								<td>도착지</td>
								<td>+3000</td>
								<td>
									<form>
										<input type="button" class="btn_review" value="후기완료" onclick="msg()">
									</form>
								</td>
							</tr>
						</tbody>
					</table>

					<div class="reserv-paging">
						<ul>
							<li><a href=""> <img class="myPage_PagePicto" src="/assets/images/chevron-double-left.png">
							</a></li>

							<li><a href=""> <img class="myPage_PagePicto" src="/assets/images/chevron-left.png">
							</a></li>

							<li><a href="">1</a></li>
							<li><a href="">2</a></li>
							<li><a href="">3</a></li>
							<li><a href="">4</a></li>
							<li class="active"><a href="">5</a></li>
							<li><a href="">6</a></li>
							<li><a href="">7</a></li>
							<li><a href="">8</a></li>
							<li><a href="">9</a></li>
							<li><a href="">10</a></li>

							<li><a href=""> <img class="myPage_PagePicto" src="/assets/images/chevron-right.png">
							</a></li>

							<li><a href=""> <img class="myPage_PagePicto" src="/assets/images/chevron-double-right.png">
							</a></li>
						</ul>
					</div>

				</article>
			</section>
		</main>


		<!-- //banner & footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	</div>

</body>


</html>