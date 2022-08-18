<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스팟 히치하이크 상세</title>
<link href="${pageContext.request.contextPath}/assets/css/style.css"
	rel="stylesheet" />
<script src="/assets/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c6544d76c3912585c75cfd126a875faf&libraries=services,clusterer,drawing"></script>
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
		<div class="hitch-deep-infoTop clear">
			<div class="markImg"></div>
			<span>드라이버 ${hMap.hVo.name}님</span> <a href="#">탑승 요청</a>
		</div>
		<div class="data">
			<table>
				<tr>
					<td class="waypoint">출발지</td>
					<td id="splace1" class="tname">${hMap.hVo.splace1}</td>
					<td class="destination">목적지</td>
					<td id="eplace1" class="tname">${hMap.hVo.eplace1}</td>
				</tr>
				<tr>
					<td class="waypoint">상세조건</td>
					<td colspan="3" class="tname">${hMap.hVo.detailOpt} 이용 가능</td>
				</tr>
				<tr>
					<td class="waypoint">탑승후기</td>
					<td class="tname">${hMap.hVo.star}</td>
					<td class="destination">탑승 시 사용 포인트</td>
					<td class="tname">${hMap.hVo.convertFare}</td>
				</tr>
				<tr>
					<td class="waypoint">요청사항</td>
					<td colspan="3" class="tname">${hMap.hVo.comments}</td>
				</tr>
			</table>
		</div>
		<div id="hitch-deep-map"></div>
		<a class="back" href="/spotHitchhike">목록보기</a>
		<input type="hidden" id="latlng" value="${hMap.latlng}">
		<input type="hidden" id="nowLatlng" value="${hMap.nowLatlng}">
		<input type="hidden" id="nowAddr" value="${hMap.nowAddr}">
		<input type="hidden" id="mateNo" value="${hMap.mateNo}">  
	</div>
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

</body>
<script>
	var mapContainer = document.getElementById('hitch-deep-map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.48436301061165, 126.9922281879226), // 지도의 중심좌표
			level : 2
		},
		map = new kakao.maps.Map(mapContainer, mapOption);
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
		infowindow0,
		infowindow1,
		infowindow2,
		iwContent;
		
		firstSet();
		setInterval(function(){nowPos()}, 3000);
		
		
	function nowPos() {
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
				console.log(result);
				console.log("before:",map);
				if (result.lat == 0) {
					console.log("same place");
					return;
				}
				console.log("after:",map);
				marker2.setMap(null);
				infowindow2.close();
				iwContent = '<div class="hitchdeepinfo"">현재위치 입니다<br>'+result.addr+'</div>';
				infowindow2 = new kakao.maps.InfoWindow({
				    content : iwContent
				});
				var newPos = new kakao.maps.LatLng(result.lat, result.lng);
				var imageSrc = '/assets/images/pin_'+1+'.png', // 마커이미지의 주소입니다    
				imageSize = new kakao.maps.Size(48, 48); // 마커이미지의 크기입니다
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
				iwContent = '<div class="hitchdeepinfo">출발지 입니다<br>'+splace+'</div>'; 
				infowindow0 = new kakao.maps.InfoWindow({
				    content : iwContent
				});
			} else if (i==1){
				iwContent = '<div class="hitchdeepinfo"">도착지 입니다<br>'+eplace+'</div>';
				infowindow1 = new kakao.maps.InfoWindow({
				    content : iwContent
				});
			} else if (i==2) {
				iwContent = '<div class="hitchdeepinfo"">현재위치 입니다<br>'+nowAddr+'</div>';
				infowindow2 = new kakao.maps.InfoWindow({
				    content : iwContent
				});
			}
			var min = Math.ceil(1),
		    	max = Math.floor(14),
		    	rnd = Math.floor(Math.random() * (max - min)) + min;
			var imageSrc = '/assets/images/pin_'+rnd+'.png', // 마커이미지의 주소입니다    
				imageSize = new kakao.maps.Size(48, 48); // 마커이미지의 크기입니다
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
		//선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
		//테스트 결과 json 파싱해서 for문 반복으로 넣어주면 될듯
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
		
		//지도에 표시할 선을 생성합니다
		var polyline = new kakao.maps.Polyline({
			path: linePath, // 선을 구성하는 좌표배열 입니다
			strokeWeight: 5, // 선의 두께 입니다
			strokeColor: '#4454a1', // 선의 색깔입니다
			strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
			strokeStyle: 'solid', // 선의 스타일입니다
			map: map
		});
	}
</script>
</html>