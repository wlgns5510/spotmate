<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
	<link rel="icon" type="image/png" sizes="192x192"  href="${pageContext.request.contextPath}/assets/images/common/android-icon-192x192.png">
	<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/images/common/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="96x96" href="${pageContext.request.contextPath}/assets/images/common/favicon-96x96.png">
	<link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/assets/images/common/favicon-16x16.png">
	<link rel="manifest" href="${pageContext.request.contextPath}/assets/images/common/manifest.json">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="msapplication-TileImage" content="${pageContext.request.contextPath}/assets/images/common/ms-icon-144x144.png">
	<meta name="theme-color" content="#ffffff">
	<!-- css, js 연결 -->
	<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
	<script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.0.min.js"></script>
</head>
    
<!-- header -->
<header class="header_wrapper">
    <div class="top_banner">
        <p>안전하게 이용하는 스팟메이트 안전 대책&nbsp;&nbsp;&gt;</p>
    </div>
    <div class="inner clear">
        <div class="lft_sec">
            <h1 class="header_logo"><a href="/index"><img src="${pageContext.request.contextPath}/assets/images/common/header_logo.png" alt="SPOTMATE"></a></h1>
        </div>
        <div class="cen_sec">
            <!-- <strong class="header_tit">SERVICE</strong> -->
            <ul class="gnb" id="gnb">
                <li>
                    <a href="javascript:void(0);">BRAND</a>
                    <div class="depth2">
                        <ul>
                            <li><a href="javascript:void(0);">ABOUT US</a></li>
                            <li><a href="javascript:void(0);">FOR EARTH</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="javascript:void(0);">SPOT</a>
                    <div class="depth2">
                        <ul>
                            <li><a href="/spotMain">CARPOOL</a></li>
                            <li><a href="/spotHitchhike">HITCHHIKE</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="javascript:void(0);">MATE</a>
                    <div class="depth2">
                        <ul>
                            <li><a href="/mateInfo">SERVICE</a></li>
                            <li><a href="/mateMain">PRODUCT</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="javascript:void(0);">COMMUNITY</a>
                    <div class="depth2">
                        <ul>
                            <li><a href="javascript:void(0);">NOTICE</a></li>
                            <li><a href="javascript:void(0);">FAQ</a></li>
                            <li><a href="javascript:void(0);">EVENT</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="javascript:void(0);">DRIVER</a>
                    <div class="depth2">
                        <ul>
                            <li><a href="/driver">GUIDE</a></li>
                            <li><a href="/carpoolWrite">CARPOOL</a></li>
                            <li><a href="/hitchWrite">HITCHHIKE</a></li>
                            <li><a href="/mateWrite">MATE</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
        <div class="rit_sec">
            <!-- <strong class="header_tit">PRTFOLIO</strong> -->
            <div class="">
                <c:choose>
                
                	<c:when test="${authUser==null}">
                		<!-- 로그인 전 -->
                		<ul class="header_btn">
		                    <li><a href="/loginForm" class="btn_login">LOGIN</a></li>
		                    <li><a href="/joinForm" class="btn_join">회원가입</a></li>
	              		</ul>
                	</c:when>
                	
                	<c:otherwise>
                		<!-- 로그인 후 -->
                		<ul class="loginafter">
		                    <li>
		                        <a href="javascript:void(0);" class="btn_a1">
		                            <img src="${pageContext.request.contextPath}/assets/images/common/login_image_50_01.png" alt="회원이미지">
		                            ${authUser.name}님
		                        </a>
		                        <div class="down">
		                            <ul>
		                                <li><a href="/myUsageUserMain">마이 페이지</a></li>
		                                <li><a href="/myPointMain">마이 포인트</a></li>
		                                <li><a href="/myReservationUserMain">나의 예약 내역</a></li>
		                                <li><a href="/logout">로그아웃</a></li>
		                            </ul>
		                        </div>
		                    </li>
		                    <li>
		                        <a href="/myUsageUserMain" class="btn_a2">MY PAGE</a>
		                    </li>
		                </ul>
                	</c:otherwise>
                	
                </c:choose>
            </div>
        </div>
    </div>
</header>
<!-- //header -->