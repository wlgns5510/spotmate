<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
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
	
	
	
	<title>mateMain</title>
	
</head>
<body>
<!-- mateMain_wrap -->
<div class="mateMain_wrap">

	<!-- header -->
	<header>
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	</header>	
	<!-- //header -->
	
	<!-- mateMain_content -->
	<div class="mateMain-banner">
	<div class="mateMain_content">
	<div class="seachBox">
			<h2>FIND YOUR MATE</h2>
			
			<div class="mateMain_inputBox">
				<form class="mateSearch" action="${pageContext.request.contextPath}/mateMain" method="get">
					<div class="selBox">
						<div class="sel1">
							<label for="Location" class="LocationLabel">Location</label><br>
							<input type="text" id="Location" name="ePlace" value="${param.ePlace}" placeholder="목적지를 입력해주세요">
						</div>
						
						<div class="sel2">
							<label for="CheckIn" class="CheckInLabel">Check In</label><br>
							<input type="date" id="CheckIn" <%-- name="sDate" value="${param.sDate} --%>" placeholder="Add Dates">
						</div>
						
						<div class="sel3">
							<label for="CheckOut" class="CheckOutLabel">Check Out</label><br>
							<input type="date" id="CheckOut" <%-- name="eDate" value="${param.eDate --%>}" placeholder="Add Dates">
						</div>
						
						<div class="sel4">
							<label for="People" class="PeopleLabel">People</label><br>
							<input type="text" id="People" <%-- name="people" value="${param.people} --%>" placeholder="Add Guests">
						</div>
					</div>
					
					<button type="submit" class="searchPictogrem"></button>
				</form>
			</div>
		</div>
	</div>
	</div>
	<!-- mateMain_content -->
	
	<!-- mateMain_content2 -->
	<div class="mateMain_content2">
		<div class="DetaileBox">
			<img class="DetaileBoxImg" src="/assets/images/ico_filter_white.png"> 
			<span class="DetaileBoxFont">상세조건</span>
		</div>
		<div class="checkBox">
				<span class="nonSmoke"><input type="checkbox" name="mateContactList" value="nonSmoke">비흡연자</span>
				<span class="femaleDriver"><input type="checkbox" name="mateContactList" value="femaleDriver">여성드라이버</span>
				<span class="pet"><input type="checkbox" name="mateContactList" value="pet">반려동물</span>
				<span class="phoneCharger"><input type="checkbox" name="mateContactList" value="phoneCharger">충전기 사용 가능</span>
				<span class="useTrunk"><input type="checkbox" name="mateContactList" value="useTrunk">트렁크 사용 가능</span>									
		</div>
		
		<div class="mateListAll clear">
			
			<c:forEach items="${mateList}" var="mateList" varStatus="status">
				<div class=mateList>
				<a href="/mateDeep/${mateList.mateNo}">
						
						<img src="/assets/images/mate_imgbox/${randomNumList[status.index]}.png" class="matePicture">
						
					
																	
				</a><br>
					<span class="driverName">Driver ${mateList.name}</span>
					<span class="schedule">일정 ${mateList.startDate} - ${mateList.endDate}</span><br>
					<span class="startEnd">
						${mateList.sPlace} → ${mateList.ePlace}
					</span>
					<div class="mateMain_listBox">
						<img src="/assets/images/car icon.png">
						<span class="seatNo">${mateList.people}</span>
						
						
						
					</div>
							
				</div>	
			</c:forEach>
			
						
		</div>
		<button class="mateListBtn">
				<h2>더보기</h2>
		</button>
		
		
		
		
		
									
	</div>
	<!-- //mateMain_content2 -->
	
	
	<!-- footer -->
	<footer>
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	</footer>	
	<!-- //footer -->
</div>
<!-- //mateMain_wrap -->
</body>
<script type="text/javascript">


</script>
</html>