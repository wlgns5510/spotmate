<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

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

	<title>mateDeep</title>

</head>

<style>
	.map_wrap, .map_wrap * {margin:0; padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
	.map_wrap {position:relative;width:100%;height:350px;}
	#category {position:absolute;top:10px;left:10px;border-radius: 5px; border:1px solid #909090;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);background: #fff;overflow: hidden;z-index: 2;}
	#category li {float:left;list-style: none;width:50px;px;border-right:1px solid #acacac;padding:6px 0;text-align: center; cursor: pointer;}
	#category li.on {background: #eee;}
	#category li:hover {background: #ffe6e6;border-left:1px solid #acacac;margin-left: -1px;}
	#category li:last-child{margin-right:0;border-right:0;}
	#category li span {display: block;margin:0 auto 3px;width:27px;height: 28px;}
	#category li .category_bg {background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png) no-repeat;}
	#category li .lodging {background-position: -10px 0;}
	#category li .food {background-position: -10px -36px;}
	#category li .attraction {background-position: -10px -72px;}
	#category li .cafe {background-position: -10px -144px;}
	#category li .store {background-position: -10px -180px;}
	#category li.on .category_bg {background-position-x:-46px;}
	.placeinfo_wrap {position:absolute;bottom:28px;left:-150px;width:300px;}
	.placeinfo {position:relative;width:100%;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;padding-bottom: 10px;background: #fff;}
	.placeinfo:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
	.placeinfo_wrap .after {content:'';position:relative;margin-left:-12px;left:50%;width:22px;height:12px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
	.placeinfo a, .placeinfo a:hover, .placeinfo a:active{color:#fff;text-decoration: none;}
	.placeinfo a, .placeinfo span {display: block;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
	.placeinfo span {margin:5px 5px 0 5px;cursor: default;font-size:13px;}
	.placeinfo .title {font-weight: bold; font-size:14px;border-radius: 6px 6px 0 0;margin: -1px -1px 0 -1px;padding:10px; color: #fff;background: #d95050;background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
	.placeinfo .tel {color:#0f7833;}
	.placeinfo .jibun {color:#999;font-size:11px;margin-top:0;}
</style>

<body>
<!-- mateDeep_wrap -->
<div class="mateDeep_wrap">
	<!-- header -->		
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>		
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
		<div class="aside">
			<div class="confirmForm">
				<form action="/saveMate" method="get">
					출발지<br> 
					<div class="confirm">
						<c:forEach items="${mMap.matePlaceList}" var="matePlaceList">
							<c:if test="${matePlaceList.wayNo == -1 && matePlaceList.day == '1'}">
								${matePlaceList.place}
							</c:if>
						</c:forEach>
					</div>
					목적지<br> 
					<div class="confirm">
						<c:forEach items="${mMap.matePlaceList}" var="matePlaceList">
							<c:if test="${matePlaceList.wayNo == 0 && matePlaceList.day == '1'}">
								${matePlaceList.place}
							</c:if>
						</c:forEach>
					</div>
					탑승 가능 인원 수<br> 
					<div class="confirm">
						${mMap.mateVo.people}명
					</div>
					<c:if test='${param.result == "fail"}'>
						<p class= overPeople>※ 탑승 가능 인원 수를 초과하였습니다</p>
					</c:if>
					탑승 요청 인원 수<br>
					<input class="confirm-2" type="number" name="people" value="1" placeholder=" 인원 수를 입력해주세요">
					탑승 시간<br> 
					<div class="confirm">
						<c:forEach items="${mMap.matePlaceList}" var="matePlaceList">
							<c:if test="${matePlaceList.wayNo == -1 && matePlaceList.day == '1'}">
								${matePlaceList.time}
							</c:if>
						</c:forEach>
					</div>
					처음 탑승일<br>
					<div class="confirm">
						<c:forEach items="${mMap.matePlaceList}" var="matePlaceList">
							<c:if test="${matePlaceList.wayNo == -1 && matePlaceList.day == '1'}">
								${matePlaceList.startDate}
							</c:if>
						</c:forEach>
					</div>
					마지막 탑승일<br> 
					<div class="confirm">
						<c:forEach items="${mMap.matePlaceList}" var="matePlaceList">
							<c:if test="${matePlaceList.wayNo == -1 && matePlaceList.day == '1'}">
								${matePlaceList.endDate}
							</c:if>
						</c:forEach>
					</div>
					<input type="hidden" name="spotMateNo" value="${mMap.mateVo.mateNo}">

				

					<div class="point">
							총 결제 포인트<br> 
						<div class="pointConfirm">
							<fmt:formatNumber value="${mMap.mateVo.point}" pattern="#,###" /> Point
						</div><br> <br> 
						<span
							class="pointText">*포인트는 선결제되며,<br>도착시 드라이버에게 지급됩니다.
						</span>		
					</div>

					<c:choose>
						<c:when test="${authUser != null}">
								<button type="submit" class="rideButton">탑승하기</button>
						</c:when>
						<c:otherwise>
							<a href="/loginForm"><button type="button" class="rideButton">로그인 하러 가기</button></a>
						</c:otherwise>
					</c:choose>
				</form>
			</div>
		</div>
		<div class="mateDeep_content clear">
			<div class="mateDeep_titleFont1">이동 스케줄</div> 
			
			<div class="mateDeep_today">
				<div class="mateDeep_dayBox">
					<p>1일차</p>
				</div>
				<c:forEach items="${mMap.matePlaceList}" var="matePlaceList">
					<c:if test="${matePlaceList.day == 1}">
						<div class="mateDeep_spotBox" data-lat="${matePlaceList.lat}" data-lng="${matePlaceList.lng}" data-place="${matePlaceList.place}">
							<div class="mateDeep_start">
							<c:if test="${matePlaceList.wayNo == -1}">
								START
							</c:if>
							<c:if test="${matePlaceList.wayNo == 1}">
								SPOT 1
							</c:if>
							<c:if test="${matePlaceList.wayNo == 2}">
								SPOT 2
							</c:if>
							<c:if test="${matePlaceList.wayNo == 3}">
								SPOT 3
							</c:if>
							<c:if test="${matePlaceList.wayNo == 4}">
								SPOT 4
							</c:if>
							<c:if test="${matePlaceList.wayNo == 5}">
								SPOT 5
							</c:if>
							<c:if test="${matePlaceList.wayNo == 0}">
								END
							</c:if>
							</div>
							<div class="mateDeep_time">${matePlaceList.time}</div>
							<div class="mateDeep_spot">${matePlaceList.place}</div>
						</div>
						<c:if test="${matePlaceList.wayNo != 0}">					
							<img class="mateDeep_lineImg" src="${pageContext.request.contextPath}/assets/images/mate_mapline.png">
						</c:if>
					</c:if>
				</c:forEach>														
			</div>
		
		<!-- //1일차 -->
		
		<div class="mateDeep_today">
			<c:if test="${mMap.mateVo.allDay == 1}">
				<div class="mateDeep_dayBox">							
					<p>2일차</p>							
				</div>
			</c:if>
			<c:forEach items="${mMap.matePlaceList}" var="matePlaceList">
				<c:if test="${matePlaceList.day == 2}">
					<div class="mateDeep_spotBox" data-lat="${matePlaceList.lat}" data-lng="${matePlaceList.lng}" data-place="${matePlaceList.place}">
						<div class="mateDeep_start">
						<c:if test="${matePlaceList.wayNo == -1}">
							START
						</c:if>
						<c:if test="${matePlaceList.wayNo == 1}">
							SPOT 1
						</c:if>
						<c:if test="${matePlaceList.wayNo == 2}">
							SPOT 2
						</c:if>
						<c:if test="${matePlaceList.wayNo == 3}">
							SPOT 3
						</c:if>
						<c:if test="${matePlaceList.wayNo == 4}">
							SPOT 4
						</c:if>
						<c:if test="${matePlaceList.wayNo == 5}">
							SPOT 5
						</c:if>
						<c:if test="${matePlaceList.wayNo == 0}">
							END
						</c:if>
						</div>
						<div class="mateDeep_time">${matePlaceList.time}</div>
						<div class="mateDeep_spot">${matePlaceList.place}</div>
					</div>
					<c:if test="${matePlaceList.wayNo != 0}">					
						<img class="mateDeep_lineImg" src="${pageContext.request.contextPath}/assets/images/mate_mapline.png">
					</c:if>
				</c:if>
			</c:forEach>														
		</div>
		<!-- 2일차 -->
		
		<div class="mateDeep_today">
			<c:if test="${mMap.mateVo.allDay == 2}">	
				<div class="mateDeep_dayBox">										
					<p>3일차</p>													
				</div>
			</c:if>		
				<c:forEach items="${mMap.matePlaceList}" var="matePlaceList">
					<c:if test="${matePlaceList.day == 3}">
						<div class="mateDeep_spotBox" data-lat="${matePlaceList.lat}" data-lng="${matePlaceList.lng}" data-place="${matePlaceList.place}">
							<div class="mateDeep_start">
							<c:if test="${matePlaceList.wayNo == -1}">
								START
							</c:if>
							<c:if test="${matePlaceList.wayNo == 1}">
								SPOT 1
							</c:if>
							<c:if test="${matePlaceList.wayNo == 2}">
								SPOT 2
							</c:if>
							<c:if test="${matePlaceList.wayNo == 3}">
								SPOT 3
							</c:if>
							<c:if test="${matePlaceList.wayNo == 4}">
								SPOT 4
							</c:if>
							<c:if test="${matePlaceList.wayNo == 5}">
								SPOT 5
							</c:if>
							<c:if test="${matePlaceList.wayNo == 0}">
								END
							</c:if>
							</div>
							<div class="mateDeep_time">${matePlaceList.time}</div>
							<div class="mateDeep_spot">${matePlaceList.place}</div>
						</div>
						<c:if test="${matePlaceList.wayNo != 0}">					
							<img class="mateDeep_lineImg" src="${pageContext.request.contextPath}/assets/images/mate_mapline.png">
						</c:if>
					</c:if>
				</c:forEach>														
			</div>
			<!-- //3일차 -->
			
			<div class="mateDeep_titleFont2">주변 장소 추천</div>
			<div class="map_wrap" id="mapPoint">
			    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
			    <ul id="category">
			        <li id="AD5" data-order="0"> 
			            <span class="category_bg lodging"></span>
			            숙박
			        </li>       
			        <li id="FD6" data-order="1"> 
			            <span class="category_bg food"></span>
			            음식점
			        </li> 
			        <li id="AT4" data-order="2"> 
			            <span class="category_bg attraction"></span>
			            관광명소
			        </li>
			        
			        <li id="CE7" data-order="4"> 
			            <span class="category_bg cafe"></span>
			            카페
			        </li>  
			        <li id="CS2" data-order="5"> 
			            <span class="category_bg store"></span>
			            편의점
			        </li>      
			   	 </ul>
			</div>
			<div class="mateDeep_recommendBox clear">
				<img class="mateDeep_img1" src="/assets/images/ico_spot.png">
				<span class="mateDeep_placeAround" id="mateDeep_placeAround">이동 스케줄에서 스팟을 선택해주세요</span> 
				
			</div>
			<div class="carpool-top2">
				<p class="authDriverInfo">
					${mMap.mateDriverVo.id} 드라이버님의 차량 정보
				</p>
				<div class="carpool-picture">
					<div class="carpool-picture-image">
						<a href=""> <img src="/upload/${mateDriverVo.carPicture}">
							<h3>
								<span> ${mMap.mateDriverVo.carName}<br>(${mMap.mateDriverVo.carNo})</span>
								
							</h3>
						</a>
					</div>
				</div>
				<div class="driverIntoduce">
					<button class="self-Check">
						<img class="self-checkPicto" src="/assets/images/ico_save.png">
						&nbsp;본인인증 완료
					</button>
					드라이버 소개
				</div>
				<div class="introduceText">${mMap.mateDriverVo.introduce}</div>
				<div class="driverComments">COMMENTS</div>
				<div class="introduceText">${mMap.mateDriverVo.comments}</div>
			</div>
			<div class="carpool_detail">
				<p class="driverInfo">드라이버 차량 정보</p>

				<table>
					<c:forEach items="${mMap.mateDetailList}" var="detailVo">					
						<c:if test="${detailVo.mateOptionNo==1}">
						<tr>
							<td>
								<img class="infoPicto" src="/assets/images/danger.png">
								${detailVo.optionName}
							</td>
						</tr>
						</c:if>
						<c:if test="${detailVo.mateOptionNo==2}">
						<tr>
							<td>
								<img class="infoPicto" src="/assets/images/boy.png">
								${detailVo.optionName}
							</td>
						</tr>
						</c:if>
						<c:if test="${detailVo.mateOptionNo==3}">
						<tr>
							<td>
								<img class="infoPicto" src="/assets/images/paws01.png">
								${detailVo.optionName}
							</td>
						</tr>
						</c:if>
						<c:if test="${detailVo.mateOptionNo==4}">
						<tr>
							<td>
								<img class="infoPicto" src="/assets/images/ico_plug.png">
								${detailVo.optionName}
							</td>
						</tr>
						</c:if>
						<c:if test="${detailVo.mateOptionNo==5}">
						<tr>
							<td>
								<img class="infoPicto" src="/assets/images/ico_toolbox.png">
								${detailVo.optionName}
							</td>
						</tr>
						</c:if>								
					</c:forEach>
				</table>
			</div>
			<p class="review">Reviews ★ ${mMap.reviewAvg.avgStar}</p>
		</div>
		<!-- //mateDeep_content -->
	</div>
	<!-- //inner -->
	<!-- mateDeep_content2 -->
	<div class="mateDeep_content2">
		<div class="inner">
			<div class="review_banner swiper-container">
				<ul class="swiper-wrapper">
					<c:forEach items="${mMap.reviewList}" var="carpoolVo">				
						<li class="swiper-slide">
							<dl class="review_box">
								
									<dt class="review_top">
										<p class="writer_img">
											
										</p>
	
										<p class="writer_info">
											<strong class="name">유저 ID : ${carpoolVo.id}</strong> 
											<em class="date">별점 : ${carpoolVo.star}</em>
										</p>
	
									</dt>
									<dd class="review_dec">${carpoolVo.content}</dd>
								
							</dl>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="review_banner_btns">
				<a href="javascript:void(0);"><img class="swiper-button-prev"
					src="/assets/images/common/ico_arrow_lft.png"></a> <a
					href="javascript:void(0);"><img class="swiper-button-next"
					src="/assets/images/common/ico_arrow_rit.png"></a>
			</div>
		</div>				
	</div>
	<!-- mateDeep_content2 -->
	
	<div class="carpool-section4">

		<h6 class="recommend">차량 추천 리스트</h6>

		<div class="recommendList">
			<c:forEach items="${mMap.recommendList}" var="mVo">
				<ol>
					<li>
						<p class="recommend-Driver-list">드라이버 : ${mVo.id}</p>
					</li>
					<li>
						<p class="recommend-start-list">출발일시 : ${mVo.startDate}</p>
					</li>
					<li>
						<p class="recommend-point-list">소요 포인트 ${mVo.point}P</p> 
		
						<a href="${pageContext.request.contextPath}/mateDeep/${mVo.mateNo}">
							<button>
								<img class="recommend-List-Picto"
									src="/assets/images/external.png"> <span
									class="choose-text">선택</span>
							</button>
						</a>
					</li>
				</ol>
			</c:forEach>
	
		</div>

		<a href="${pageContext.request.contextPath}/mateMain?splace=${param.splace}&eplace=${param.eplace}&sDate=${param.sDate}&eDate=${param.eDate}&smPeople=${param.smPeople}<c:forEach items="${paramValues.mateContactList}" var="item">&mateContactList=${item}</c:forEach>">
			<button class="recommend-button">추천 리스트 더보기 ></button>
		</a>

	</div>
	
	<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!-- //footer -->
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</div>
<!-- //mateDeep_wrap -->

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=561e1db0e63f28d3a51cc33103bd74d6&libraries=services"></script>
<script>
//마커를 클릭했을 때 해당 장소의 상세정보를 보여줄 커스텀오버레이입니다
var placeOverlay = new kakao.maps.CustomOverlay({zIndex:1}), 
    contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
    markers = [], // 마커를 담을 배열입니다
    currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다
 
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.48686695952834, 126.9682952225164), // 지도의 중심좌표
        level: 5 // 지도의 확대 레벨
    };
    
// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 
var markers = [];
// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places(map); 
// 지도에 idle 이벤트를 등록합니다
kakao.maps.event.addListener(map, 'idle', searchPlaces);
// 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다 
contentNode.className = 'placeinfo_wrap';
// 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
// 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 kakao.maps.event.preventMap 메소드를 등록합니다 
addEventHandle(contentNode, 'mousedown', kakao.maps.event.preventMap);
addEventHandle(contentNode, 'touchstart', kakao.maps.event.preventMap);
// 커스텀 오버레이 컨텐츠를 설정합니다
placeOverlay.setContent(contentNode);  
// 각 카테고리에 클릭 이벤트를 등록합니다
addCategoryClickEvent();
// 엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
function addEventHandle(target, type, callback) {
    if (target.addEventListener) {
        target.addEventListener(type, callback);
    } else {
        target.attachEvent('on' + type, callback);
    }
}
// 카테고리 검색을 요청하는 함수입니다
function searchPlaces() {
    if (!currCategory) {
        return;
    }
    
    // 커스텀 오버레이를 숨깁니다 
    placeOverlay.setMap(null);
    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();
    
    ps.categorySearch(currCategory, placesSearchCB, {useMapBounds:true}); 
}
// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {
        // 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
        displayPlaces(data);
    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
        // 검색결과가 없는경우 해야할 처리가 있다면 이곳에 작성해 주세요
    } else if (status === kakao.maps.services.Status.ERROR) {
        // 에러로 인해 검색결과가 나오지 않은 경우 해야할 처리가 있다면 이곳에 작성해 주세요
        
    }
}
// 지도에 마커를 표출하는 함수입니다
function displayPlaces(places) {
    // 몇번째 카테고리가 선택되어 있는지 얻어옵니다
    // 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
    var order = document.getElementById(currCategory).getAttribute('data-order');
    
    for ( var i=0; i<places.length; i++ ) {
            // 마커를 생성하고 지도에 표시합니다
            var marker = addMarker(new kakao.maps.LatLng(places[i].y, places[i].x), order);
            // 마커와 검색결과 항목을 클릭 했을 때
            // 장소정보를 표출하도록 클릭 이벤트를 등록합니다
            (function(marker, place) {
                kakao.maps.event.addListener(marker, 'click', function() {
                    displayPlaceInfo(place);
                });
            })(marker, places[i]);
    }
}
// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker(position, order) {
    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
        imageSize = new kakao.maps.Size(27, 28),  // 마커 이미지의 크기
        imgOptions =  {
            spriteSize : new kakao.maps.Size(72, 208), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(46, (order*36)), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(11, 28) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage 
        });
    marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker);  // 배열에 생성된 마커를 추가합니다
    return marker;
}
// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}
// 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
function displayPlaceInfo (place) {
    var content = '<div class="placeinfo">' +
                    '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';   
    if (place.road_address_name) {
        content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
                    '  <span class="jibun" title="' + place.address_name + '">(지번 : ' + place.address_name + ')</span>';
    }  else {
        content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
    }                
   
    content += '    <span class="tel">' + place.phone + '</span>' + 
                '</div>' + 
                '<div class="after"></div>';
    contentNode.innerHTML = content;
    placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
    placeOverlay.setMap(map);  
}
// 각 카테고리에 클릭 이벤트를 등록합니다
function addCategoryClickEvent() {
    var category = document.getElementById('category'),
        children = category.children;
    for (var i=0; i<children.length; i++) {
        children[i].onclick = onClickCategory;
    }
}
// 카테고리를 클릭했을 때 호출되는 함수입니다
function onClickCategory() {
    var id = this.id,
        className = this.className;
    placeOverlay.setMap(null);
    if (className === 'on') {
        currCategory = '';
        changeCategoryClass();
        removeMarker();
    } else {
        currCategory = id;
        changeCategoryClass(this);
        searchPlaces();
    }
}
// 클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
function changeCategoryClass(el) {
    var category = document.getElementById('category'),
        children = category.children,
        i;
    for ( i=0; i<children.length; i++ ) {
        children[i].className = '';
    }
    if (el) {
        el.className = 'on';
    } 
} 
//mateDeep_spotBox클릭 시 해당 장소의 위도,경도,지역이름을 x,y,place에 담아줌
$(".mateDeep_spotBox").on("click", function() {
	
	
	
	var x =$(this).data("lat");
	var y =$(this).data("lng");
	setCenter(x, y);
	
	var place = $(this).data("place");
	console.log(place);
	//mateDeep_placeAround에 place정보를 넣어줌
	document.getElementById("mateDeep_placeAround").innerHTML = place;
	
	//지도의 화면상 위치를 변수에 담아줌
	var location = document.querySelector("#mapPoint").offsetTop;
	console.log(location);
	//화면의 위치를 지도로 이동
	window.scrollTo({top:location-200, behavior:'smooth'});
	
	
	// 마커가 표시될 위치입니다 
    var markerPosition  = new kakao.maps.LatLng(x, y); 
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        position: markerPosition
    });
    
    markers.push(marker);
 	// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
 	for( var i=0;i<markers.length;i++) {
	    markers[i].setMap(null); 
 	}
 	
 	// 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);
	
})
//x,y의 위치로 지도 이동
function setCenter(x,y) {            
    // 이동할 위도 경도 위치를 생성합니다 
    var moveLatLon = new kakao.maps.LatLng(x, y);
    
    // 지도 중심을 이동 시킵니다
    map.setCenter(moveLatLon);
    	
}

//리뷰베너 이벤트
var swiperReview = new Swiper('.review_banner', {
	slidesPerView : 4,
	effect : 'slide',
	autoplay : {
		delay : 2000
	},
	spaceBetween : 20,
	loop : true,
	speed : 1000,
	navigation : {
		prevEl : '.review_banner_btns .swiper-button-prev',
		nextEl : '.review_banner_btns .swiper-button-next'
	}
}); 
</script>


</html>