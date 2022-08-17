<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="/assets/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c6544d76c3912585c75cfd126a875faf&libraries=services,clusterer,drawing"></script>
<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
<title>스팟 히치하이크 메인</title>
</head>
<body>
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<div class="driver-top-banner clear">
		<div class="driver-top-banner-inside">
		<div class="more-box">
			<p class="more">실시간 탑승 가능</p>
			<p class="more3">SPOT HITCHHIKE</p>
		</div>
			<span class="more2">현재 나의 위치에서 가까운 드라이버를 찾아<br> 출발지부터
				목적지까지 편하게 이동해보세요.
			</span>
		</div>
	</div>
	<div class="inner clear">
		<div id="hitch-main-map"></div>
		<div class="info">
			<ul class="infoTop">
				<li><span>탑승 가능 차량리스트</span></li>
			</ul>
			<form action="../" method="get">
				<div class="searchbox">
					<input class="place" type="text" name="start" value="" placeholder="출발지"> 
					<input class="place" type="text" name="end" value="" placeholder="도착지"> 
					<input class="people " type="number" min="1" name="people" value="" placeholder="인원수">
					<button type="submit"><img src="/assets/images/round-search.png"></button>
				</div>
				<div class="detail-option">
					<input type="checkbox" value="femaleDriver">여성 드라이버 
					<input type="checkbox" checked="checked" value="pet">반려동물 탑승 가능
					<a href="javascript:void(0);" class="btn_a1"></a>
				</div>
			</form>
			<c:forEach items="${hitchList}"  var="hitch" varStatus="status">
			<div class="driverList">
				<div class="start">
					<p>현재위치</p>
					<span id="nowpos${hitch.mateNo}">${hitch.nowaddr}</span>
				</div>
				<div class="end">
					<p>목적지</p>
					<span>${hitch.eplace1}</span>
				</div>
				<div class="num people${status.count}">
					<span>탑승 가능한 인원수</span><p>${hitch.people}</p>
				</div>
				<div class="usePoint">
					<span>총 결제 포인트</span><p>${hitch.convertPoint}</p>
				</div>
				<a class="carPos"><img src="/assets/images/ico_spot.png"></a>
					
				<a href="/spotHitchhikedeep" class="hitchdeep" href="/spotHitchhikedeep">
						상세 조건
				</a>
				<p onclick="rideReq(${status.count})" class="rideReq" id="rideReq${status.count}">
					탑승 요청
				</p>
				<input type="hidden" value="${hitch.mateNo}" id="hitch${status.count}" >
				<input type="hidden" value="${hitch.people}" id="canRide${status.count}" >
			</div>
			</c:forEach>
		</div>
	</div>
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	
</body>
<script>
	
	var mateNo = $("#hitch1").val();

	var geocoder = new kakao.maps.services.Geocoder();
	var mapContainer = document.getElementById('hitch-main-map'), // 지도를 표시할 div 
	mapOption = {
		center : new kakao.maps.LatLng(37.48436301061165, 126.9922281879226), // 지도의 중심좌표
		level : 3
	},
	map = new kakao.maps.Map(mapContainer, mapOption);

	var	lat, lng = 0,
		temp = {},
		flag = false,
		marker,
		options = {
		enableHighAccuracy : true,
		timeout : 5000,
		maximumAge : 0
	};
	

	if (navigator.geolocation) {
		var na = navigator.geolocation.watchPosition(success, error, options);
	}
	
	
	
	function displayMarker(locPosition) {
		if (flag) {
			marker.setMap(null);
		}
		var imageSrc = './assets/images/common/android-icon-48x48.png', // 마커이미지의 주소입니다    
		imageSize = new kakao.maps.Size(48, 48); // 마커이미지의 크기입니다
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize)
		// 마커를 생성합니다
		marker = new kakao.maps.Marker({
			position : locPosition,
			image : markerImage,
			map : map
		});

		//마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
		var iwContent = '<div style="text-align:center; height:220px;"><div class="iw" style="width:250px; padding:10px 25px 10px 25px;">목적지</div> <div style="padding:10px 25px 10px 25px;">NAVER 본사</div> <div style="padding:10px 25px 10px 25px;">드라이버 &nbsp; spotmate12 님</div> <div style="padding:10px 25px 40px 25px;">탑승 가능 인원 수 &nbsp; 1명</div> <a href="/spotHitchhikedeep" style="padding: 10px; background-color: #4454a1; color:white; border-radius: 10px;" >상세 보기</a></div>', iwRemoveable = true;

		// 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
			content : iwContent,
			removable : iwRemoveable
		});

		// 마커에 클릭이벤트를 등록합니다
		kakao.maps.event.addListener(marker, 'click', function() {
			// 마커 위에 인포윈도우를 표시합니다
			infowindow.open(map, marker);
		});

		flag = true;
		map.setCenter(locPosition);
	}
	
	function success(position) {
		lat = position.coords.latitude, // 위도
		lng = position.coords.longitude; // 경도
		var locPosition = new kakao.maps.LatLng(lat, lng); // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
		/* $.ajax({
			url : "${pageContext.request.contextPath}/now",
			type : "post",
			contentType : "application/json",
			data : JSON.stringify(search),
			dataType : "json",
			success : function(result) {
				console.log(result);
				$("#nowpos"+mateNo).text(result);
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		}); */
		
		displayMarker(locPosition);
	};
	
	function error(err) {
		console.log(err);
	};
	
	function searchDetailAddrFromCoords(coords, callback) {
		// 좌표로 법정동 상세 주소 정보를 요청합니다
		geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
	}
	
	function rideReq(index) {
		if ( $(".people").val() == '' ) {
			alert("인원 수를 지정한 다음 시도해주세요")
			return;
		}
		var hrVo = {};
		hrVo.mateNo = $("#hitch"+index).val();
		hrVo.people = $(".people").val();
		hrVo.canRide = $("#canRide"+index).val();
		$.ajax({
			url : "${pageContext.request.contextPath}/rideReq",
			type : "post",
			contentType : "application/json",
			data : JSON.stringify(hrVo),
			dataType : "json",
			success : function(result) {
				if (result != -1) {
					$("#canRide"+index).val(result);
					$(".people"+index).html("<span>탑승 가능한 인원수</span><p>"+result+"</p>");
					$("#rideReq"+index).text("신청 완료");
				} else {
					alert("탑승 인원 초과입니다.");
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
</script>
</html>