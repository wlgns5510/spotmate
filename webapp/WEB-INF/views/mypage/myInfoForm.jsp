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
<link rel="icon" type="image/png" sizes="192x192" href="${pageContext.request.contextPath}/assets/images/common/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/images/common/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="${pageContext.request.contextPath}/assets/images/common/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/assets/images/common/favicon-16x16.png">
<link rel="manifest" href="${pageContext.request.contextPath}/assets/images/common/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="${pageContext.request.contextPath}/assets/images/common/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">

<!-- css, js 연결 -->
<link href="${pageContext.request.contextPath}/assets/css/swiper-bundle.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.0.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/style.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/swiper.min.js"></script>

<!-- 다음주소 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<title>myInfoForm</title>

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
				<header class="myPage_Infoheader">
					<h3>개인정보 수정</h3>
				</header>
				<article class="myPage_InfoArticle">
					<form action="${pageContext.request.contextPath }/mypageJ/myInfoModify" method="post">
						<!-- 아이디 -->
						<div class="join_group topborder">
							<label class="" for="">아이디*</label> <label class="myPageInfo_uid">${userVo.id }</label>
						</div>

						<!-- 새비밀번호 -->
						<div class="join_group">
							<label class="" for="">새비밀번호*</label> <input type="text" id="password" name="pw" value="" placeholder="새비밀번호를 입력해주세요">
						</div>
						<!-- 비밀번호 확인 -->
						<div class="join_group">
							<label class="" for="">새비밀번호확인*</label> <input type="text" id="confirm_password" name="" value="" placeholder="새비밀번호를 한번 더 입력해주세요">
						</div>
						<span id='message'></span>
						<!-- 이름 -->
						<div class="join_group">
							<label class="" for="">이름*</label> <input type="text" id="join_name" name="name" value="${userVo.name }">
						</div>

						<!-- 이메일 -->
						<div class="join_group">
							<label class="" for="">이메일*</label> <input type="email" id="join_emil" name="email" value="${userVo.email }">
						</div>

						<!-- 휴대폰 -->
						<div class="join_group">
							<label class="" for="">휴대폰*</label> <input type="text" id="join_phone" name="phone" value="${userVo.phone }">
							<button type="button" id="id_check">본인인증</button>
						</div>

						<!-- 주소 -->
						<div class="join_group">
							<label class="" for="">주소*</label> <input type="text" id="info_address" name="address" value="${userVo.address }">
							<button type="button" id="address_check">주소 검색</button>
						</div>

						<!-- 성별 -->
						<div class="join_checkbox">
							<label class="joingender" for="">성별*</label>
							<c:if test="${userVo.gender == 'male'}">
								<input type="radio" id="join_male" checked="checked" name="gender" value="male">
								<label class="jointext" for="">남자</label>
								<input type="radio" id="join_female" name="gender" value="female">
								<label class="jointext" for="">여자</label>
							</c:if>
							<c:if test="${userVo.gender == 'female'}">
								<input type="radio" id="join_male" name="gender" value="male">
								<label class="jointext" for="">남자</label>
								<input type="radio" id="join_female" checked="checked" name="gender" value="female">
								<label class="jointext" for="">여자</label>
							</c:if>
						</div>

						<!-- 생년월일 -->
						<div class="join_group info" id="info_birth">
							<label for="">생년월일*</label> <label class="myPageInfo_birth">${userVo.birth}</label>
						</div>

						<div class="myInfoForm_border"></div>

						<!-- 버튼영역 -->
						<div class="button_area">
							<button type="submit" id="btn_submit">수정하기</button>
						</div>
					</form>
				</article>
			</section>
		</main>


		<!-- //banner & footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	</div>

</body>
<script type="text/javascript">
	window.onload = function(){
	    document.getElementById("address_check").addEventListener("click", function(){ //주소입력칸을 클릭하면
	        new daum.Postcode({
	            oncomplete: function(data) { //선택시 입력값 세팅
	                document.getElementById("info_address").value = data.address; // 주소 넣기
	            }
	        }).open();
	    });
	}
	
	$("#btn_submit").on("click", function(){
		
		var password = $("#password").val();
		var confirm_password = $("#confirm_password").val();
		
		
        if(password != confirm_password){
        	alert("비밀번호가 일치하지 않습니다");
            return false;
        }
	});
	
	
</script>

</html>