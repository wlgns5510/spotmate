<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">

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
                        <form action="/loginOk" method="get">
                            <!-- 아이디 -->
                            <div class="form_group">
                                <input type="text" id="input_uid" name="id" value="" placeholder="아이디를 입력해주세요">
                            </div>

                            <!-- 비밀번호 -->
                            <div class="form_group">
                                <input type="text" id="input_pass" name="pw" value="" placeholder="비밀번호를 입력해주세요">
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
