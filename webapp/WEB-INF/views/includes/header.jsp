<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
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
                    <a href="/aboutUs">BRAND</a>
                    <div class="depth2">
                        <ul>
                            <li><a href="/aboutUs">ABOUT US</a></li>
                            <li><a href="/forEarth">FOR EARTH</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="/spotMain">SPOT</a>
                    <div class="depth2">
                        <ul>
                            <li><a href="/spotCarpool">CARPOOL</a></li>
                            <li><a href="/spotHitchhike">HITCHHIKE</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="/mateInfo">MATE</a>
                    <div class="depth2">
                        <ul>
                            <li><a href="/mateInfo">SERVICE</a></li>
                            <li><a href="/mateMain">PRODUCT</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="/faq">COMMUNITY</a>
                    <div class="depth2">
                        <ul>
                            <li><a href="/notice/1">NOTICE</a></li>
                            <li><a href="/faq">FAQ</a></li>
                            <li><a href="/event">EVENT</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="/driver">DRIVER</a>
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
		                            ${authUser.id}님
		                        </a>
		                        <div class="down">
		                            <ul>
		                                <li><a href="/myUsageUserMain/1">마이 페이지</a></li>
		                                <li><a href="/myPointMain">마이 포인트</a></li>
		                                <li><a href="/myReservationUserMain/1">나의 예약 내역</a></li>
		                                <li><a href="/logout">로그아웃</a></li>
		                            </ul>
		                        </div>
		                    </li>
		                    <li>
		                        <a href="/myUsageUserMain/1" class="btn_a2">MY PAGE</a>
		                    </li>
		                </ul>
                	</c:otherwise>
                	
                </c:choose>
            </div>
        </div>
    </div>
</header>
<!-- //header -->