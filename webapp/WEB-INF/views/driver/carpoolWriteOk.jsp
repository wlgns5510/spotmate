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
				<li>도착까지 예상 소요시간 ${dwv.dur},&nbsp; ${dwv.dis}</li>
				<li>입력해주신 SPOT CARPOOL 내용이 맞으시면 등록을 눌러주세요.</li>
			</ul>
		</div>
	<div class="mid">
		<form action="/carpoolWriteInsert" method="post">
		<input type="hidden" name="type" value="carpool">
			<p>등록하신 날짜와 출발시간입니다.</p>
			<div class="f-sec">
				<span>출발 날짜</span><input type="text" name="sdate1" value="${dwv.sdate1}" id="s-date" >
				<span>출발 시간</span><input type="text" name="stime1" value="${dwv.stime1}" id="s-time" >
				<br>
				<span>도착 날짜</span><input type="text" name="edate1" value="${dwv.edate1}" id="e-date" >
			</div>
			<div class="s-sec">
				<p>드라이버님의 이동 경로입니다</p>
				
				<div id="input-div">
				<img src="assets/images/map_line_02.png">
				<table>
					<tr>
						<td><input type="text" name="splace1" value="${dwv.splace1}" id="s-addr" class="s-addr" ></td>
						<td><input type="hidden" name="slat1" value="${dwv.slat1}" class="s-lat"></td>
						<td><input type="hidden" name="slng1" value="${dwv.slng1}" class="s-lng"></td>
					</tr>
					<tr>
					 	<td><input type="text" name="eplace1" value="${dwv.eplace1}" id="e-addr" class="e-addr" ></td>
						<td><input type="hidden" name="elat1" value="${dwv.elat1}" class="e-lat"></td>
						<td><input type="hidden" name="elng1" value="${dwv.elng1}" class="e-lng"></td>
				</table>
				<input type="hidden" name="latlng1" value="${dwv.latlng1}" id="latlng">
				</div>
			</div>
			<div id="map"></div>
			<div class="t-sec">
				<p>탑승 가능한 인원 수*</p>
				<input name="people" value="${dwv.people}" type="text" >
				<input type="hidden" name="intfare" value="${dwv.intfare}">
				<input type="hidden" name="dur" value="${dwv.dur}">
				<input type="hidden" name="dis" value="${dwv.dis}">
				<p>차량 상세조건</p>
				<table class="deepsel">
					<tr>
					<c:if test="${dwv.nosmoke != null}">
						<td><input type="hidden" id="nosmoke" name="nosmoke" value="nosmoke">비흡연자</td>
					</c:if>
					<c:if test="${dwv.phonecharge != null}">
						<td><input class="td2" type="hidden" id="phonecharge" name="phonecharge" value="phonecharge">핸드폰 충전기 이용 가능</td>
					</c:if>
					</tr>
					<tr>
					<c:if test="${dwv.drivergender != null}">
						<td><input type="hidden" id="drivergender" name="drivergender" value="female">여성 드라이버</td>
					</c:if>
					<c:if test="${dwv.silence != null}">
						<td><input class="td2" type="hidden" id="silence" name="silence" value="silence">조용하게 가는 것을 선호</td>
					</c:if>
					</tr>
					<tr>
					<c:if test="${dwv.pet != null}">
						<td><input class="td2" type="hidden" id="pet" name="pet" value="pet">반려동물 탑승 가능</td>
					</c:if>
					</tr>
				</table>
				<p>드라이버님을 소개해주세요*</p>
				<textarea class="introduce" name="introduce" >${dwv.introduce}</textarea>
				<p>드라이버님이 하고싶은 말을 적어주세요</p>
				<textarea class="comments" name="comments">${dwv.comments}</textarea>
			</div>
		<p id="btn-modal">등록하기</p>
    <div id="modal" class="modal-overlay">
        <div class="modal-window">
<!--             <div class="title"> -->
<!--             </div> -->
            <div class="close-area">X</div>
            <div class="content">
                <p>예상 적립 포인트는 +${dwv.fare}입니다.</p>
                <button id="sub-btn" type="submit">등록하기</button>
            </div>
        </div>
    </div>
		</form>
		
	</div>
</div>
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</body>
<script type="text/javascript">
const modal = document.getElementById("modal")
function modalOn() {
    modal.style.display = "flex"
}
function isModalOn() {
    return modal.style.display === "flex"
}
function modalOff() {
    modal.style.display = "none"
}
const btnModal = document.getElementById("btn-modal")
btnModal.addEventListener("click", e => {
	  $(".modal-overlay").css({
          "top": (($(window).height()-$(".modal-overlay").outerHeight())/2+$(window).scrollTop())+"px",
          "left": (($(window).width()-$(".modal-overlay").outerWidth())/2+$(window).scrollLeft())+"px"
          //팝업창을 가운데로 띄우기 위해 현재 화면의 가운데 값과 스크롤 값을 계산하여 팝업창 CSS 설정
       }); 
      
      $(".modal-window").css("display","block"); //팝업 뒷배경 display block
      $(".modal-overlay").css("display","block"); //팝업창 display block
      
      $("body").css("overflow","hidden");//body 스크롤바 없애기
      modalOn()
  	})
const closeBtn = modal.querySelector(".close-area")
closeBtn.addEventListener("click", e => {
	$("body").css("overflow","auto");//body 스크롤바 생성
    modalOff()
})
modal.addEventListener("click", e => {
    const evTarget = e.target
    if(evTarget.classList.contains("modal-overlay")) {
    	$("body").css("overflow","auto");//body 스크롤바 생성
        modalOff()
    }
})
window.addEventListener("keyup", e => {
    if(isModalOn() && e.key === "Escape") {
    	$("body").css("overflow","auto");//body 스크롤바 생성
        modalOff()
    }
})


$(document).ready(function() {
	$("input:text").attr("readonly", true);
});

	var slat = $(".s-lat").val();
	var slng = $(".s-lng").val();
	var elat = $(".e-lat").val();
	var elng = $(".e-lng").val();
	var Strlatlng = $("#latlng").val().replace('[', '').replace(']','');
	var latlng = Strlatlng.split(',');
	$("#latlng").val(latlng);
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
		strokeStyle: 'solid', // 선의 스타일입니다
		map: map
	});
</script>
</html>