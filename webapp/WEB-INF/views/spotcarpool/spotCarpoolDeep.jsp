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
	
	<title>스팟 카풀 상세</title>

</head>


<body>

	<!-- 	<div id="wrap"> -->

	<!-- header-->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //header-->



	<div class="content-head">
		<div class="clear" style="width: 1920px; margin: 0px auto;">
			<div class="carpool-MainText1">
				<span>같이 타고 가요</span>
				<p>SPOT CARPOOL</p>
			</div>
			<span class="carpool-MainText2"> 이동하는 경로가 비슷한 드라이버를 찾아 <br>
				출발지부터 목적지까지 편하게 이동해보세요.
			</span>
		</div>
	</div>

	<div class="carpoolDeep-aside">
		<div class="aside">
		
			<form class="confirmForm">
				출발지<br> <input class="confirm" type="text" name="splace" value="${cVoMap.cVo.splace}"> 
				목적지<br> <input class="confirm" type="text" name="eplace" value="${cVoMap.cVo.eplace}"> 
				탑승 인원수<br> <input class="confirm" type="text" name="people" value="${cVoMap.cVo.smPeople}">
				탑승 시간<br> <input class="confirm" type="text" name="time" value="${cVoMap.cVo.sTime}"> 
				처음 탑승일<br> <input class="confirm" type="text" name="startDate" value="${cVoMap.cVo.startDate}"> 
				마지막 탑승일<br> <input class="confirm" type="text" name="endDate" value="${cVoMap.cVo.endDate}">

			</form>

			<div class="point">
				총 결제 포인트<br> 
				<input class="pointConfirm" type="text" name="point" value="${cVoMap.cVo.point}P"><br> <br> 
				<span class="pointText">*포인트는 선결제되며,<br>도착시 드라이버에게 지급됩니다.
				</span>

			</div>
			
			<c:choose>
				<c:when test="${authUser != null}">
					<a href="/myReservationUserMain">
						<button type="submit" class="rideButton">탑승하기</button>
					</a>
				</c:when>
				<c:otherwise>
					<a href="/loginForm"><button class="rideButton">로그인 하러 가기</button></a>
				</c:otherwise>
			</c:choose>
								
		</div>
	</div>


	<div id="carpoolcontent" class="inner clear">

		<div class="carpool-top">

			<div class="carpooltop-text1">
				<p class="carpooltop-text2">이동 경로 안내</p>

				<span class="pathConfirm">출발지 &nbsp;&nbsp; 
				<input class="path-confirm" type="text" name="departure" value="${cVoMap.cVo.splace}">
				</span> 
				
				<span class="pathConfirm">도착지 &nbsp;&nbsp; 
				<input class="path-confirm" type="text" name="destination" value="${cVoMap.cVo.eplace}">
				</span>

			</div>

			<img class="pathPicto" src="/assets/images/map_line_02.png"> <span
				class="pathTime">도착지까지 예상 소요 시간 ${cVoMap.cVo.duration},
				${cVoMap.cVo.distance}</span>


		</div>




		<div class="carpool-top2"> 
			<p class="authDriverInfo">
				${cVoMap.cVo.id} 드라이버님의 차량 정보 
					
				
			</p>



			<div class="carpool-picture">
				<div class="carpool-picture-image">
					<a href=""> <img src="/assets/images/${cVoMap.cVo.carPicture}.png" alt="hover">

						<h3>
							<span> ${cVoMap.cVo.carName} </span>
						</h3>
					</a>
				</div>
			</div>





			<div class="driverIntoduce">
				<button class="self-Check">
					<img class="self-checkPicto" src="/assets/images/ico_save.png">
					&nbsp본인인증 완료
				</button>
				드라이버 소개
			</div>

			<div class="introduceText">${cVoMap.cVo.introduce}</div>

			<div class="driverComments">COMMENTS</div>
			
			<div class="introduceText">${cVoMap.cVo.comments}</div>


		</div>


		<div class="carpool_detail">
			<p class="driverInfo">드라이버 차량 정보</p>


			<table>
			<c:forEach items="${cVoMap.spotDetailList}" var="detailVo">
			
				<c:if test="${detailVo.spotDetailNo==1}">
				<tr>
					<td>
						<img class="infoPicto" src="/assets/images/danger.png">
						${detailVo.name}
					</td>
				</tr>
				</c:if>
				<c:if test="${detailVo.spotDetailNo==2}">
				<tr>
					<td>
						<img class="infoPicto" src="/assets/images/boy.png">
						${detailVo.name}
					</td>
				</tr>
				</c:if>
				<c:if test="${detailVo.spotDetailNo==3}">
				<tr>
					<td>
						<img class="infoPicto" src="/assets/images/paws01.png">
						${detailVo.name}
					</td>
				</tr>
				</c:if>
				<c:if test="${detailVo.spotDetailNo==4}">
				<tr>
					<td>
						<img class="infoPicto" src="/assets/images/ico_plug.png">
						${detailVo.name}
					</td>
				</tr>
				</c:if>
				<c:if test="${detailVo.spotDetailNo==5}">
				<tr>
					<td>
						<img class="infoPicto" src="/assets/images/ico_toolbox.png">
						${detailVo.name}
					</td>
				</tr>
				</c:if>
					
			</c:forEach>
			</table>


		</div>
		
		<!-- 리뷰배너 -->
		<p class="review">Reviews ★ ${cVoMap.cVo.avgStar}</p>

	</div>	


	<div class="review_banner_wrapper">



		<div class="inner">
		
			<div class="review_banner swiper-container">
				<ul class="swiper-wrapper">
				
			<c:forEach items="${cVoMap.reviewList}" var="carpoolVo">
				
					<li class="swiper-slide">
						<dl class="review_box">
							
								<dt class="review_top">
									<p class="writer_img">
										
									</p>

									<p class="writer_info">
										<strong class="name">유저 ID : ${carpoolVo.id}</strong> 
										<em class="date">별점 : ${carpoolVo.star}</em>
									</p>

								</dt>
								<dd class="review_dec">${carpoolVo.content}</dd>
							
						</dl>
					</li>
					</c:forEach>
				</ul>
			</div>
				
			<div class="review_banner_btns">
				<a href="javascript:void(0);"><img class="swiper-button-prev"
					src="/assets/images/common/ico_arrow_lft.png"></a> <a
					href="javascript:void(0);"><img class="swiper-button-next"
					src="/assets/images/common/ico_arrow_rit.png"></a>
			</div>
			
		</div>
	</div>
	<!-- //리뷰배너 -->



	<div class="carpool-section4">

		<h6 class="recommend">차량 추천 리스트</h6>

		<div class="recommendList">
			<c:forEach items="${cVoMap.recommendList}" var="carpoolVo">
				<ol>
					<li>
						<p class="recommend-Driver-list">드라이버 : ${carpoolVo.id}</p>
					</li>
					<li>
						<p class="recommend-start-list">출발일시 : ${carpoolVo.startDate}</p>
					</li>
					<li>
						<p class="recommend-point-list">소요 포인트 ${carpoolVo.point}P</p> 
		<!--******************************** 선택 시 조건 검색 충족한 리스트만 보여주도록 수정 ***************************-->
						<a href="${pageContext.request.contextPath}/spotCarpoolDeep/${carpoolVo.spotMateNo}">
							<button>
								<img class="recommend-List-Picto"
									src="/assets/images/external.png"> <span
									class="choose-text">선택</span>
							</button>
						</a>
					</li>
				</ol>
			</c:forEach>
	
		</div>

		<a href="${pageContext.request.contextPath}/spotCarpool">
			<button class="recommend-button">추천 리스트 더보기 ></button>
		</a>

	</div>





	<!-- 	</div>	 -->


	<!-- footer-->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- //footer-->

</body>
<script>
	var swiperReview = new Swiper('.review_banner', {
		slidesPerView : 4,
		effect : 'slide',
		autoplay : {
			delay : 2000
		},
		spaceBetween : 20,
		loop : true,
		speed : 1000,
		navigation : {
			prevEl : '.review_banner_btns .swiper-button-prev',
			nextEl : '.review_banner_btns .swiper-button-next'
		}
	});
</script>


</html>
