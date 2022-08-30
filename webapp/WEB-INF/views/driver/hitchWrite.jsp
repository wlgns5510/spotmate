<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	
	<!-- css, js 연결 -->
	<link href="${pageContext.request.contextPath}/assets/css/swiper-bundle.min.css" rel="stylesheet" >
	<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
	<script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/style.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/swiper.min.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c6544d76c3912585c75cfd126a875faf&libraries=services,clusterer,drawing"></script>
<title>Insert title here</title>
</head>
<body>
<body>
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
<div class="inner">
	<div class="top">
		<div><span>SPOT HITCHHIKE</span>
		<p>이동 경로 등록하기</p>
		</div>
		<p>드라이버님이 이동하시는 경로를 등록해주시면<br>
		같이 이동을 원하는 유저가 카풀을 신청 할 예정입니다.</p>
		
		<span>* 필수 입력사항</span>
	</div>
	<div class="mid">
		<form action="/hitchWriteOk" method="post">
			<p class="write-font">이동하는 날짜와 시간을 입력해주세요 *</p>
			<div class="f-sec">
				<span>출발 날짜</span><input type="text" name="sdate1" value="" id="hitch-s-date" readonly><br>
				<span>출발 시간</span><input type="time" name="stime1" value="" id="hitch-s-time">
			</div>
			<div class="s-sec">
				<p class="write-font">드라이버님의 이동 경로를 입력해주세요 *</p>
				
				<div id="input-div">
				<img src="assets/images/map_line_02.png">
				<table>
					<tr>
						<td><input autocomplete="off" type="text" name="splace1" value="" id="s-addr1" class="s-addr" placeholder="출발지를 입력하세요" onclick="ssp()"><img class="ae-btn" src="assets/images/arrows_exchange.png"></td>
						<td><input type="hidden" name="slat1" value="" class="s-lat1"></td>
						<td><input type="hidden" name="slng1" value="" class="s-lng1"></td>
					</tr>
					<tr>
					 	<td><input autocomplete="off" type="text" name="eplace1" value="" id="e-addr1" class="e-addr" placeholder="도착지를 입력하세요" onclick="sep()"><img class="ic-btn" src="assets/images/ico_close.png"></td>
						<td><input type="hidden" name="elat1" value="" class="e-lat1"></td>
						<td><input type="hidden" name="elng1" value="" class="e-lng1"></td>
						<td><input type="hidden" name="latlng1" value="" id="latlng1"></td>
				</table>
				<button type="button" id="finish">경로 확인하기</button>
				</div>
			</div>
			<div id="map"></div>
			<div id="totalInfo"></div>
			<div class="t-sec">
				<p class="write-font">탑승 가능한 인원 수 *</p>
				<input id="people" name="people" type="number" min=1 placeholder="1명" value="1"> 
				<p class="write-font">차량 상세조건</p>
				<table class="deepsel">
					<c:forEach items="${driverInfo.NAME}" var="name">
						<c:choose>
							<c:when test="${name=='비흡연자'}">
								<input type="hidden" class="nosmoke" value="">
							</c:when>
							<c:when test="${name=='여성 드라이버'}">
								<input type="hidden" class="female" value="">
							</c:when>
							<c:when test="${name=='반려동물'}">
								<input type="hidden" class="pet" value="">
							</c:when>
							<c:when test="${name=='충전기 사용 가능'}">
								<input type="hidden" class="charge" value="">
							</c:when>
							<c:when test="${name=='트렁크 사용 가능'}">
								<input type="hidden" class="trunk" value="">
							</c:when>
							
						</c:choose>
					</c:forEach>
					<tr>
						<td><input type="checkbox" id="nosmoke" name="nosmoke" value="nosmoke">
						<label for="nosmoke">&nbsp;&nbsp;비흡연자</label></td>
						<td><input type="checkbox" id="femaledriver" name="femaledriver" value="femaledriver">
						<label for="femaledriver">&nbsp;&nbsp;여성 드라이버</label></td>
						
					</tr>
					<tr>
						<td><input type="checkbox" id="pet" name="pet" value="pet">
						<label for="pet">&nbsp;&nbsp;반려동물</label></td>
						<td><input class="td2" type="checkbox" id="phonecharge" name="phonecharge" value="phonecharge">
						<label for="phonecharge">&nbsp;&nbsp;충전기 사용 가능</label></td>
					</tr>
					<tr>
						<td><input class="td2" type="checkbox" id="trunk"
							name="trunk" value="trunk"><label for="trunk">&nbsp;&nbsp; 트렁크 사용 가능</label></td>
					</tr>
				</table>
				<p class="write-font">드라이버님을 소개해주세요 *</p>
				<textarea class="introduce" name="introduce" readonly>${driverInfo.INTRODUCE}</textarea>
				<p class="write-font">드라이버님이 하고싶은 말을 적어주세요</p>
				<textarea class="comments" name="comments" placeholder="하고 싶은 말을 적어주세요!"></textarea>
			</div>
		<button onclick="moveOk()" id="btn" type="button">등록하기</button>
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
	if ( $(".nosmoke").val() != null ) {
		$("#nosmoke").attr("checked", "checked;");
	}
	if ( $(".charge").val() != null ) {
		$("#phonecharge").attr("checked", "checked;");
	}
	if ( $(".female").val() != null ) {
		$("#femaledriver").attr("checked", "checked;");
		}
	if ( $(".trunk").val() != null ) {
		$("#trunk").attr("checked", "checked;");
	}
	if ( $(".pet").val() != null ) {
		$("#pet").attr("checked", "checked;");
	}
});
	
