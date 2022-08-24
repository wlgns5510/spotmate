<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
<script src="/assets/js/jquery-1.11.0.min.js"></script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=LIBRARY"></script>
<!-- services 라이브러리 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services"></script>
<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>

<title>myCouponUse</title>

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
				<p>yujieun님</p>
				<span>Reviews</span><span><img src="/assets/images/ico_star.png">4.5</span>
			</div>
			<div class="box2">
				<p>
					<a href="./myPointCarge">포인트 충전 ></a>
				</p>
				<span>1,0000P </span> <img src="/assets/images/ico_point.png">
			</div>
			<div class="box3">
				<p>
					<a href="./myCouponMain">쿠폰 사용 ></a>
				</p>
				<span>2개 </span> <img src="/assets/images/ico_coupon.png">
			</div>
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
					<h3>쿠폰</h3>
					<p>선택하신 모바일 쿠폰입니다.</p>
					<ul>
						<li>쿠폰</li>
						<li>유저 포인트 내역은 다른 드라이버의 차량을 이용 후 사용한 포인트입니다.</li>
						<li>그 외에도 이용수칙을 위반한 경우 차감 또는 추가 지급 될 수 있습니다.</li>
					</ul>
				</header>

				<!-- //section-article -->
				<article class="myPage_article">

					<div class="inputBox">
						<form action="${pageContext.request.contextPath }/mypageJ/myCouponBuy" method="get">
							<input name="maxValue" type="number" value="" placeholder="최대금액설정"> <span> - </span> <input name="minValue" type="number" value="" placeholder="최소금액설정"> <select name="option1">
								<option value="">유형</option>
								<option value="주유">주유권</option>

							</select> <select name="option2">
								<option value="">브랜드</option>
								<option value="S-OIL">S-OIL</option>
								<option value="GS-칼텍스">GS-칼텍스</option>
							</select>
							<div class="btns">
								<button type="submit" class="myPage_btnB">조회하기</button>
								<a href="./myPointCharge"><button type="button" class="myPage_btnY">포인트 충전하기</button></a>
							</div>
						</form>
					</div>

				</article>

				<!-- //section-article2 -->
				<article class="myPage_article2">
					<h4>모바일 주유권</h4>
					<form action="">
						<div class="myPage_couponUse">
							<img class="myPage_coupon" src="${cuMap.couponVo.imgsrc}"> <input type="hidden" value="${cuMap.couponVo.couponNo}"> <input type="hidden" value="${cuMap.couponVo.point}">
							<div class="myPage_couponEx">
								<div>
									<p>상품설명</p>
								</div>
								<ul>
									<li>✓오프라인 전용상품입니다.</li>
									<li>✓모바일주유권은 현금교환이 불가합니다.</li>
									<li>✓모바일주유권 결제시 해당 주유소에서 현금영수증 발행이 가능합니다.</li>
								</ul>
							</div>
							<div class="myPage_mapSearch">
								<div class="myPage_mapPicto"></div>
								<span>지도로 이용가능한 매장 찾기</span>
							</div>
							<div id="map" class="myPage_map"></div>
							<!-- <div class="myPage_mapAddress">
							<p class="myPage_mapAddress1">주유소</p>
							<p class="myPage_mapAddress2">관악시몬주유소</p>
							<p class="myPage_mapAddress3">서울 관악구 남부순환로 1753</p>
						</div>-->
							<div class="myPage_couponExchange">
								<span id="btn-modal">모바일 쿠폰 구매하기</span>
								<div id="modal" class="modal-overlay">
									<div class="modal-window">
										<div class="close-area">X</div>
										<div class="content">
											<c:if test="${cuMap.totalPoint >= cuMap.couponVo.point}">
												<p>
													쿠폰을 구매하시겠습니까? <br>해당 금액만큼 포인트에서 차감됩니다.
												</p>
												<button id="sub-btn" type="submit">구매하기</button>
											</c:if>
											<c:if test="${cuMap.totalPoint < cuMap.couponVo.point}">
												<p>
												<br>
													포인트가 부족합니다.
												</p>
											</c:if>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
				</article>
			</section>
		</main>


		<!-- //banner & footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	</div>

</body>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8e7c67039e0100811551e543e8f330e8"></script>
<script>
	var container = document.getElementById('map');
	var options = {
		center : new kakao.maps.LatLng(33.450701, 126.570667),
		level : 3
	};

	var map = new kakao.maps.Map(container, options);
	
	
	///////////////모달자바스크립트

	var modal = document.getElementById("modal")
	function modalOn() {
	    modal.style.display = "flex"
	}
	function isModalOn() {
	    return modal.style.display === "flex"
	}
	function modalOff() {
	    modal.style.display = "none"
	}
	var btnModal = document.getElementById("btn-modal")
	btnModal.addEventListener("click", e => {
	     $(".modal-overlay").css({
	          "top": (($(window).height()-$(".modal-overlay").outerHeight())/2+$(window).scrollTop())+"px",
	          "left": (($(window).width()-$(".modal-overlay").outerWidth())/2+$(window).scrollLeft())+"px"
	          //팝업창을 가운데로 띄우기 위해 현재 화면의 가운데 값과 스크롤 값을 계산하여 팝업창 CSS 설정
	       }); 
	      
	      $(".modal-window").css("display","block"); //팝업 뒷배경 display block
	      $(".modal-overlay").css("display","block"); //팝업창 display block
	      
	      $("body").css("overflow","hidden");//body 스크롤바 없애기
	      modalOn()
	     })
	var closeBtn = modal.querySelector(".close-area")
	closeBtn.addEventListener("click", e => {
	   $("body").css("overflow","auto");//body 스크롤바 생성
	    modalOff()
	})
	modal.addEventListener("click", e => {
	    var evTarget = e.target
	    if(evTarget.classList.contains("modal-overlay")) {
	       $("body").css("overflow","auto");//body 스크롤바 생성
	        modalOff()
	    }
	})
	window.addEventListener("keyup", e => {
	    if(isModalOn() && e.key === "Escape") {
	       $("body").css("overflow","auto");//body 스크롤바 생성
	        modalOff()
	    }
	})
</script>

</html>

