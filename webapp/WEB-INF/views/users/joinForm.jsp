<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
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
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/style.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/swiper.min.js"></script>
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>

	<title>회원가입</title>
	
</head>

<!-- body -->
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

        <div class="inner">
            <div class="join">
                <h2>회원가입</h2>
                <p>*필수 입력사항</p>

                <div class="join_form">
                    <form action="/joinOk" method="post">
                        <!-- 아이디 -->
                        <div class="join_group topborder">
                            <label class="" for="">아이디*</label> 
                            <input autocomplete="off" type="text" id="join_uid" name="id" value="" placeholder="※영문과 숫자를 조합해 8자이하로 입력해주세요">
                            <input type="hidden" id="id_chk_status" value="1">
                            <button type="button" id="id_check" class="id-check">중복확인</button>
                        </div>

                        <!-- 비밀번호 -->
                        <div class="join_group">
                            <label class="" for="">비밀번호*</label> 
                            <input autocomplete="off" type="password" id="join_pass" name="pw" value="" placeholder="※숫자,영문자와 특수기호를 조합해 8~16자리로 입력해주세요">
                        </div>
                        <!-- 비밀번호 확인 -->
                        <div class="join_group chk_pw">
                            <label class="" for="">비밀번호확인*</label> 
                            <input autocomplete="off" type="password" id="join_passcheck" name="" value="" placeholder="비밀번호를 한번 더 입력해주세요">
                        </div>

                        <!-- 이름 -->
                        <div class="join_group">
                            <label class="" for="">이름*</label> 
                            <input autocomplete="off" type="text" id="join_name" name="name" value="" placeholder="이름을 입력해주세요">
                        </div>

                        <!-- 이메일 -->
                        <div class="join_group">
                            <label class="" for="">이메일*</label> 
                            <input autocomplete="off" type="email" id="join_emil" name="email" value="" placeholder="예: spotmate_official@spotmate.com">
                        </div>

                        <!-- 휴대폰 -->
                        <div class="join_group">
                            <label class="" for="">휴대폰*</label> 
                            <input autocomplete="off" type="text" id="join_phone" name="phone" value="" placeholder="숫자만 입력해주세요">
                            <button type="button" id="id_check" class="certification">본인인증</button>
                        </div>

                        <!-- 주소 -->
                        <div class="join_group">
                                <label class="" for="">주소*</label> 
                                <!-- <button class="btn_address" type="button" onclick="location.href='addressmap.jsp' ">주소 검색</button> -->
                                <input type="text" id="address_kakao" name="address" value="" placeholder="주소 검색" readonly />
                                <input autocomplete="off" type="text" id="detail_address" class="detail_address" name="address_detail" value="" placeholder="상세주소를 입력해주세요">
                        </div>

                        <!-- 성별 -->
                        <div class="join_checkbox">
                            <label class="joingender" for="">성별*</label> 
                            <input id="join_male" type="radio" name="gender" value="male">
                            <label class="jointext" for="">남자</label> 
                            <input id="join_female" type="radio" name="gender" value="female">
                            <label class="jointext" for="">여자</label>
                        </div>

                        <!-- 생년월일 -->
                        <div class="join_group info" id="info_birth">
                            <label class="" for="">생년월일*</label> 
                            <select class="info_box" id="birth-year" name="year" >
                                <option disabled selected>출생연도</option>
                            </select>
                            <select class="info_box" id="birth-month" name="month" >
                                <option disabled selected>월</option>
                            </select>
                            <select class="info_box" id="birth-day" name="day" >
                                <option disabled selected>일</option>
                            </select>
                        </div>
                        <!--
                        <div id="print-date"></div>
                        -->

                        <!-- 이용약관동의 -->
                        <div class="join_checkbox agreebox">
                            <div class="agree1" for="">이용약관동의*</div>
                            <div class="agree2">
                                <div class="allcheck">
                                    <input id="allCk" type="checkbox" >
                                    <label class="" for="">전체 동의합니다.</label> 
                                    <p>선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.</p>
                                </div>
                                <div class="onecheck clear">
                                    <input type="checkbox" class="oneCk must1">
                                    <label class="agreetext" for="">이용약관 동의 &#40;필수&#41;</label> 
                                    <a href="javascript:void(0);">자세히 확인하기</a>
                                </div>
                                <div class="onecheck clear">
                                    <input type="checkbox" class="oneCk must2">
                                    <label class="agreetext" for="">개인정보 제 3자 제공 동의 &#40;필수&#41;</label> 
                                    <a href="javascript:void(0);">자세히 확인하기</a>
                                </div>
                                <div class="onecheck clear">
                                    <input type="checkbox" class="oneCk must3">
                                    <label class="agreetext" for="">개인정보 수집 및 이용 동의 &#40;필수&#41;</label> 
                                    <a href="javascript:void(0);">자세히 확인하기</a>
                                </div>
                                <div class="onecheck clear">
                                    <input type="checkbox" class="oneCk must4">
                                    <label class="agreetext" for="">본인은 만 14세이상입니다. &#40;필수&#41;</label> 
                                    <a href="javascript:void(0);">자세히 확인하기</a>
                                </div>
                                <div class="onecheck">
                                    <input type="checkbox" class="oneCk">
                                    <label class="agreetext" for="">마케팅 정보 수신 동의 &#40;선택&#41;</label> 
                                    <a href="javascript:void(0);">자세히 확인하기</a>
                                </div>
                            </div>
                        </div>

                        <!-- 버튼영역 -->
                        <div class="button_area">
                            <button type="button" id="btn_submit">가입하기</button>
                        </div>
                    </form>
                </div>
                <!-- // form_text -->
            </div>
            <!-- // join -->
        </div>
        <!-- // inner -->
    </section>
    <!-- //contents -->

    <!-- footer -->
    <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- footer -->

</body>
<!-- //body -->

<script type="text/javascript">


</script>

<script src="${pageContext.request.contextPath}/assets/js/joinForm.js"></script>
</html>
