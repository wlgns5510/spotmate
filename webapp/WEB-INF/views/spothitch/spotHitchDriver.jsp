<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
	<!-- css, js ?????? -->
	<link href="${pageContext.request.contextPath}/assets/css/swiper-bundle.min.css" rel="stylesheet" >
	<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
	<script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/style.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/swiper.min.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c6544d76c3912585c75cfd126a875faf&libraries=services,clusterer,drawing"></script>
<title>?????? ??????????????? ??????</title>
</head>
<body>
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<div class="driver-top-banner clear">
		<div class="driver-top-banner-inside">
		<div class="more-box">
			<p class="more">????????? ?????? ??????</p>
			<p class="more3">SPOT HITCHHIKE</p>
		</div>
			<span class="more2">?????? ?????? ???????????? ????????? ??????????????? ??????<br> ???????????????
				??????????????? ????????? ??????????????????.
			</span>
		</div>
	</div>
	<div class="inner">
	<input type="hidden" id="latlng" name="latlng" value="${hVo[0].latlng}">
		<div data-mateno="${hVo[0].mateNo}" id="hitch-driver-map"></div>
	</div>
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	
</body>
<script>
	
	
	var mateNo = $("#hitch-driver-map").data("mateno");
	var geocoder = new kakao.maps.services.Geocoder();
	var mapContainer = document.getElementById('hitch-driver-map'), // ????????? ????????? div 
		mapOption = {
			center : new kakao.maps.LatLng(37.48436301061165, 126.9922281879226), // ????????? ????????????
			level : 3
		},
		map = new kakao.maps.Map(mapContainer, mapOption);

	var	lat, lng = 0;
	var flag = false,
		driverMarker,
		markers = [],
		temp = [],
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
		path: linePath, // ?????? ???????????? ???????????? ?????????
		strokeWeight: 5, // ?????? ?????? ?????????
		strokeColor: '#4454a1', // ?????? ???????????????
		strokeOpacity: 1, // ?????? ???????????? ????????? 1?????? 0 ????????? ????????? 0??? ??????????????? ???????????????
		strokeStyle: 'solid', // ?????? ??????????????????
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
			iwContent = '<div style="font-size:14px; padding:5px 0px 5px 30px;">????????? ?????????</div>'; 
		} else {
			iwContent = '<div style="font-size:14px; padding:5px 0px 5px 30px;">????????? ?????????</div>';
		}
		var infowindow = new kakao.maps.InfoWindow({
		    content : iwContent
		});
		var min = Math.ceil(1),
	    	max = Math.floor(14),
	    	rnd = Math.floor(Math.random() * (max - min)) + min;
		var imageSrc = '/assets/images/pin_'+rnd+'.png', // ?????????????????? ???????????????    
			imageSize = new kakao.maps.Size(48, 48); // ?????????????????? ???????????????
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize),
			startendMarker = new kakao.maps.Marker({
				position: positions[i].latlng,
				map: map,
				image: markerImage
			});
		infowindow.open(map, startendMarker);
	}
	
	

	if (navigator.geolocation) {
		var na = navigator.geolocation.watchPosition(success, error, options);
	}
	
	
	
	
	function success(position) {
		lat = position.coords.latitude, // ??????
		lng = position.coords.longitude; // ??????
		var locPosition = new kakao.maps.LatLng(lat, lng); // ????????? ????????? ????????? geolocation?????? ????????? ????????? ???????????????
		searchDetailAddrFromCoords(locPosition, function(result, status) {
			if (status === kakao.maps.services.Status.OK) {
				var mapVo = {};
				mapVo.addr = result[0].address.address_name;
				mapVo.lat = locPosition.getLat();
				mapVo.lng = locPosition.getLng();
				mapVo.mateNo = mateNo;
				$.ajax({
					url : "${pageContext.request.contextPath}/now",
					type : "post",
					contentType : "application/json",
					data : JSON.stringify(mapVo),
					dataType : "json",
					success : function(result) {
						var chkTemp = [],
							imageSrc = './assets/images/common/login_image_50_01.png', // ?????????????????? ???????????????    
							imageSize = new kakao.maps.Size(50, 50); // ?????????????????? ???????????????
						var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
						var atl = result.length - 1;
						for( var i=0;i<result.length;i++ ) {
							//?????? mateNo?????????
							if ( !temp.includes(result[i].userNo) ) {
								temp.push(result[i].userNo);
							} 
							//people = 0??? ?????? ??? ????????? mateNo?????????
							else if ( temp.length >= chkTemp.length) {
								chkTemp.push(result[i].userNo);
								if ( i == atl ) {
									var dif = temp.filter(x => !chkTemp.includes(x));
									for( var k=0;k<dif.length;k++ ) {
										markers[k].setMap(null);
									}
								}
							}
							if(result[i] != null && markers.length >= result.length) {
								var rideUser = new kakao.maps.LatLng(result[i].lat, result[i].lng);
								// ????????? ???????????????
								userMarker = new kakao.maps.Marker({
									position : rideUser,
									image : markerImage,
									map : map
								});
								if (markers.length >= result.length) {
									continue;
								}
								markers.push(userMarker);
							}
						}
					},
					error : function(XHR, status, error) {
						console.error(status + " : " + error);
					}
				});
			}
		});
		displayMarker(locPosition);
	};
	
	function displayMarker(locPosition) {
		
		if (flag) {
			driverMarker.setMap(null);
		}
		var imageSrc = '/assets/images/common/android-icon-48x48.png', // ?????????????????? ???????????????    
			imageSize = new kakao.maps.Size(48, 48); // ?????????????????? ???????????????
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
		// ????????? ???????????????
		driverMarker = new kakao.maps.Marker({
			position : locPosition,
			image : markerImage,
			map : map
		});


		flag = true;
		map.setCenter(locPosition);
	}
	
	function error(err) {
		console.log(err);
	};
	
	function searchDetailAddrFromCoords(coords, callback) {
		// ????????? ????????? ?????? ?????? ????????? ???????????????
		geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
	}
	
	
	
</script>
</html>