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
	<div class="inner">
	<input type="hidden" id="latlng" name="latlng" value="${hVo.latlng}">
		<div data-mateno="${hVo.mateNo}" id="hitch-driver-map"></div>
	</div>
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	
</body>
<script>
	
	
	var mateNo = $("#hitch-driver-map").data("mateno");
	var geocoder = new kakao.maps.services.Geocoder();
	var mapContainer = document.getElementById('hitch-driver-map'), // 지도를 표시할 div 
	mapOption = {
		center : new kakao.maps.LatLng(37.48436301061165, 126.9922281879226), // 지도의 중심좌표
		level : 3
	},
	map = new kakao.maps.Map(mapContainer, mapOption);

	var	lat, lng = 0,
		flag = false,
		marker,
		options = {
		enableHighAccuracy : true,
		timeout : 5000,
		maximumAge : 0
	};
	
	var latlng = $("#latlng").val().split(',');
	var elat,
		elng;
	var linePath = [
		new kakao.maps.LatLng(latlng[1], latlng[0]),
		];
	for (var i=2; i<latlng.length; i++) {
			if (i == latlng.length-2) {
				elat = latlng[i+1],
				elng = latlng[i];
				linePath.push(new kakao.maps.LatLng(latlng[i+1],latlng[i]));
				break;
			}
			linePath.push(new kakao.maps.LatLng(latlng[i+1],latlng[i]),);
			i++;
		};
	var polyline = new kakao.maps.Polyline({
		path: linePath, // 선을 구성하는 좌표배열 입니다
		strokeWeight: 5, // 선의 두께 입니다
		strokeColor: '#4454a1', // 선의 색깔입니다
		strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
		strokeStyle: 'solid', // 선의 스타일입니다
		map: map
	});
	var positions = [
		{
			latlng: new kakao.maps.LatLng(latlng[1], latlng[0])
		},
		{
			latlng: new kakao.maps.LatLng(elat, elng)
		}
	];
	for (var i=0;i<2;i++) {
		if ( i==0 ) {
			iwContent = '<div style="font-size:14px; padding:5px 0px 5px 30px;">출발지 입니다</div>'; 
		} else if (i==1){
			iwContent = '<div style="font-size:14px; padding:5px 0px 5px 30px;">도착지 입니다</div>';
		}
		var infowindow = new kakao.maps.InfoWindow({
		    content : iwContent
		});
		var min = Math.ceil(1),
	    	max = Math.floor(14),
	    	rnd = Math.floor(Math.random() * (max - min)) + min;
		var imageSrc = '/assets/images/pin_'+rnd+'.png', // 마커이미지의 주소입니다    
			imageSize = new kakao.maps.Size(48, 48); // 마커이미지의 크기입니다
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
		var marker = new kakao.maps.Marker({
			position: positions[i].latlng,
			map: map,
			image: markerImage
		});
		infowindow.open(map, marker);
	}

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


		flag = true;
		map.setCenter(locPosition);
	}
	
	function success(position) {
		lat = position.coords.latitude, // 위도
		lng = position.coords.longitude; // 경도
		var locPosition = new kakao.maps.LatLng(lat, lng); // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
		searchDetailAddrFromCoords(locPosition, function(result, status) {
			if (status === kakao.maps.services.Status.OK) {
				var search = {};
				search.addr = result[0].address.address_name;
				search.lat = locPosition.getLat();
				search.lng = locPosition.getLng();
				search.mateNo = mateNo;
				$.ajax({
					url : "${pageContext.request.contextPath}/now",
					type : "post",
					contentType : "application/json",
					data : JSON.stringify(search),
					dataType : "json",
					success : function() {
					},
					error : function(XHR, status, error) {
						console.error(status + " : " + error);
					}
				});
			}
		});
		
		displayMarker(locPosition);
	};
	
	function error(err) {
		console.log(err);
	};
	
	function searchDetailAddrFromCoords(coords, callback) {
		// 좌표로 법정동 상세 주소 정보를 요청합니다
		geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
	}
	
</script>
</html>