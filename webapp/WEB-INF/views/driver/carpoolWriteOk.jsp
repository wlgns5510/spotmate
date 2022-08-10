<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
<title>Insert title here</title>
<script src="/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c6544d76c3912585c75cfd126a875faf&libraries=services,clusterer,drawing"></script>
<link rel="stylesheet" href="/assets/css/style.css">
</head>
<body>
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
<div class="inner">
	<div class="top">
			<div class="clear">
				<img src="/assets/images/ico_boxgift.png">
				
				<div class="matedesc">
					<span>SPOT CARPOOL 등록시</span>
					<p>예상 적립 포인트는 ${dwv.fare}입니다.</p>
				</div>
			</div>
			<ul>
				<li>도착까지 예상 소요시간 ${dwv.dur}, ${dwv.dis}</li>
				<li>입력해주신 SPOT CARPOOL 내용이 맞으시면 등록을 눌러주세요.</li>
			</ul>

			<span>*필수 입력사항</span>
		</div>
	<div class="mid">
		<form action="/carpoolWriteInsert" method="post">
			<p>등록하신 날짜와 출발시간입니다.</p>
			<div class="f-sec">
				<span>출발 날짜</span><input type="datetime-local" name="startdate" value="${dwv.startdate}" id="s-date" readonly><br>
				<span>도착 날짜</span><input type="date" name="enddate" value="${dwv.enddate}" id="e-date" readonly>
			</div>
			<div class="s-sec">
				<p>드라이버님의 이동 경로입니다</p>
				
				<div id="input-div">
				<img src="assets/images/map_line_02.png">
				<table>
					<tr>
						<td><input type="text" name="splace" value="${dwv.splace}" id="s-addr" class="s-addr" readonly></td>
						<td><input type="hidden" name="slat" value="${dwv.slat}" class="s-lat"></td>
						<td><input type="hidden" name="slng" value="${dwv.slng}" class="s-lng"></td>
					</tr>
					<tr>
					 	<td><input type="text" name="eplace" value="${dwv.eplace}" id="e-addr" class="e-addr" readonly></td>
						<td><input type="hidden" name="elat" value="${dwv.elat}" class="e-lat"></td>
						<td><input type="hidden" name="elng" value="${dwv.elng}" class="e-lng"></td>
						<td><input type="hidden" name="latlng" value="${dwv.latlng}" id="latlng"></td>
				</table>
				</div>
			</div>
			<div id="map"></div>
			<div class="t-sec">
				<p>탑승 가능한 인원 수*</p>
				<input value="${dwv.people}" type="number" readonly> 
				<p>차량 상세조건</p>
				<table class="deepsel">
					<tr>
					<c:if test="${dwv.nosmoke != null}">
						<td><input type="hidden" id="nosmoke" name="nosmoke" value="nosmoke" readonly>비흡연자</td>
					</c:if>
					<c:if test="${dwv.phoneCharge != null}">
						<td><input class="td2" type="hidden" id="phonecharge" name="phonecharge" value="phonecharge" readonly>핸드폰 충전기 이용 가능</td>
					</c:if>
					</tr>
					<tr>
					<c:if test="${dwv.drivergender != null}">
						<td><input type="hidden" id="drivergender" name="drivergender" value="female" readonly>여성 드라이버</td>
					</c:if>
					<c:if test="${dwv.silence != null}">
						<td><input class="td2" type="hidden" id="silence" name="silence" value="silence" readonly>조용하게 가는 것을 선호</td>
					</c:if>
					</tr>
					<tr>
					<c:if test="${dwv.pet != null}">
						<td><input class="td2" type="hidden" id="pet" name="pet" value="pet" readonly>반려동물 탑승 가능</td>
					</c:if>
					</tr>
				</table>
				<p>드라이버님을 소개해주세요*</p>
				<textarea class="driverintroduce" name="introduce" readonly>${dwv.introduce}</textarea>
			</div>
		<button type="submit">등록하기</button>
		</form>
		
	</div>
</div>
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</body>
<script type="text/javascript">

	var slat = $(".s-lat").val();
	var slng = $(".s-lng").val();
	var elat = $(".e-lat").val();
	var elng = $(".e-lng").val();
	var Strlatlng = $("#latlng").val().replace('[', '').replace(']','');
	var latlng = Strlatlng.split(',');
	
	$("#map").attr("style","width:720px; height: 300px; margin:0px 0px 100px 0px;");
	var bounds = new kakao.maps.LatLngBounds();
	bounds.extend(new kakao.maps.LatLng(slat, slng));
	bounds.extend(new kakao.maps.LatLng(elat, elng));
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = { 
	    center: new kakao.maps.LatLng(slat, slng), // 지도의 중심좌표
	    level: 4 // 지도의 확대 레벨
	};  
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	map.setBounds(bounds);
	var imageSrc = '/assets/images/common/android-icon-36x36.png', // 마커이미지의 주소입니다    
	imageSize = new kakao.maps.Size(36, 36), // 마커이미지의 크기입니다
	imageOption = {
		offset : new kakao.maps.Point(20, 36)
	};
	var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize,
			imageOption)
	var marker = new kakao.maps.Marker({
		position: new kakao.maps.LatLng(slat, slng),
		map: map,
		image: markerImage
	})
	
	//선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
	//테스트 결과 json 파싱해서 for문 반복으로 넣어주면 될듯
	var linePath = [
		new kakao.maps.LatLng(slat, slng),
		];
	for (var i=0; i<latlng.length; i++) {
			if (i == latlng.length) {
				linePath.push(new kakao.maps.LatLng(elat,elng));
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
</script>
</html>