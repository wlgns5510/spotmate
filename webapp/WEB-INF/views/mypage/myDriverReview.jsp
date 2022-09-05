<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

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
	<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
	<script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.0.min.js"></script>

<title>review</title>


</head>

<body>
<div class="review-box">
    <form action="/driverReviewInsert" method="get">
		<div class="review-first-box clear">
			<p class="rbp">이용 내역</p>
			<div class="review-in-box">
				<p class="rfbp">출발지</p>
				<p class="rfbp2">도착지</p>
				<p class="rfbp">탑승 인원 수</p>
				<p class="rfbp2">탑승 시간</p>
				<p class="rfbp">총 결제 포인트</p>
			</div>
			<div class="review-in-box">
			<c:choose>
				<c:when test="${param.type=='read'}">
					<p class="rbp">${map.riVo.riVo.splace}</p>
					<p class="rbp2">${map.riVo.riVo.eplace}</p>
					<p class="rbp">${map.riVo.riVo.people}명</p>
					<p class="rbp2">${map.riVo.riVo.startTime}</p>
					<p class="rbp rbpc">${map.riVo.riVo.convertPoint}</p>
				</c:when>
				<c:otherwise>
					<p class="rbp">${map.riVo.splace}</p>
					<p class="rbp2">${map.riVo.eplace}</p>
					<p class="rbp">${map.riVo.people}명</p>
					<p class="rbp2">${map.riVo.startTime}</p>
					<p class="rbp rbpc">${map.riVo.convertPoint}</p>
				</c:otherwise>
			</c:choose>
			</div>
			<div class="review-in-box review-last-box">
				<img class="review-img" src="/assets/images/map_line_02.png">
				<c:choose>
				<c:when test="${param.type=='read'}">
				<span class="rbpc">도착지까지 소요시간 ${map.riVo.riVo.duration}, ${map.riVo.riVo.distance}</span>
				</c:when>
				<c:otherwise>
				<span class="rbpc">도착지까지 소요시간 ${map.riVo.duration}, ${map.riVo.distance}</span>
				</c:otherwise>
				</c:choose>
				
			</div>
		</div>
		<div class="review-second-box">
			<select class="ride-user" name="userNo">
				<option value=selected>탑승자</option>
				<c:forEach items="${map.pList}" var="pVo">
					<option value="${pVo.USERNO}">${pVo.NAME}</option>
				</c:forEach>
			</select>
			<p class="rbp">탑승유저 평가 *</p>
			<p class="rbp">탑승자의 매너 점수를 평가해주세요</p>
			<div class="score-box">
				<c:choose>
					<c:when test="${param.type=='read'}">
						<c:forEach items="${map.riVo.star}" var="star">
							<div class="score">
								<input class="slider" type="range" min="0" max="10" step="1" value="${star*20}" >
								<input type="hidden" name="star" value="" id="rs">
								<input type="hidden" name="resvNo" value="${map.riVo.riVo.resvNo}">
								<div class="foreground">★★★★★</div>
								<div class="background">☆☆☆☆☆</div>
							</div>
							<span class="display">${star}점</span>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<div class="score">
							<input class="slider" type="range" min="0" max="10" step="1" value="0" >
							<input type="hidden" name="star" value="" id="rs">
							<input type="hidden" name="resvNo" value="${map.riVo.resvNo}">
							<div class="foreground">★★★★★</div>
							<div class="background">☆☆☆☆☆</div>
						</div>
						<span class="display">0점</span>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<c:choose>
			<c:when test="${param.type=='read'}">
			</c:when>
			<c:otherwise>
				<button type="submit" class="review-btn">등록하기</button>
			</c:otherwise>
		</c:choose>
		<div>
		</div>
	</form>
</div>


</body>
<script type="text/javascript">

// ★★★★★
$(".score .foreground").css("width", "0%");
$(".score-box .display").html(0);

$(".slider").on("mousemove", function(){
	percent = $(".slider").val()*10;
	point = $(".slider").val() / 2.0;
	
	$(".score .foreground").css("width", percent+"%");
	$(".score-box .display").html(point);
	
	$("#rs").val($(".slider").val() / 2);
	
// 	if( star < 1 ){
// 		$(".score .foreground").text();
// 	} else if ( 2<= star < 4 ) {
// 		$(".score .foreground").text('★');
// 	} else if ( 4<= star < 6 ) {
// 		$(".score .foreground").text('★★');
// 	} else if ( 6<= star < 8 ) {
// 		$(".score .foreground").text('★★★');
// 	} else if ( 8<= star < 10 ) {
// 		$(".score .foreground").text('★★★★');
// 	} else if ( 10<= star < 11 ) {
// 		$(".score .foreground").text('★★★★★');
// 	}
});

$(".review-btn").on("click", function() {
	opener.$(".btn_review").text("작성완료");
})

var pList = ${map.pList};
console.log(pList);
	
	
</script>


</html>
