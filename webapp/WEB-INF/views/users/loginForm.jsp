<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
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
        <link rel="shortcut icon" href="/assets/images/common/favicon.ico" type="image/x-icon">
        <link rel="icon" href="/assets/images/favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon" sizes="57x57" href="/assets/images/common/apple-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="60x60" href="/assets/images/common/apple-icon-60x60.png">
        <link rel="apple-touch-icon" sizes="72x72" href="/assets/images/common/apple-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="/assets/images/common/apple-icon-76x76.png">
        <link rel="apple-touch-icon" sizes="114x114" href="/assets/images/common/apple-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="120x120" href="/assets/images/common/apple-icon-120x120.png">
        <link rel="apple-touch-icon" sizes="144x144" href="/assets/images/common/apple-icon-144x144.png">
        <link rel="apple-touch-icon" sizes="152x152" href="/assets/images/common/apple-icon-152x152.png">
        <link rel="apple-touch-icon" sizes="180x180" href="/assets/images/common/apple-icon-180x180.png">
        <link rel="icon" type="image/png" sizes="192x192"  href="/assets/images/common/android-icon-192x192.png">
        <link rel="icon" type="image/png" sizes="32x32" href="/assets/images/common/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="96x96" href="/assets/images/common/favicon-96x96.png">
        <link rel="icon" type="image/png" sizes="16x16" href="/assets/images/common/favicon-16x16.png">
        <link rel="manifest" href="/assets/images/common/manifest.json">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="/assets/images/common/ms-icon-144x144.png">
        <meta name="theme-color" content="#ffffff">
        <!-- css, js 연결 -->
        <link rel="stylesheet" href="../common/css/swiper-bundle.min.css">
        <link rel="stylesheet" href="../common/css/style.css">
        <script src="../common/js/jquery-1.11.0.min.js"></script>
        <script src="../common/js/swiper.min.js"></script>
        <script src="../common/js/style.js"></script>
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
                <div class="login">
                    <h2>로그인</h2>
                    <p>
                        SPOTMATE 계정으로 로그인
                    </p>

                    <div class="form_text">
                        <form action="" method="">
                            <!-- 아이디 -->
                            <div class="form_group">
                                <input type="text" id="input_uid" name="" value="" placeholder="아이디를 입력해주세요">
                            </div>

                            <!-- 비밀번호 -->
                            <div class="form_group">
                                <input type="text" id="input_pass" name="" value="" placeholder="비밀번호를 입력해주세요">
                            </div>

                            <!-- 아이디 저장 -->
                            <div class="login_checkbox">
                                <input id="login_save" type="checkbox" checked>
                                <label class="" for="login_save">아이디 저장</label> 
                                <input id="login_auto" type="checkbox">
                                <label class="" for="login_auto">자동 로그인</label>
                            </div>

                            <!-- 버튼영역 -->
                            <div class="button_area">
                                <button type="submit" id="btn_submit">로그인</button>
                            </div>
                        </form>
                    </div>
                    
                    <div class="login_search">
                        <span class="find_id">
                            <a href="javascript:void(0);">아이디 찾기</a>
                        </span>
                        <span class="find_pw">
                            <a href="javascript:void(0);">비밀번호 찾기</a>
                        </span>
                        <span class="signup">
                            <a href="javascript:void(0);">회원가입</a>
                        </span>
                    </div>
                    
                    <!-- sns 계정 -->
                    <div class="sns_login">
                        <h4>SNS 계정으로 간편 로그인&#47;회원가입</h4>
                        <ul class="ico_sns clear">
                            <li class="sns_facecook">
                                <a href="javascript:void(0);" target="_blank" title="login_facebook"></a>
                            </li>
                            <li class="sns_kakao">
                                <a href="javascript:void(0);" target="_blank" title="login_kakao"></a>
                            </li>
                            <li class="sns_naver">
                                <a href="javascript:void(0);" target="_blank" title="login_naver"></a>
                            </li>
                        </ul>
                        <p>&middot; SNS 계정으로 간편하게 가입하여 서비스를 이용하실 수 있습니다.</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- //contents -->

        <!-- footer -->
        <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- footer -->
</html>
