<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
<title>Insert title here</title>
<script src="/assets/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c6544d76c3912585c75cfd126a875faf&libraries=services,clusterer,drawing"></script>
<link rel="stylesheet" href="/assets/css/style.css">
</head>
<body>
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
<div class="inner">
	<div class="top">
		<div><span>SPOT CARPOOL</span>
		<p>이동 경로 등록하기</p>
		</div>
		<p>드라이버님이 이동하시는 경로를 등록해주시면<br>
		같이 이동을 원하는 유저가 카풀을 신청 할 예정입니다.</p>
		
		<span>*필수 입력사항</span>
	</div>
	<div class="mid">
		<form action="/carpoolWriteOk" method="post">
		<input type="hidden" name="type" value="1">
			<p>등록하신 날짜와 출발시간입니다.</p>
			<div class="f-sec">
				<span>출발 날짜</span><input type="date" name="sdate" value="" id="s-date">
				<span>출발 시간</span><input type="time" name="stime" value="" id="s-time">
				<br>
				<span>도착 날짜</span><input type="date" name="edate" value="" id="e-date">
			</div>
			<div class="s-sec">
				<p>드라이버님의 이동 경로를 입력해주세요*</p>
				
				<div id="input-div">
				<img src="assets/images/map_line_02.png">
				<table>
					<tr>
						<td><input autocomplete="off" type="text" name="splace" value="" id="s-addr1" class="s-addr" placeholder="출발지를 입력하세요" onclick="ssp()"><img class="ae-btn" src="assets/images/arrows_exchange.png"></td>
						<td><input type="hidden" name="slat" value="" class="s-lat1"></td>
						<td><input type="hidden" name="slng" value="" class="s-lng1"></td>
					</tr>
					<tr>
					 	<td><input autocomplete="off" type="text" name="eplace" value="" id="e-addr1" class="e-addr" placeholder="도착지를 입력하세요" onclick="sep()"><img class="ic-btn" src="assets/images/ico_close.png"></td>
						<td><input type="hidden" name="elat" value="" class="e-lat1"></td>
						<td><input type="hidden" name="elng" value="" class="e-lng1"></td>
						<td><input type="hidden" name="latlng1" value="" id="latlng1"></td>
				</table>
				<div class='fare'>1인당 적립 포인트:</div>
				<div class='dur'>예상 소요 시간:</div>
				<div class='dis'>예상 거리:</div>
				</div>
			<span id="finish">설정완료</span>
			</div>
			<div id="map"></div>
			<div class="t-sec">
				<p>탑승 가능한 인원 수*</p>
				<input name="people" type="number" min=1 placeholder="1명"> 
				<p>차량 상세조건</p>
				<table class="deepsel">
					<tr>
						<td><input type="checkbox" id="nosmoke" name="nosmoke" value="nosmoke"><label for="nosmoke">비흡연자</label></td>
						<td><input class="td2" type="checkbox" id="phoneCharge" name="phoneCharge" value="phoneCharge"><label for="phoneCharge">핸드폰 충전기 이용 가능</label></td>
					</tr>
					<tr>
						<td><input type="checkbox" id="drivergender" name="drivergender" value="female"><label for="drivergender">여성 드라이버</label></td>
						<td><input class="td2" type="checkbox" id="silence" name="silence" value="silence"><label for="silence">조용하게 가는 것을 선호</label></td>
					</tr>
					<tr>
						<td><input class="td2" type="checkbox" id="pet" name="pet" value="pet"><label for="pet">반려동물 탑승 가능</label></td>
					</tr>
				</table>
				<p>드라이버님을 소개해주세요*</p>
				<textarea class="introduce" name="introduce" readonly></textarea>
				<p>드라이버님이 하고싶은 말을 적어주세요</p>
				<textarea class="comments" name="comments" placeholder="하고싶은 말을 적어주세요!"></textarea>
			</div>
		<button type="submit">등록하기</button>
		</form>
		
	</div>
