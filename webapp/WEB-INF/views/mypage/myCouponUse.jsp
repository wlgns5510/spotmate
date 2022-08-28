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


<title>myCouponUse</title>

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
								<a href="${pageContext.request.contextPath }/mypageJ/myPointCharge"><button type="button" class="myPage_btnY">포인트 충전하기</button></a>
							</div>
						</form>
					</div>

				</article>

				<!-- //section-article2 -->
				<article class="myPage_article2">
					<h4>모바일 주유권</h4>
					<form action="${pageContext.request.contextPath }/mypageJ/couponPurchase" method="post">
						<div class="myPage_couponUse">
							<img class="myPage_coupon" src="${cuMap.couponVo.imgsrc}"> <input type="hidden" name="couponNo" value="${cuMap.couponVo.couponNo}"> <input type="hidden" name="point" value="${cuMap.couponVo.point}">
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
										<div class="modal-content clear">
											<img class="modal-img" src="/assets/images/ico_boxgift.png">
											<div class="modal-text">
												<c:if test="${cuMap.totalPoint >= cuMap.couponVo.point}">
													<p>해당 금액만큼 포인트에서 차감됩니다</p>
													<p>쿠폰을 구매하시겠습니까?</p>
													<p class="modal-second-p"></p>
												</c:if>
												<c:if test="${cuMap.totalPoint < cuMap.couponVo.point}">
													<p>
														<br>포인트가 부족합니다.
													</p>
													<p class="modal-second-p"></p>
												</c:if>
											</div>
										</div>
										<div class="modal-button-div">
											<c:if test="${cuMap.totalPoint >= cuMap.couponVo.point}">
												<button id="back-btn" type="button">취소하기</button>
												<button id="sub-btn" type="submit">구매하기</button>
											</c:if>
											<c:if test="${cuMap.totalPoint < cuMap.couponVo.point}">
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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8e7c67039e0100811551e543e8f330e8&libraries=services,clusterer,drawing"></script>
<script>

//카카오지도API
var container = document.getElementById('map');
var options = {
	center : new kakao.maps.LatLng(33.450701, 126.570667),
	level : 3
};

var map = new kakao.maps.Map(container, options);

// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
if (navigator.geolocation) {
    
    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        
        var lat = position.coords.latitude, // 위도
            lon = position.coords.longitude; // 경도
        
        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
            message = '<div style="padding:5px;">나의 현재 위치</div>'; // 인포윈도우에 표시될 내용입니다
        
        // 마커와 인포윈도우를 표시합니다
        displayMarker(locPosition, message);
            
      });
    
} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
    
    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
        message = 'geolocation을 사용할수 없어요..'
        
    displayMarker(locPosition, message);
}

// 지도에 마커와 인포윈도우를 표시하는 함수입니다
function displayMarker(locPosition, message) {

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({  
        map: map, 
        position: locPosition
    }); 
    
    var iwContent = message, // 인포윈도우에 표시할 내용
        iwRemoveable = true;

    // 인포윈도우를 생성합니다
    var infowindow = new kakao.maps.InfoWindow({
        content : iwContent,
        removable : iwRemoveable
    });
    
    // 인포윈도우를 마커위에 표시합니다 
    infowindow.open(map, marker);
    

}    






///////////////모달자바스크립트
$("#back-btn").on("click", function() {
	location.replace("/mypageJ/myCouponBuy");
})

var modal = document.getElementById("modal")
function modalOn() {
    modal.style.animation = "fade-in 0.5s"
    modal.style.display = "flex"
}
function isModalOn() {
    return modal.style.display === "flex"
}
function modalOff() {
   	modal.style.animation = "fade-out 0.5s"
	$("body").css("overflow-y","visible");//body 스크롤바 생성
    setTimeout(function(){modal.style.display = "none"},501);
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
	modalOff()
})
modal.addEventListener("click", e => {
    const evTarget = e.target
    if(evTarget.classList.contains("modal-overlay")) {
        modalOff()
    }
})
window.addEventListener("keyup", e => {
    if(isModalOn() && e.key === "Escape") {
        modalOff()
    }
})



</script>

</html>

