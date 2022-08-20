<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath}/assets/css/style.css"
	rel="stylesheet" />
<script src="/assets/js/jquery-1.11.0.min.js"></script>

<title>스팟 카풀 상세</title>

</head>


<body>

	<!-- 	<div id="wrap"> -->

	<!-- header-->
	<c:import url="../includes/header.jsp"></c:import>
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
				출발지<br> <input class="confirm" type="text" name="splace" value="${carpoolVo.splace}"> 
				목적지<br> <input class="confirm" type="text" name="eplace" value="${carpoolVo.eplace}"> 
				탑승 인원수<br> <input class="confirm" type="text" name="people" value="${carpoolVo.people}">
				탑승 시간<br> <input class="confirm" type="text" name="time" value="${carpoolVo.time}"> 
				처음 탑승일<br> <input class="confirm" type="text" name="startDate" value="${carpoolVo.startDate}"> 
				마지막 탑승일<br> <input class="confirm" type="text" name="endDate" value="${carpoolVo.endDate}">

			</form>

			<div class="point">
				총 결제 포인트<br> 
				<input class="pointConfirm" type="text" name="point" value="${carpoolVo.point}"><br> <br> 
				<span class="pointText">*포인트는 선결제되며,<br>도착시 드라이버에게 지급됩니다.
				</span>

			</div>

			<a href="/myReservationUserMain">
				<button class="rideButton">탑승하기</button>
			</a>
		</div>
	</div>


	<div id="carpoolcontent" class="inner clear">

		<div class="carpool-top">

			<div class="carpooltop-text1">
				<p class="carpooltop-text2">이동 경로 안내</p>

				<span class="pathConfirm">출발지 &nbsp;&nbsp; <input
					class="path-confirm" type="text" name="departure" value="">
				</span> <span class="pathConfirm">도착지 &nbsp;&nbsp; <input
					class="path-confirm" type="text" name="destination" value="">
				</span>


			</div>



			<img class="pathPicto" src="/assets/images/map_line_02.png"> <span
				class="pathTime">도착지까지 예상 소요 시간 ${carpoolVo.duration},
				${carpoolVo.distance}</span>


		</div>




		<div class="carpool-top2">
			<p class="authDriverInfo">
				${carpoolVo.id} 드라이버님의 차량 정보 <a href="/myQnaMain">
					<button class="qnaButton">
						<img class="qnaPicto" src="/assets/images/ico_talk.png">
						문의하기
					</button>
				</a>
			</p>



			<div class="carpool-picture">
				<div class="carpool-picture-image">
					<a href=""> <img src="/assets/images/car_tesla.png" alt="hover">
						<!-- 질문: 이미지 안에 연결 -->
						<h3>
							<span> ${carpoolVo.carName} </span>
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

			<div class="introduceText">${carpoolVo.introduce}안녕하세요. 저는 조용하고 안전하게 가는 걸 선호합니다.<br> 약속 장소에는 출발 5분 전에 나와주시면
				좋겠습니다.<br> 차량에 탑승하신 후에는 비치되어 있는 손 소독제를 꼭 사용 부탁드립니다:)</div>

			<div class="driverComments">COMMENTS</div>
			
			<div class="introduceText">${carpoolVo.comments}안녕하세요. 저는 조용하고 안전하게 가는 걸 선호합니다.<br> 약속 장소에는 출발 5분 전에 나와주시면
				좋겠습니다.<br> 차량에 탑승하신 후에는 비치되어 있는 손 소독제를 꼭 사용 부탁드립니다:)</div>

			<!-- <div class="introduceText">
				안녕하세요. 저는 조용하고 안전하게 가는 걸 선호합니다.<br> 약속 장소에는 출발 5분 전에 나와주시면
				좋겠습니다.<br> 차량에 탑승하신 후에는 비치되어 있는 손 소독제를 꼭 사용 부탁드립니다:)  -->


		</div>


		<div class="carpool_detail">
			<p class="driverInfo">드라이버 차량 정보</p>


			<table>
					<tr>
						<td><img class="infoPicto" src="/assets/images/danger.png">
							비흡연자</td>

						<td><img class="infoPicto" src="/assets/images/boy.png">
							여성 드라이버</td>
					</tr>
					<tr>
						<td><img class="infoPicto" src="/assets/images/paws01.png">
							반려동물</td>

						<td><img class="infoPicto" src="/assets/images/ico_plug.png">
							충전기 사용 가능</td>
					</tr>
					<tr>
						<td><img class="infoPicto"
							src="/assets/images/ico_toolbox.png"> 트렁크 사용 가능</td>

						<td></td>
					</tr>
			</table>


		</div>
		<!-- 리뷰배너 -->
		<p class="review">Reviews ★ </p>

	</div>


	</div>



	<div class="review_banner_wrapper">



		<div class="inner">
		
			<div class="review_banner swiper-container">
				<ul class="swiper-wrapper">
				
			<c:forEach items="${reviewList}" var="carpoolVo">
				
					<li class="swiper-slide">
						<dl class="review_box">
							
								<dt class="review_top">
									<p class="writer_img">
										<img src="">
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
			<c:forEach items="${recommendList}" var="carpoolVo" begin="1" end="4" step="1">
				<ol>
					<li>
						<p class="recommend-Driver-list">드라이버 : ${carpoolVo.id}</p>
					</li>
					<li>
						<p class="recommend-start-list">출발일시 : ${carpoolVo.startDate}</p>
					</li>
					<li>
						<p class="recommend-point-list">소요 포인트 ${carpoolVo.point}P</p> 
						<a href="">
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

		<a href="/spotCarpool/list">
			<button class="recommend-button">추천 리스트 더보기 ></button>
		</a>

	</div>





	<!-- 	</div>	 -->


	<!-- footer-->
	<c:import url="../includes/footer.jsp"></c:import>
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