</div>
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</body>
<script type="text/javascript">
$(document).ready(function() {
	$("input:checkbox").on('click', function() {
	      if ( $(this).prop('checked') ) {
	        $(this).parent().addClass("selected");
	      } else {
	        $(this).parent().removeClass("selected");
	      }
	    });
	});


document.getElementById("s-date").value = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString().slice(0, 10);
document.getElementById("s-time").value = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString().slice(11, 16);

$("#finish").on("click", function() {
	if($(".s-lat").val() == "" || $(".s-lng").val() == "" || $(".e-lat").val() == "" || $(".e-lng").val() == "") {
		alert("검색 후에 시도해주세요");
		return;
	}
	var latlng = "";
	var splace = $("#s-addr1").val();
	var eplace = $("#e-addr1").val();
	var slat = $(".s-lat1").val();
	var slng = $(".s-lng1").val();
	var elat = $(".e-lat1").val();
	var elng = $(".e-lng1").val();
	$.ajax({
		
		url : "${pageContext.request.contextPath}/setPath",		
		type : "post",
		contentType : "application/json",
		data : JSON.stringify({slat: slat,
			slng: slng,
			elat: elat,
			elng: elng,
			splace: splace,
			eplace: eplace}),

		dataType : "json",
		success : function(result){
			$("#map").attr("style","width:720px; height: 300px; margin:0px 0px 100px 0px;");
			$(".fare").remove();
			$(".dur").remove();
			$(".dis").remove();
			document.getElementById("input-div").innerHTML += "<div class='fare'>1인당 적립 포인트:&nbsp; <input type='hidden' name='fare' value='"+result.totalFare+"'>"+result.totalFare+"</div>";
			document.getElementById("input-div").innerHTML += "<div class='dur'>예상 소요 시간:&nbsp; <input type='hidden' name='dur' value='"+result.totalDur+"'>"+result.totalDur+"</div>";
			document.getElementById("input-div").innerHTML += "<div class='dis'>예상 거리:&nbsp; <input type='hidden' name='dis' value='"+result.totalDis+"'>"+result.totalDis+"</div>";
			document.getElementById("s-addr1").value = result.splace;
			document.getElementById("e-addr1").value = result.eplace;
			var bounds = new kakao.maps.LatLngBounds();
			bounds.extend(new kakao.maps.LatLng(slat, slng));
			bounds.extend(new kakao.maps.LatLng(elat, elng));
			latlng = result.latlng;
			document.getElementById("latlng1").value = latlng.toString();
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = { 
			    center: new kakao.maps.LatLng(slat, slng), // 지도의 중심좌표
			    level: 4 // 지도의 확대 레벨
			};  
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			map.setBounds(bounds);
			var positions = [
				{
					latlng: new kakao.maps.LatLng(slat, slng)
				},
				{
					latlng: new kakao.maps.LatLng(elat, elng)
				}
			];
			for (var i=0;i<2;i++) {
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
			}
			
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
// 				strokeStyle: 'shortdashdot', // 선의 스타일입니다
// 				strokeStyle: 'longdash',
// 				strokeStyle: 'dashed',
				strokeStyle: 'solid',
				map: map
			});
			
			//지도에 선을 표시합니다 
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
})

$(".ae-btn").on("click", function() {
	var saddr = $(".s-addr").val();
	var slat = $(".s-lat").val();
	var slng = $(".s-lng").val();
	var eaddr = $(".e-addr").val();
	var elat = $(".e-lat").val();
	var elng = $(".e-lng").val();
	
	$(".s-addr").val(eaddr);
	$(".s-lat").val(elat);
	$(".s-lng").val(elng);
	$(".e-addr").val(saddr);
	$(".e-lat").val(slat);
	$(".e-lng").val(slng);
})
$(".ic-btn").on("click", function() {
	$(".s-addr").val("");
	$(".e-addr").val("");
})
function ssp() {
	window.open("ssp/1", "child", "width=1350, height=820, left=300, top=100");
}
function sep() {
	window.open("sep/1", "child", "width=1350, height=820, left=300, top=100");
}
</script>
</html>