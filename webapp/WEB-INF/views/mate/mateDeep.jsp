<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mateDeep</title>

<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
<script src="/assets/js/jquery-1.11.0.min.js"></script>

</head>
<body>
	<!-- mateDeep_wrap -->
	<div class="mateDeep_wrap">

		<!-- header -->
		<header>
			<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		</header>
		<!-- //header -->

		<!-- mateDeep_banner1 -->
		<div class="mateDeep_banner1">
			<div class="mate-deep-banner clear">
				<div class="mate-deep-banner-l-sec">
					<span>같이 타고 가요</span>
					<p>FIND YOUR MATE</p>
				</div>
				<h3>
					출발지에서 도착지까지<br> 모든 일정의 이동을 함께하는 서비스입니다.
				</h3>
			</div>
		</div>

		<div class="inner">
			<!-- //mateDeep_banner1 -->
			<div class="carpoolDeep-aside">
				<div class="aside">
					<form class="confirmForm">
						출발지<br> 
						<div class="confirm">
							<c:forEach items="${matePlaceList}" var="matePlaceList">
								<c:if test="${matePlaceList.wayNo == -1 && matePlaceList.day == '1'}">
									${matePlaceList.place}
								</c:if>
							</c:forEach>
						</div>
						목적지<br> 
						<div class="confirm">
							<c:forEach items="${matePlaceList}" var="matePlaceList">
								<c:if test="${matePlaceList.wayNo == 0 && matePlaceList.day == '1'}">
									${matePlaceList.place}
								</c:if>
							</c:forEach>
						</div>
						탑승 인원 수<br> 
						<div class="confirm">
							${mateVo.people}명
						</div> 
						탑승 시간<br> 
						<div class="confirm">
							<c:forEach items="${matePlaceList}" var="matePlaceList">
								<c:if test="${matePlaceList.wayNo == -1 && matePlaceList.day == '1'}">
									${matePlaceList.time}
								</c:if>
							</c:forEach>
						</div>
						처음 탑승일<br>
						<div class="confirm">
							<c:forEach items="${matePlaceList}" var="matePlaceList">
								<c:if test="${matePlaceList.wayNo == -1 && matePlaceList.day == '1'}">
									${matePlaceList.startDate}
								</c:if>
							</c:forEach>
						</div>
						마지막 탑승일<br> 
						<div class="confirm">
							<c:forEach items="${matePlaceList}" var="matePlaceList">
								<c:if test="${matePlaceList.wayNo == -1 && matePlaceList.day == '1'}">
									${matePlaceList.endDate}
								</c:if>
							</c:forEach>
						</div>

					</form>

					<div class="point">
						총 결제 포인트<br> 
						<div class="pointConfirm">
							<fmt:formatNumber value="${mateVo.point}" pattern="#,###" />포인트
						</div><br> <br> 
						<span
							class="pointText">*포인트는 선결제되며,<br>도착시 드라이버에게 지급됩니다.
						</span>

					</div>

					<button class="rideButton">탑승하기</button>
				</div>
			</div>
			
			<div class="mateDeep_content">
				<div class="mateDeep_titleFont1">이동 스케줄</div> 
				

				<c:forEach items="${matePlaceList}" var="matePlaceList">
					<c:choose>
						<c:when test="${matePlaceList.wayNo == -1}">
							<div class="mateDeep_today">
								<div class="mateDeep_dayBox">															
									<p><c:out value="${matePlaceList.day}일차"/></p>								
								</div>
								<div class="mateDeep_float">
									<div class="mateDeep_start">
										<c:choose>
											<c:when test="${matePlaceList.wayNo == -1}">										
												START
											</c:when>
											<c:when test="${matePlaceList.wayNo == 0}">										
												END
											</c:when>
											<c:when test="${matePlaceList.wayNo == 1}">										
												SPOT 1
											</c:when>
											<c:when test="${matePlaceList.wayNo == 2}">										
												SPOT 2
											</c:when>
											<c:when test="${matePlaceList.wayNo == 3}">										
												SPOT 3
											</c:when>
											<c:when test="${matePlaceList.wayNo == 4}">										
												SPOT 4
											</c:when>
											<c:when test="${matePlaceList.wayNo == 5}">										
												SPOT 5
											</c:when>
										</c:choose>										
									</div>
									<div class="mateDeep_time">08 : 00 AM</div>
									<div class="mateDeep_spot">서울역</div>
								</div>
								<img class="mateDeep_float"
									src="${pageContext.request.contextPath}/assets/images/mate_mapline.png">
								<div class="mateDeep_float">
									<div class="mateDeep_start">SPOT 1</div>
									<div class="mateDeep_time">01 : 30 PM</div>
									<div class="mateDeep_spot">강릉 안목해변</div>
								</div>
								<img class="mateDeep_float"
									src="${pageContext.request.contextPath}/assets/images/mate_mapline.png">
								<div class="mateDeep_float">
									<div class="mateDeep_start">SPOT 2</div>
									<div class="mateDeep_time">04 : 20 PM</div>
									<div class="mateDeep_spot">테라로사 카페</div>
								</div>
								<img class="mateDeep_float"
									src="${pageContext.request.contextPath}/assets/images/mate_mapline.png">
								<div class="mateDeep_float">
									<div class="mateDeep_start">SPOT 3</div>
									<div class="mateDeep_time">07 : 20 PM</div>
									<div class="mateDeep_spot">강릉 주문진</div>
								</div>
							</div>
						</c:when>
					</c:choose>
				</c:forEach>
				

				<div class="mateDeep_titleFont2">주변 장소 추천</div>
				<div class="mateDeep_map"></div>
				<img class="mateDeep_img1" src="/assets/images/ico_spot.png">
				<span class="mateDeep_placeAround">송정동 주변 4km</span> <span
					class="mateDeep_placeRecommend"> <select
					name="placeRecommend">
						<option value="cafe">카페</option>
						<option value="restaurant">음식점</option>
						<option value="attraction">명소</option>
				</select>
				</span> <img class="mateDeep_img2" src="/assets/images/square-search.png">
				
				<div class="mateDeep_recommendListBox">
					<button class="beforeBtn" type="button"><img src="/assets/images/common/ico_arrow_lft.png"></button>
					<div class="mateDeep_recommendList"></div>
					<div class="mateDeep_recommendList"></div>
					<div class="mateDeep_recommendList"></div>
					
					
					<button class="nextBtn" type="button"><img src="/assets/images/common/ico_arrow_rit.png"></button>
				</div>









			</div>
		</div>
		<!-- //mateDeep_content -->


		<!-- footer -->
		<header>
			<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		</header>
		<!-- //footer -->

	</div>
	<!-- //mateDeep_wrap -->
</body>
</html>