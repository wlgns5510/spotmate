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
	
	<title>myInfoChk</title>
	
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
					<h3>개인정보 수정</h3>
					<div class="myPage_InfoChkEx">
						<h4>비밀번호 재확인</h4>
						<p>회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인해주세요.
						<input type="hidden"  id="userId" value="${userVo.id }">
						<input type="hidden" id="userPw"value="${userVo.pw }">
					</div>
				</header>

				<!-- //section-article2 -->
				<article class="myPage_article2">
					<form action="${pageContext.request.contextPath }/mypageJ/myInfoForm" class="myPage_InfoChk" method="get">
						<div class="myPage_InfoChkPass">
							<table class="myPage_InfoChkForm">
								<tbody>
									<tr>
										<th><label>아이디*</label></th>
										<td><input id="input-uid" type="text"></td>
										</tr>
										<tr>
										<th><label>패스워드*</label>
										<td><input id="input-upw" type="password"></td>
									</tr>
								</tbody>
							</table>
						</div>
						<button type="submit"><span>확인</span></button>
					</form>
				</article>
			</section>
		</main>


		<!-- //banner & footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	</div>
</body>
<script type="text/javascript">

$(".myPage_InfoChk").on("submit", function(){
	console.log("비밀번호확인");
	
	var id = $("#input-uid").val();
	var pw = $("#input-upw").val();
	var userId = $("#userId").val();
	var userPw = $("#userPw").val();
	
	if(id == "" || id == null) {
		alert("아이디를 입력해주세요.");
		return false;
	}
	
	if(id != userId) {
		alert("아이디가 일치하지 않습니다.");
		return false;
	}
	
	if(pw == "" || pw == null) {
		alert("비밀번호를 입력해주세요.");
		return false;
	}
	
	if(pw != userPw) {
		alert("비밀번호가 일치하지 않습니다.");
		return false;
	}
	
	
});


</script>

</html>