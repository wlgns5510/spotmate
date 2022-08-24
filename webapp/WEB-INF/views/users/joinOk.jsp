<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
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
	<link rel="icon" type="image/png" sizes="192x192"  href="${pageContext.request.contextPath}/assets/images/common/android-icon-192x192.png">
	<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/images/common/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="96x96" href="${pageContext.request.contextPath}/assets/images/common/favicon-96x96.png">
	<link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/assets/images/common/favicon-16x16.png">
	<link rel="manifest" href="${pageContext.request.contextPath}/assets/images/common/manifest.json">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="msapplication-TileImage" content="${pageContext.request.contextPath}/assets/images/common/ms-icon-144x144.png">
	<meta name="theme-color" content="#ffffff">
	
	<!-- css, js 연결 -->
	
<title>SPOTMATE</title>

</head>

<body>
	<!-- header -->
    <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
    <!-- //header -->
    
    <!-- contents -->
        <section class="contents_wrapper content">
            <h2 class="hidden">content</h2>
                <section class="banner">
                    <h2 class="hidden">banner</h2>
                    <div class="login_banner">
                        <p></p>
                    </div>
                </section>
            <!-- inner -->
            <div class="inner">
                <div class="joinOk">
                    <p></p>
                    
                    <div class="joinOk_box">
                        <div class="joinOk_box2">
                            <P class="joinOk_gift"></P>
                            <h3>SPOTMATE 가입이 완료되었습니다.
                                <br>
                                감사합니다.
                            </h3>
                        </div>

                        <p>* 개인정보 수정은 마이페이지 &gt; 개인정보 수정에서 가능합니다.</p>
                        <!-- 버튼영역 -->
                        <div class="button_area">
                            <button type="submit" id="btn_joinOk">완료</button>
                        </div>
                        <!-- 버튼영역 -->
                    </div>
                    <!-- joinOk_box-->
                </div>
            </div>
            <!-- inner -->
            <!-- 드리이버 배너 -->
            <div class="joinOk_banner">
                <p></p>
                <div class="joinOk_batext">
                    <h4>SPOTMATE DRIVER 등록하기</h4>
                    <p>드라이버님이 이동하시는 경로를 등록해주시면<br>
                    같이 이동을 원하는 유저가 카풀을 신청할 예정입니다.</p>
                    <div class="btn_driverlink">
                        <span class="btn_ico1"></span>
                        <a href="javascript:void(0);">등록하기</a>
                        <span class="btn_ico2"></span>
                    </div>
                </div>
            </div>
        </section>
    <!-- //contents -->
    
    <!-- footer -->
    <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
    <!-- //footer -->
    
    

</body>
</html>