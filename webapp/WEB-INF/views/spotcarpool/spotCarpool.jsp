<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta charset="UTF-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
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
	<link rel="shortcut icon"
		href="${pageContext.request.contextPath}/assets/images/common/favicon.ico"
		type="image/x-icon">
	<link rel="icon"
		href="${pageContext.request.contextPath}/assets/images/common/favicon.ico"
		type="image/x-icon">
	<link rel="apple-touch-icon" sizes="57x57"
		href="${pageContext.request.contextPath}/assets/images/common/apple-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="60x60"
		href="${pageContext.request.contextPath}/assets/images/common/apple-icon-60x60.png">
	<link rel="apple-touch-icon" sizes="72x72"
		href="${pageContext.request.contextPath}/assets/images/common/apple-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="76x76"
		href="${pageContext.request.contextPath}/assets/images/common/apple-icon-76x76.png">
	<link rel="apple-touch-icon" sizes="114x114"
		href="${pageContext.request.contextPath}/assets/images/common/apple-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="120x120"
		href="${pageContext.request.contextPath}/assets/images/common/apple-icon-120x120.png">
	<link rel="apple-touch-icon" sizes="144x144"
		href="${pageContext.request.contextPath}/assets/images/common/apple-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="152x152"
		href="${pageContext.request.contextPath}/assets/images/common/apple-icon-152x152.png">
	<link rel="apple-touch-icon" sizes="180x180"
		href="${pageContext.request.contextPath}/assets/images/common/apple-icon-180x180.png">
	<link rel="icon" type="image/png" sizes="192x192"
		href="${pageContext.request.contextPath}/assets/images/common/android-icon-192x192.png">
	<link rel="icon" type="image/png" sizes="32x32"
		href="${pageContext.request.contextPath}/assets/images/common/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="96x96"
		href="${pageContext.request.contextPath}/assets/images/common/favicon-96x96.png">
	<link rel="icon" type="image/png" sizes="16x16"
		href="${pageContext.request.contextPath}/assets/images/common/favicon-16x16.png">
	<link rel="manifest"
		href="${pageContext.request.contextPath}/assets/images/common/manifest.json">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="msapplication-TileImage"
		content="${pageContext.request.contextPath}/assets/images/common/ms-icon-144x144.png">
	<meta name="theme-color" content="#ffffff">
	
	<!-- css, js 연결 -->
	<link
		href="${pageContext.request.contextPath}/assets/css/swiper-bundle.min.css"
		rel="stylesheet">
	<link href="${pageContext.request.contextPath}/assets/css/style.css"
		rel="stylesheet" />
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery-1.11.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/style.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/swiper.min.js"></script>

	<title>스팟 카풀 리스트</title>



</head>


<body>


