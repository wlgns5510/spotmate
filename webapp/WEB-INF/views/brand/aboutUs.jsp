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
	<script src="${pageContext.request.contextPath}/assets/js/aboutUs.js"></script>
	<title>ABOUT US</title>

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
                    <li class="sub_event"><a href="javascript:void(0);">ABOUT US</a></li>
                    <li><a href="javascript:void(0);">FOR EARTH</a></li>
                </ul>
            </div>
        </section>
        <section>
            <div class="inner_">
                <div class="event_cover">
                    <!-- concept -->
                    <div id="concept" class="concept">
                        <h2>BRAND CONCEPT</h2>
                        <p>SPOTMATE 누구나 쉽게, 원하는 목적지로 편하게
                            <br>이동하는 경로가 비슷한 드라이버를 찾아
                            출발지부터 목적지까지 편하게 이동해보세요.</p>
                        <p class="c1_img"></p>
                        <div class="bc1">
                            <div class="bc1_text">
                                <p>사람들은 원하는 장소로 이동하기 위해서는 이동할 수 있는 수단이 있어야합니다. 하지만, 운전면허가 있어도 운전을 잘하지 못하거나 자신의 모빌리티가 없는 경우에는
                                대중교통을 이용하거나 택시를 타야하합니다. 하지만 날씨가 좋지 않거나, 대중교통을 이용하기에는 나의 짐이 너무 많은 경우에는 이동하는 것이 매우 불편합니다. 또한 단거리 이동이 아닌 장거리 이동의 경우 예약을 하지 못하거나 가격이 너무 비싸 부담이 되어 선뜻 예약하지 못했던 경험이있습니다. SPOTMATE는 이러한 여러분의 불편함을 해소시켜드리기 위해 만들어진 공유서비스입니다. 이동하는 경로가 비슷한 분들을 찾아 출발지부터 목적지까지 편안하고 안전하게 이동해보세요. 우리는 여러분들의 편안한 이동을 위해 더 안전하고 편리하게 준비하겠습니다.
                                같이 이동할 수 있는 메이트만 있다면, 누구나 언제 어디서든 자유롭게 이동할 수 있습니다.  
                                </p>
                                <p>- LET'S RIDE TOGETHER. SPOTMATE -</p>
                            </div>
                            <p class="bc2"></p>
                        </div>
                    </div><!-- concept -->

                    <!-- our_services -->
                    <div class="ourservices">
                        <h2>OUR SERVICES</h2>
                        <p>SPOTMATE 누구나 쉽게, 원하는 목적지로 편하게
                            <br>이동하는 경로가 비슷한 드라이버를 찾아
                            출발지부터 목적지까지 편하게 이동해보세요.</p>
                        <p class="sr_img"></p>
                        <div class="service_box clear">
                            <div class="ser_text">
                                <p class="ser_t1">01</p>
                                <h3>CARPOOL</h3>
                                <p class="ser_t3">이동하는 경로가 비슷한 드라이버를 찾아
                                <br>출발지부터 목적지까지 편하게 이동해보세요.</p>
                            </div>
                            <div class="ser_text">
                                <p class="ser_t1">02</p>
                                <h3>HITCHHIKE</h3>
                                <p class="ser_t3">이동하는 경로가 비슷한 드라이버를 찾아
                                <br>출발지부터 목적지까지 편하게 이동해보세요.</p>
                            </div>
                            <div class="ser_text">
                                <p class="ser_t1">03</p>
                                <h3>MATE</h3>
                                <p class="ser_t3">이동하는 경로가 비슷한 드라이버를 찾아
                                <br>출발지부터 목적지까지 편하게 이동해보세요.</p>
                            </div>
                            
                        </div>
                    </div>
                    <!-- our_services -->
                    
                    <!-- channel -->
                    <div class="brand_channel">
                        <h2>BRAND CHANNEL</h2>
                        <p>SPOTMATE 누구나 쉽게, 원하는 목적지로 편하게
                            <br>이동하는 경로가 비슷한 드라이버를 찾아
                            출발지부터 목적지까지 편하게 이동해보세요.
                        </p>

                        <div id="slider">
                            <div class="channel-box">
                                <div><img class="" src="/assets/images/ch_tiktok.png" alt=""></div>
                                <div><img class="" src="/assets/images/ch_facebook.png" alt=""></div>
                                <div><img class="" src="/assets/images/ch_insta.png" alt=""></div>
                                <div><img class="" src="/assets/images/ch_kakao.png" alt=""></div>
                                <div><img class="" src="/assets/images/ch_notion.png" alt=""></div>
                                <div><img class="" src="/assets/images/ch_github.png" alt=""></div>
                                <div><img class="" src="/assets/images/ch_line.png" alt=""></div>
                                <div><img class="" src="/assets/images/ch_youtube.png" alt=""></div>
                                <!--   clone     -->
                                <div><img class="" src="/assets/images/ch_tiktok.png" alt=""></div>
                                <div><img class="" src="/assets/images/ch_facebook.png" alt=""></div>
                                <div><img class="" src="/assets/images/ch_insta.png" alt=""></div>
                                <div><img class="" src="/assets/images/ch_kakao.png" alt=""></div>
                                <div><img class="" src="/assets/images/ch_notion.png" alt=""></div>
                                <div><img class="" src="/assets/images/ch_github.png" alt=""></div>
                                <div><img class="" src="/assets/images/ch_line.png" alt=""></div>
                                <div><img class="" src="/assets/images/ch_youtube.png" alt=""></div>
                            </div>
                        </div>
                    </div>
                    <!-- channel -->
                    
                    <!-- identity -->
                    <div class="brand_identity">
                        <h2>BRAND IDENTITY</h2>
                        <p>SPOTMATE 누구나 쉽게, 원하는 목적지로 편하게
                            <br>이동하는 경로가 비슷한 드라이버를 찾아
                            출발지부터 목적지까지 편하게 이동해보세요.</p>
                        <p class="bi_img"></p>
                    </div>
                    <!-- identity -->

                </div>
            </div>

        </section>
	<!-- //content -->

	<!-- footer -->
    <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
    <!-- footer -->
</body>
</html>