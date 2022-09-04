<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
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
	<script src="${pageContext.request.contextPath}/assets/js/forEarth.js"></script>
	<title>for Earth</title>

</head>

<body>
	<!-- header -->
    <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
    <!-- // header -->
    
	<!-- content -->
	<section class="contents_wrapper content">
            <h2 class="hidden">content</h2>
                <section class="banner">
                    <h2 class="hidden">banner</h2>
                    <div class="brand_banner">
                        <p></p>
                    </div>
                    <div class="banner_back clear">
                    </div>
                    <div class="banner_text clear">
                        <div class="text_lft">
                            <h2>브랜드 소개</h2>
                            <h2>ABOUT US</h2>
                        </div>
                        <div class="text_rit">
                            <h3>스팟메이트는 고객님께 받은 사랑으로</h3>
                            <h3>매월 다양한 혜택과 새로운 이벤트를 진행하고있습니다.</h3>
                        </div>
                    </div>
                </section>
        </section>
        <section class="sub_wrap">
            <div class="sub_nav clear">
                <ul>
                    <li><a href="javascript:void(0);">ABOUT US</a></li>
                    <li class="sub_event"><a href="javascript:void(0);">FOR EARTH</a></li>
                </ul>
            </div>
        </section>
        <section>
            <div class="inner_">
                <div class="event_cover">
                    <!-- forEarth -->
                    <div id="forEarth" class="forEarth">
                        <div class="earth_box">
                            <div class="earth_text">
                                <h2>FOR EARTH
                                    <br>WITH SPOTMATE
                                </h2>
                                <p>사람들은 원하는 장소로 이동하기 위해서는 이동할 수 있는 수단이 있어야합니다. 하지만, 운전면허가 있어도 운전을 잘하지 못하거나 자신의 모빌리티가 없는 경우에는
                                대중교통을 이용하거나 택시를 타야하합니다. 하지만 날씨가 좋지 않거나, 대중교통을 이용하기에는 나의 짐이 너무 많은 경우에는 이동하는 것이 매우 불편합니다. 또한 단거리 이동이 아닌 장거리 이동의 경우 예약을 하지 못하거나 가격이 너무 비싸 부담이 되어 선뜻 예약하지 못했던 경험이있습니다. SPOTMATE는 이러한 여러분의 불편함을 해소시켜드리기 위해 만들어진 공유서비스입니다. 이동하는 경로가 비슷한 분들을 찾아 출발지부터 목적지까지 편안하고 안전하게 이동해보세요. 우리는 여러분들의 편안한 이동을 위해 더 안전하고 편리하게 준비하겠습니다.
                                같이 이동할 수 있는 메이트만 있다면, 누구나 언제 어디서든 자유롭게 이동할 수 있습니다.  
                                </p>
                            </div>
                            <p class="earth_img"></p>
                        </div>
                    </div>
                    <!-- forEarth -->

                    <!-- fix_img -->
                    <div class="earth_fiximg">
                        <div class="contents01"></div>
                        <div class="fixed01"></div>
                        <div class="contents02"></div>
                        <div class="fixed02"></div>
                        <div class="contents03"></div>
                    </div>
                    <!-- fix_img -->
                    
                    <!-- earth_countBox-->
                    <div class="earth_countBox">
                        <div class="earth_countText clear">
                            <div class="ear_text">
                                <p class="earth_t1">01</p>
                                <h3>감소된 탄소배출량</h3>
                                <p class="earth_t3">이동하는 경로가 비슷한 드라이버를 찾아
                                <br>출발지부터 목적지까지 편하게 이동해보세요.</p>
                            </div>
                            <div class="ear_text">
                                <p class="earth_t1">02</p>
                                <h3>지켜낸 나무의 수</h3>
                                <p class="earth_t3">이동하는 경로가 비슷한 드라이버를 찾아
                                <br>출발지부터 목적지까지 편하게 이동해보세요.</p>
                            </div>
                        </div>
                        <div class="earth_leaves">
                            <p class="leaves_banner"></p>
                            <P class="leaves_back"></P>
                            <div class="leaves_text">
                                <h3>지구를 생각하는 5,830,544분께서 
                                <br>지금까지 SPOTMATE와 함께 하고 있습니다.</h3>
                                <h4>* 2022년 3월 이후 누적기준</h4>
                            </div>
                        </div>
                    </div>
                    <!-- earth_countBox -->
                    
                    <!-- Environmental Contents version2 -->
                    <div id="environmental" class="environmental">
                        <h2>Environmental Contents</h2>
                        <p>SPOTMATE 누구나 쉽게, 원하는 목적지로 편하게
                            <br>이동하는 경로가 비슷한 드라이버를 찾아
                            출발지부터 목적지까지 편하게 이동해보세요.
                        </p>
                        <div class="environmental_img swiper-container">
                            <ul class="swiper-wrapper">
                                <li class="swiper-slide"><img src="../../images/earth_slide00.png" alt="환경컨텐츠슬라이드1"></li>
                                <li class="swiper-slide"><img src="../../images/earth_slide01.png" alt="환경컨텐츠슬라이드2"></li>
                                <li class="swiper-slide"><img src="../../images/earth_slide02.png" alt="환경컨텐츠슬라이드3"></li>
                                <li class="swiper-slide"><img src="../../images/earth_slide03.png" alt="환경컨텐츠슬라이드4"></li>
                                <li class="swiper-slide"><img src="../../images/earth_slide04.png" alt="환경컨텐츠슬라이드5"></li>
                                <li class="swiper-slide"><img src="../../images/earth_slide05.png" alt="환경컨텐츠슬라이드6"></li>
                                <li class="swiper-slide"><img src="../../images/earth_slide06.png" alt="환경컨텐츠슬라이드7"></li>
                                <li class="swiper-slide"><img src="../../images/earth_slide07.png" alt="환경컨텐츠슬라이드8"></li>
                            </ul>
                        </div>
                        <div class="envir_block">
                            <div class="swiper-pagination"></div>
                        </div>
                    </div>
                    <!-- Environmental Contents version2 -->

                    <!-- earth_product -->
                    <div class="earth_product">
                        <h4>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit,Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                        </h4>
                        <p class="product_img01"></p>
                    </div>
                    <!-- identity -->
                </div>
            </div>
        </section>
        <!-- //contents -->
        
        <!-- faq banner -->
        <div class="earth_faq">
            <p class="faq_banner"></p>
        </div>
        <!-- //faq banner -->
	<!-- //content -->

	<!-- footer -->
    <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
    <!-- footer -->
</body>
</html>

<script>
//slide
$(document).ready(function(){
	var environmental_swiper = new Swiper('.environmental_img', {
	    slidesPerView: 4,
	    effect: 'slide',        // 효과 : 'slide' 'fade' : 그자리에서 사라졌다가 나타남
	    autoplay: {             // autoplay : 화면 재생시 바로 실행 
	        delay: 1500         // delay : 2000 -> 2초마다 슬라이드
	    },
	    centeredSlides: true,
	    spaceBetween: 30,
	    grabCursor: true,
	    pagination: {
	        el: '.envir_block .swiper-pagination',
	        clickable: true
	    },
	    speed: 1000,            // 슬라이드 될 때 1초의 움직임으로 슬라이드된다. : 슬라이드 속도
	    loop: true,             // loop : true 무한 반복 false: 마지막 배너후 멈춤
	});

});

</script>