<!-- 	<div id="wrap"> -->
	
		<!-- header-->
		<c:import url="../includes/header.jsp"></c:import>
		<!-- //header-->
		
					
		
		<!-- CONTENT -->

		
		<div class="content-head">
		<div class="clear" style="width:1920px; margin:0px auto;">
			<div class="carpool-MainText1">
			<span>같이 타고 가요</span><p>SPOT CARPOOL</p>
		</div> <span class="carpool-MainText2"> 이동하는 경로가 비슷한 드라이버를 찾아 <br> 출발지부터 목적지까지 편하게 이동해보세요.
			</span>
		</div>
		</div>
		
		<div id="content" class="clear">
			<form class="searchForm" action="${pageContext.request.contextPath}/spotCarpool" method="get">
								
				<button type="submit" class="search">
					<img class="carpoolSearchPicto" src="/assets/images/round-search.png">
					<p>검색하기</p>
				</button>
				<div class="carpoolInput">
					<input class="input1" type="text" name="splace" value="${param.splace}" placeholder="출발지를 입력하세요">
					<!--<button>
						<img class="carpoolInput1Picto" src="/assets/images/arrows_exchange02.png">
					</button>  -->
				</div>

				<input class="input2" type="text" name="eplace" value="${param.eplace}" placeholder="도착지를 입력하세요">
				
				<input class="input3" type="time" name="sTime" value="${param.sTime}" placeholder="출발시간">
				
				<div class="carpoolInput">
					<input class="input4" type="number" name="smPeople" value="${param.smPeople}" placeholder="인원수">
					<!-- <button>
						<img class="carpoolInput4Picto" src="/assets/images/ico_updown.png">
					</button> -->
				</div>
				
				<div class="carpoolInput"> 
					<input  class="input5" type="date" name="startDate" value="${param.startDate}" placeholder="이용 출발 날짜">
					<!--<button>
						<img class="carpoolInput5Picto" src="/assets/images/regularcalendar.png">
					
					</button>  -->
				</div>
				
				<div class="carpoolInput">
					<input class="input6" type="date" name="endDate" value="${param.endDate}" placeholder="이용 도착 날짜"> 
					<!--<button>
						<img class="carpoolInput6Picto" src="/assets/images/regularcalendar.png">
					</button>  -->
				</div>

		

				<div class="detail">
				
					<label class="detailtext">
					<input class="detail_ckbox" type="checkbox" name="ch_type" value="1">
					&nbsp;&nbsp;비흡연자</label>
					
					<label class="detailtext">
					<input class="detail_ckbox" type="checkbox" name="ch_type" value="2">
					&nbsp;&nbsp;여성드라이버</label>
					
					<label class="detailtext">
					<input class="detail_ckbox" type="checkbox" name="ch_type" value="3">
					&nbsp;&nbsp;반려동물</label>
					
					<label class="detailtext">
					<input class="detail_ckbox" type="checkbox" name="ch_type" value="4">
					&nbsp;&nbsp;충전기 사용 가능</label>
					
					<label class="detailtext">
					<input class="detail_ckbox" type="checkbox" name="ch_type" value="5">
					&nbsp;&nbsp;트렁크 사용 가능</label>
					
				
				</div>
			</form>
		</div>
		
		<div class="content_middle">
			<div class="carList">
				<span class="listText">탑승 가능 차량 리스트</span>
			</div>


			<div class="list">
		
				<table>
					<thead>
						<tr>
							<th>번호</th>		
							<th>유형</th>
							<th>출발지</th>
							<th>도착지</th>
							<th>지급 포인트</th>
							<th>드라이버</th>
							<th>상태</th>			
						</tr>
					</thead>

					<tbody>
					<!--  
						<c:forEach items="${carpoolList}" var="carpoolVo">
							<tr>
								<td>${carpoolVo.no }</td>
								<td>${carpoolVo.type}</td>
								<td><c:if test="${carpoolVo.wayNo == 0}">
							${carpoolVo.place}</c:if></td>
								<td><c:if test="${carpoolVo.wayNo == 6}">
							${carpoolVo.place}</c:if></td>
								<td>${carpoolVo.point}</td>
								<td>${carpoolVo.driverNo}</td>
								<td><a href="./spotCarpoolDeep"><button class="board">탑승요청</button></a></td>
	
							</tr>
						</c:forEach>
						
						-->
						
						<c:forEach items="${cMap.carpoolList}" var="carpoolVo">
							<tr>
								<td>${carpoolVo.spotMateNo}</td>
								<td>${carpoolVo.type}</td>
								<td>${carpoolVo.splace}</td>
								<td>${carpoolVo.eplace}</td>
								<td>${carpoolVo.point}</td>
								<td>${carpoolVo.id} = ${carpoolVo.opts}</td>
								<td><a href="${pageContext.request.contextPath}/spotCarpoolDeep/${carpoolVo.spotMateNo}"><button class="board">탑승요청</button></a></td>
	
							</tr>
						</c:forEach>
					</tbody>
				
				</table>
				
				
				</div> 
				
				<div class="carpool-paging">
							<ul>
							<c:if test="${cMap.prev}">
								<li><a href="${pageContext.request.contextPath}/spotCarpool?crtPage=${cMap.startPageBtnNo-1}"> <img class="carpoolPagePicto" src="/assets/images/chevron-double-left.png">
								</a></li>
							</c:if>
							<c:if test="${cMap.prev}">
								<li><a href="${pageContext.request.contextPath}/spotCarpool?crtPage=${param.crtPage-1}"> <img class="carpoolPagePicto" src="/assets/images/chevron-left.png">
								</a></li>
							</c:if>
							<c:forEach begin="${cMap.startPageBtnNo}" end="${cMap.endPageBtnNo}" step="1" var="page">
								<li>
									<a <c:if test="${param.crtPage==page}">class='active'</c:if>
									   href="${pageContext.request.contextPath}/spotCarpool?crtPage=${page}&splace=${param.splace}&eplace=${param.eplace}&sTime=${param.sTime}&smPeople=${param.smPeople}&startDate=${param.startDate}&endDate=${param.endDate}<c:forEach items="${paramValues.ch_type}" var="item">&ch_type=${item}</c:forEach>"
									 >
									   ${page}	
									</a>
								</li>
							</c:forEach>
							<c:if test="${cMap.next}">
								<li><a href="${pageContext.request.contextPath}/spotCarpool?crtPage=${param.crtPage+1}"> <img class="carpoolPagePicto" src="/assets/images/chevron-right.png">
								</a></li>
							</c:if>
							<c:if test="${cMap.next}">
								<li><a href="${pageContext.request.contextPath}/spotCarpool?crtPage=${cMap.endPageBtnNo+1}"> <img class="carpoolPagePicto" src="/assets/images/chevron-double-right.png">
								</a></li>
							</c:if>
						</ul>
				</div>				
					
		</div>
		
		
		
		<!-- footer-->
		<c:import url="../includes/footer.jsp"></c:import>
		<!-- //footer-->
	
	
<!-- 	</div> -->

	
</body>


</html>