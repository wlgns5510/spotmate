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
	
	<title>NOTICEWriteForm</title>

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
                    <div class="login_banner">
                        <p></p>
                    </div>
                    <div class="banner_text clear">
                        <div class="text_lft">
                            <h2>공지사항</h2>
                            <h2>COMMUNITY NOTICE</h2>
                        </div>
                        <div class="text_rit">
                            <h3>서비스 이용시 문의사항이 가장 많은 내용입니다.</h3>
                            <h3>그 외의 질문이 있으시다면 1:1 문의하기를 사용해보세요.</h3>
                        </div>
                    </div>
                    
        </section>
        <section class="sub_wrap">
            <div class="sub_nav clear">
                <ul>
                    <li class="sub_faq"><a href="/notice/1">NOTICE</a></li>
                    <li><a href="javascript:void(0);">FAQ</a></li>
                    <li><a href="/event">EVENT</a></li>
                </ul>
            </div>
        </section>

        <!-- inner -->
        <section>
            <div class="inner">
                <div id="write_board" class="writeBoard">
                    <p class="writeImg"></p>
                    <h2>공지사항 글쓰기</h2>
                    <p>*spotmate admin 계정만 작성가능</p>

                    <div id="noticeWriteForm" class="noWriteBox">
                    
                        <form action="./insert" method="get">
                            <!-- 유형 -->
                            <div class="noWrite_form">
                                <label class="txt-title" for="nowrite-title">유형</label>
                                <select name="notiDetail" class="noti_Detail">
                                    <option value="">유형을 선택해주세요</option>
                                    <option value="season">카풀정기권</option>
                                    <option value="carpool">카풀1회성</option>
                                    <option value="hitchhike">히치하이크</option>
                                    <option value="mate">메이트</option>
                                    <option value="notice">공지사항</option>
                                    <option value="event">이벤트</option>
                                </select>
                            </div>

                            <!-- 제목 -->
                            <div class="noWrite_form">
                                <label class="txt-title" for="nowrite-title">제목</label>
                                <input type="text" id="nowrite-title" name="title" value="" placeholder="제목을 입력해 주세요">
                            </div>

                            <!-- 내용 -->
                            <div class="noWrite_form">
                                <label class="txt-title" for="nowrite-title">내용</label>
                                <textarea id="nowrite-content" name="content" placeholder="내용을 작성해주세요"></textarea>
                            </div>

                            <!-- 버튼영역 -->
                            <div class="writeBtn_area">
                                <a id="btn_cancel" href="/notice/1">취소</a>
                                <button id="btn_add" type="button">등록</button>
                            </div>
                        </form>
                    </div>
                </div>

                
            </div>
            <!-- inner -->
        </section>
	<!-- //content -->

	<!-- footer -->
    <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
    <!-- footer -->
</body>

<script>
	$("#btn_add").on("click", function() {
		if($(".noti_Detail").val() == '') {
			alert("유형을 지정해 주세요!")
			return;
		}
		$("#btn_add").attr("type", "submit");
	})
	
</script>
</html>