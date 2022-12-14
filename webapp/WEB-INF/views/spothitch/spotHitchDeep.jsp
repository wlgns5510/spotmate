<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<script type="text/javascript"src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c6544d76c3912585c75cfd126a875faf&libraries=services,clusterer,drawing"></script>
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
	<div class="inner clear">
		<div class="hitch-deep-infoTop clear">
			<div class="markImg"></div>
			<input name="people" id="people" class="hd-people" type="number" min="1" value="1">
			<span>???????????? ${hMap.hVo.name}???</span> <a href="javascript:void(0)" id="rideReq" onclick="rideReq()">?????? ??????</a>
		</div>
		<div class="data">
			<table>
				<tr>
					<td class="waypoint">?????????</td>
					<td id="splace1" class="tname">${hMap.hVo.splace1}</td>
					<td class="destination">?????????</td>
					<td id="eplace1" class="tname">${hMap.hVo.eplace1}</td>
				</tr>
				<tr>
					<td class="waypoint">????????????</td>
					<td colspan="3" class="tname">${hMap.hVo.detailOpt} ?????? ??????</td>
				</tr>
				<tr>
					<td class="waypoint">????????????</td>
					<td class="tname">
					<c:choose>
						<c:when test="${hMap.hVo.star==0.0}">
						??? ???????????????
						</c:when>
						<c:otherwise>
						${hMap.hVo.star}
						</c:otherwise>
					</c:choose></td>
					<td class="destination">?????? ??? ?????? ?????????</td>
					<td class="tname">${hMap.hVo.convertFare}</td>
				</tr>
				<tr>
					<td class="waypoint">????????????</td>
					<td colspan="3" class="tname">${hMap.hVo.comments}</td>
				</tr>
			</table>
		</div>
		<div id="hitch-deep-map"></div>
		<a class="back" href="/spotHitchhike">????????????</a>
		<input type="hidden" id="intFare" value="${hMap.hVo.point}">
		<input type="hidden" id="latlng" value="${hMap.latlng}">
		<input type="hidden" id="nowLatlng" value="${hMap.nowLatlng}">
		<input type="hidden" id="nowAddr" value="${hMap.nowAddr}">
		<input type="hidden" id="mateNo" value="${hMap.mateNo}">  
	</div>
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

