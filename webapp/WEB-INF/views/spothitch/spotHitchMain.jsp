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
		<div class="spot-hitch-info">
			<ul class="spot-hitch-infoTop">
				<li><span>탑승 가능 차량리스트</span></li>
			</ul>
			<form action="../" method="get">
				<div class="searchbox">
					<input class="place" type="text" name="start" value="" placeholder="출발지"> 
					<input class="place" type="text" name="end" value="" placeholder="도착지"> 
					<input class="people" type="number" min="1" name="people" value="" placeholder="인원수">
					<button type="submit"><img src="/assets/images/round-search.png"></button>
				</div>
				<div class="detail-option">
					<input type="checkbox" value="femaleDriver">여성 드라이버 
					<input type="checkbox" value="nosmoke">비흡연자
					<input type="checkbox" checked="checked" value="pet">반려동물 탑승 가능
					<input type="checkbox" value="phonecharge">충전기 사용 가능
					<input type="checkbox" value="trunk">트렁크 사용 가능
				</div>
			</form>
			<%-- <c:forEach items="${hitchList}"  var="hitch" varStatus="status">
			<div class="driverList">
				<div class="start">
					<p>현재위치</p>
					<span id="nowpos${hitch.mateNo}">${hitch.nowaddr}</span>
				</div>
				<div class="end">
					<p>목적지</p>
					<span>${hitch.eplace1}</span>
				</div>
				<div class="num" id="people${hitch.mateNo}">
					<span>탑승 가능한 인원수</span><p>${hitch.people}</p>
				</div>
				<div class="usePoint">
					<span>총 결제 포인트</span><p>${hitch.convertPoint}</p>
				</div>
				<img onclick="carPos(${status.count})" class="carPos" src="/assets/images/ico_spot.png">
					
				<a href="/spotHitchhikedeep/${hitch.mateNo}" class="hitchdeep" href="/spotHitchhikedeep">
						상세 조건
				</a>
				<p onclick="rideReq(${status.count})" class="rideReq" id="rideReq${status.count}">
					탑승 요청
				</p>
				<input type="hidden" value="${hitch.mateNo}" id="hitch${status.count}">
				<input type="hidden" value="${hitch.people}" id="canRide${status.count}">
				<input type="hidden" value="" id="latlng${hitch.mateNo}">
			</div>
			</c:forEach> --%>
		</div>
	</div>
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	
</body>
<script>

	var geocoder = new kakao.maps.services.Geocoder();
	var mapContainer = document.getElementById('hitch-main-map'), // 지도를 표시할 div 
	mapOption = {
		center : new kakao.maps.LatLng(37.48436301061165, 126.9922281879226), // 지도의 중심좌표
		level : 3
	},
	map = new kakao.maps.Map(mapContainer, mapOption);
	var	lat, lng = 0,
		markers = [],
		infowindows = [];
	var imageSrc = './assets/images/common/login_people_f50.png', // 마커이미지의 주소입니다    
		imageSize = new kakao.maps.Size(50, 50), // 마커이미지의 크기입니다
		markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize),
		marker = new kakao.maps.Marker({
			image : markerImage,
		});
	
	if(navigator.geolocation) {
		var na = navigator.geolocation.getCurrentPosition(function(position) {
			lat = position.coords.latitude,
			lng = position.coords.longitude;
			$.ajax({
				url : "${pageContext.request.contextPath}/nearHitchList",
				type : "post",
				contentType : "application/json",
				data : JSON.stringify({
						lat: lat,
						lng: lng
				}),
				dataType : "json",
				success : function(result) {
					for(var i=0;i<result.length;i++) {
						$(".spot-hitch-info").append('<div class="driverList"><input type="hidden" id="summary'+result[i].mateNo+'" value=""><div class="start"><p>현재위치</p><span id="nowpos'+result[i].mateNo+'">'+result[i].nowaddr+'</span></div><div class="end"><p>목적지</p><span>'+result[i].eplace1+'</span></div><div class="num" id="people'+result[i].mateNo+'"><span>탑승 가능한 인원수</span><p>'+result[i].people+'</p></div><div class="usePoint"><span>총 결제 포인트</span><p>'+result[i].convertPoint+'</p></div><img onclick="carPos('+i+')" class="carPos" src="/assets/images/ico_spot.png"><a href="/spotHitchhikedeep/'+result[i].mateNo+'" class="hitchdeep">상세 조건</a><p onclick="rideReq('+i+')" class="rideReq" id="rideReq'+i+'">탑승 요청</p><input type="hidden" value="'+result[i].mateNo+'" id="hitch'+i+'"><input type="hidden" value="'+result[i].people+'" id="canRide'+i+'"><input type="hidden" value="'+result[i].latlng.split(",")[1]+","+result[i].latlng.split(",")[0]+'" id="latlng'+result[i].mateNo+'"></div>');
					}
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});
		})
	}
	
	
	myloca();
	
	setInterval(function(){myloca()}, 5000);
	
	
	function myloca() {
		if (navigator.geolocation) {
			var na = navigator.geolocation.getCurrentPosition(function(position) {
				lat = position.coords.latitude, // 위도
				lng = position.coords.longitude; // 경도
				var locPosition = new kakao.maps.LatLng(lat, lng); // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
				displayMarker(locPosition);
			})
		}
	}
	
	
	function displayMarker(locPosition) {
		// 왜 해결됨?
// 		if (marker != null) {
// 			marker.setMap(null);	
// 		}
		
		marker.setPosition(locPosition);
		marker.setMap(map);
		
		$.ajax({
			url : "${pageContext.request.contextPath}/userPos",
			type : "post",
			contentType : "application/json",
			data : JSON.stringify({
					lat: lat,
					lng: lng
			}),
			dataType : "json",
			success : function(result) {
				var hVo = {};
				for(var i=0;i<result.length;i++) {
					$.ajax({
						url : "${pageContext.request.contextPath}/updateInfo",
						type : "post",
						contentType : "application/json",
						async: false,
						data : JSON.stringify({
								nowaddr: result[i].latlng.split(",")[2],
								people: result[i].people,
								mateNo: result[i].mateNo
						}),
						dataType : "json",
						success : function(result) {
							hVo = result.hVo;
							$("#nowpos"+result.hiVo.mateNo).text(result.hiVo.nowaddr);
							$("#people"+result.hiVo.mateNo).html("<span>탑승 가능한 인원수</span><p>"+result.hiVo.people+"</p>");
						},
						error : function(XHR, status, error) {
							console.error(status + " : " + error);
						}
					});
					if (markers.length == result.length) {
						continue;
					}
					
					var marker, infowindow;
					markers.push(marker);
					infowindows.push(infowindow);
					
					var latlng = new kakao.maps.LatLng(result[i].latlng.split(",")[1], result[i].latlng.split(",")[0]);
					$("#latlng"+result[i].mateNo).val(latlng.toString());
					var min = Math.ceil(1),
				    	max = Math.floor(14),
				    	rnd = Math.floor(Math.random() * (max - min)) + min;
					var imageSrc = '/assets/images/pin_'+rnd+'.png', // 마커이미지의 주소입니다    
						imageSize = new kakao.maps.Size(48, 48); // 마커이미지의 크기입니다
					var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
						markers[i] = new kakao.maps.Marker({
							position : latlng,
							image : markerImage,
							map : map
						});
					var iwContent = '<div style="text-align:center; height:300px;"><div class="hitchdeepinfotop">목적지</div><div class="hitchdeepinfo">'+hVo.eplace1+'</div><div class="hitchdeepinfo">드라이버 &nbsp; '+hVo.name+' 님</div><div class="hitchdeepinfo">탑승 가능 인원 수 &nbsp; '+hVo.people+'명</div><a href="/spotHitchhikedeep/'+result[i].mateNo+'" class="hitchdeepinfo hitchdeepinfobtn">상세 보기</a></div>';
						infowindows[i] = new kakao.maps.InfoWindow({
						    content : iwContent,
						    removable : true
						});
					kakao.maps.event.addListener(markers[i], 'click', clickMarker(map, markers[i], infowindows[i]));
					map.setCenter(locPosition);					
					
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}


	function clickMarker(map, marker, infowindow) {
		return function() {
			infowindow.open(map, marker);  
		}
	}
	
	function rideReq(index) {
		console.log(this);
		if ( $(".people").val() == '' ) {
			alert("인원 수를 지정한 다음 시도해주세요")
			return;
		}
		var mateNo = $("#hitch"+index).val();
		var hrVo = {};
		hrVo.mateNo = mateNo
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
					$("#people"+mateNo).html("<span>탑승 가능한 인원수</span><p>"+result+"</p>");
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
	
	function carPos(index) {
		var mateNo = $("#hitch"+index).val(),
			Strlatlng = $("#latlng"+mateNo).val()
			latlngList = Strlatlng.split(",");
		var	latlng = new kakao.maps.LatLng(latlngList[0], latlngList[1]);
		
		map.setCenter(latlng);
	}
</script>
</html>