document.getElementById("hitch-s-date").value = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString().slice(0, 10);
document.getElementById("hitch-s-time").value = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString().slice(11, 16);

function moveOk() {
	if ( $("#s-addr1").val() == '' ) {
		alert("출발지를 설정한 후 다시 시도해주세요!");
		return;
	} else if ( $("#e-addr1").val() == '' ) {
		alert("도착지를 설정한 후 다시 시도해주세요!")
		return;
	} else if ( $("#people").val() == '' ) {
		alert("인원 수를 설정한 후 다시 시도해주세요!")
		return;
	} else if ( $("#s-time").val() == '' ) {
		alert("출발 시간을 설정한 후 다시 시도해주세요!")
		return;
	} else if ( $("#fare").val() == null ) {
		alert("경로를 검색한 후 다시 시도해주세요!")
		return;
	}
	$("#btn").removeAttr()
	$("#btn").attr("type", "submit")
}


$("#finish").on("click", function() {
	if($(".s-lat1").val() == "" || $(".s-lng1").val() == "" || $(".e-lat1").val() == "" || $(".e-lng1").val() == "") {
		alert("검색 후에 시도해주세요");
		return;
	}
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
			$("#map").attr("style","width:720px; height: 300px; margin:30px 0px 50px 0px;");
			$(".fare").remove();
			$(".dur").remove();
			$(".dis").remove();
			document.getElementById("totalInfo").innerHTML += "<div class='fare'><span style='color:black;'>1인당 적립 포인트 : &nbsp;</span><input type='hidden' name='fare' id='fare' value='"+result.totalFare+"'>"+result.totalFare+"</div>";
			document.getElementById("totalInfo").innerHTML += "<div class='dur'><span style='color:black;'>예상 소요 시간 : &nbsp;</span><input type='hidden' name='dur' value='"+result.totalDur+"'>"+result.totalDur+"</div>";
			document.getElementById("totalInfo").innerHTML += "<div class='dis'><span style='color:black;'>예상 거리 : &nbsp;</span><input type='hidden' name='dis' value='"+result.totalDis+"'>"+result.totalDis+"</div>";
			document.getElementById("s-addr1").value = result.splace;
			document.getElementById("e-addr1").value = result.eplace;
			var bounds = new kakao.maps.LatLngBounds();
			bounds.extend(new kakao.maps.LatLng(slat, slng));
			bounds.extend(new kakao.maps.LatLng(elat, elng));
			var latlng = result.latlng;
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
			var iwContent;
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
	window.open("ssp/1", "child", "width=1000, height=600, left=300, top=100");
}
function sep() {
	window.open("sep/1", "child", "width=1000, height=600, left=300, top=100");
}
</script>
</html>