</body>
<script>
	var mapContainer = document.getElementById('hitch-deep-map'), // ????????? ????????? div 
		mapOption = {
			center : new kakao.maps.LatLng(37.48436301061165, 126.9922281879226), // ????????? ????????????
			level : 3
		},
		map = new kakao.maps.Map(mapContainer, mapOption);
	var imageSrc = '/assets/images/common/login_people_f50.png', // ?????????????????? ???????????????    
		imageSize = new kakao.maps.Size(50, 50), // ?????????????????? ???????????????
		userMarkerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
	var Strlatlng = $("#latlng").val(),
		mateNo = $("#mateNo").val(),
		latlng = Strlatlng.split(","),
		splace = $("#splace1").text(),
		eplace = $("#eplace1").text(),
		nowAddr = $("#nowAddr").val(),
		nowLatlng = $("#nowLatlng").val().replace('[', '').replace(']','').split(","),
		marker0,
		marker1,
		marker2,
		userMarker,
		infowindow0,
		infowindow1,
		infowindow2,
		iwContent;
		
		firstSet();
		setInterval(function(){nowPos()}, 3000);
		
		
	function nowPos() {
		if(navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(function(position) {
				userMarker.setMap(null);
				lat = position.coords.latitude, // ??????
				lng = position.coords.longitude, // ??????
				locPosition = new kakao.maps.LatLng(lat, lng);
				userMarker = new kakao.maps.Marker({
					position: locPosition,
					map: map,
					image: userMarkerImage
				});
			})
		}
		$.ajax({
			url : "${pageContext.request.contextPath}/updateDriverPos",
			type : "post",
			contentType : "application/json",
			data : JSON.stringify({
				addr: nowAddr,
				mateNo: mateNo
			}),
			dataType : "json",
			success : function(result) {
				if (result.lat == 0) {
					return;
				}
				marker2.setMap(null);
				infowindow2.close();
				iwContent = '<div class="hitchdeepinfo"">???????????? ?????????<br>'+result.addr+'</div>';
				infowindow2 = new kakao.maps.InfoWindow({
				    content : iwContent
				});
				var newPos = new kakao.maps.LatLng(result.lat, result.lng);
				var imageSrc = '/assets/images/pin_'+1+'.png', // ?????????????????? ???????????????    
				imageSize = new kakao.maps.Size(48, 48); // ?????????????????? ???????????????
			var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
				marker2 = new kakao.maps.Marker({
					position: newPos,
					map: map,
					image: markerImage
				});
				infowindow2.open(map, marker2);
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
		
	function firstSet() {
		if(navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(function(position) {
				lat = position.coords.latitude, // ??????
				lng = position.coords.longitude, // ??????
				locPosition = new kakao.maps.LatLng(lat, lng);
				userMarker = new kakao.maps.Marker({
					position: locPosition,
					map: map,
					image: userMarkerImage
				});
				map.setCenter(locPosition);
			})
		}
			
		var bounds = new kakao.maps.LatLngBounds();
		bounds.extend(new kakao.maps.LatLng(latlng[1], latlng[0]));
		bounds.extend(new kakao.maps.LatLng(latlng[latlng.length-1], latlng[latlng.length-2]));
		map.setBounds(bounds);
		
		var positions = [
			{
				latlng: new kakao.maps.LatLng(latlng[1], latlng[0])
			},
			{
				latlng: new kakao.maps.LatLng(latlng[latlng.length-1], latlng[latlng.length-2])
			},
			{
				latlng: new kakao.maps.LatLng(nowLatlng[1], nowLatlng[0])
			}
		];
		for (var i=0;i<3;i++) {
			if ( i==0 ) {
				iwContent = '<div class="hitchdeepinfo">????????? ?????????<br>'+splace+'</div>'; 
				infowindow0 = new kakao.maps.InfoWindow({
				    content : iwContent
				});
			} else if (i==1){
				iwContent = '<div class="hitchdeepinfo"">????????? ?????????<br>'+eplace+'</div>';
				infowindow1 = new kakao.maps.InfoWindow({
				    content : iwContent
				});
			} else if (i==2) {
				iwContent = '<div class="hitchdeepinfo"">??????????????????<br> ???????????? ?????????<br>'+nowAddr+'</div>';
				infowindow2 = new kakao.maps.InfoWindow({
				    content : iwContent
				});
			}
			var min = Math.ceil(1),
		    	max = Math.floor(14),
		    	rnd = Math.floor(Math.random() * (max - min)) + min;
			var imageSrc = '/assets/images/pin_'+rnd+'.png', // ?????????????????? ???????????????    
				imageSize = new kakao.maps.Size(48, 48); // ?????????????????? ???????????????
			var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
			if (i==0) { 
				marker0 = new kakao.maps.Marker({
					position: positions[i].latlng,
					map: map,
					image: markerImage
				});
				infowindow0.open(map, marker0);
			} else if (i==1) {
				marker1 = new kakao.maps.Marker({
					position: positions[i].latlng,
					map: map,
					image: markerImage
				});
				infowindow1.open(map, marker1);
			} else if (i==2) {
				marker2 = new kakao.maps.Marker({
					position: positions[i].latlng,
					map: map,
					image: markerImage
				});
				infowindow2.open(map, marker2);
			}
			
		}
		//?????? ???????????? ?????? ???????????????. ??? ???????????? ????????? ?????? ???????????????
		//????????? ?????? json ???????????? for??? ???????????? ???????????? ??????
		var linePath = [
			new kakao.maps.LatLng(latlng[1], latlng[0]),
			];
		for (var i=0; i<latlng.length; i++) {
				if (i == latlng.length) {
					linePath.push(new kakao.maps.LatLng(latlng[latlng.length-1], latlng[latlng.length-2]));
					break;
				}
				linePath.push(new kakao.maps.LatLng(latlng[i+1],latlng[i]),);
				i++;
			};
		
		//????????? ????????? ?????? ???????????????
		var polyline = new kakao.maps.Polyline({
			path: linePath, // ?????? ???????????? ???????????? ?????????
			strokeWeight: 5, // ?????? ?????? ?????????
			strokeColor: '#4454a1', // ?????? ???????????????
			strokeOpacity: 1, // ?????? ???????????? ????????? 1?????? 0 ????????? ????????? 0??? ??????????????? ???????????????
			strokeStyle: 'solid', // ?????? ??????????????????
			map: map
		});
	}
	
	function rideReq() {
		var chk = 0;
	$.ajax({
		url : "${pageContext.request.contextPath}/chkResv",
		type : "post",
		contentType : "application/json",
		data : JSON.stringify(mateNo),
		dataType : "json",
		async : false,
		success : function(result) {
			if (result == -1) {
				chk = -1;
			} else if (result == -2){
				chk = -2;
			} else {
				chk = result;
			}
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
	if ( $(".reqPeople").val() == '' ) {
		alert("?????? ?????? ????????? ?????? ??????????????????")
		return;
	} else if(chk == -1) {
		alert("????????? ??? ??????????????????!")
		return;
	} else if (chk == -2) {
		var hrVo = {};
		hrVo.mateNo = mateNo;
		hrVo.people = $(".reqPeople").val();
		hrVo.canRide = $("#canRide"+mateNo).val();
		hrVo.point = $("#point"+mateNo).val();
		navigator.geolocation.getCurrentPosition(function(position) {
			lat = position.coords.latitude, // ??????
			lng = position.coords.longitude; // ??????
		})
		hrVo.lat = lat;
		hrVo.lng = lng;
		$.ajax({
			url : "${pageContext.request.contextPath}/rideReq",
			type : "post",
			contentType : "application/json",
			data : JSON.stringify(hrVo),
			dataType : "json",
			success : function(result) {
				console.log(result);
				if (result == -3) {
					alert("??????????????? ???????????? ???????????????.")
				} else if (result != -1) {
					$("#rideReq").text("?????? ??????");
				} else {
					alert("?????? ?????? ???????????????.");
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	} else {
		alert("?????? ?????? ???????????????")
		return;
	}
		
	}
</script>
</html>