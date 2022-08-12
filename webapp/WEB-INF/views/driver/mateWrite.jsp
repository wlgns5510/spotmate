<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="Content-Security-Policy"
	content="upgrade-insecure-requests">
<title>Insert title here</title>
<script type="text/javascript" src="/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c6544d76c3912585c75cfd126a875faf&libraries=services,clusterer,drawing"></script>
<script src="/assets/jqueryUi/jquery-ui.js"></script>

<link rel="stylesheet" href="/assets/jqueryUi/jquery-ui.min.css">
<link rel="stylesheet" href="/assets/css/style.css">
</head>
<body>
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<div class="inner">
		<div class="top">
			<div>
				<span>MATE PRODUCT</span>
				<p>이동 경로 등록하기</p>
			</div>
			<p>
				드라이버님이 이동하시는 경로를 등록해주시면<br> 해당 기간동안 스팟을 함께 이동할 메이트가 카풀을 신청 할
				예정입니다.
			</p>

			<span>*필수 입력사항</span>
		</div>
		<input type="hidden" value="" id="insRowChk">
		<div class="mid">
			<form action="/mateWriteOk" method="post">
				<p>등록하신 날짜와 출발시간입니다.</p>
				<div class="f-sec">
					<span>출발 날짜</span><input type="date" name="sdate1" value="" id="mate-s-date">
					<br>
					<span>도착 날짜</span><input type="date" name="edate1" value="" id="mate-e-date">
				</div>
				<div id="s-sec-box">
					<div class="s-sec1">
						<div class="schedule">
							<span>일정을 추가하려면 눌러주세요</span>
							<img class="ia-btn2" src="assets/images/ico_add.png" onclick="add()">
							<img class="rmv-btn" src="assets/images/ico_close.png" onclick="rmv()">
						</div>
						
						<div id="input-div">
							<img class="mate-img" src="assets/images/map_line_03.png">
							<table id="addTable1">
								<tr>
									<td>
										<input type="text" name="splace1" value="" id="s-addr1" class="mate-s-addr1" placeholder="출발지를 입력하세요" onclick="ssp(1)">
										<input type="time" name="stime1" value="" id="s-time1" class="mate-s-time1" placeholder="아침 8:00">
										<img class="ia-btn" src="assets/images/ico_add.png" onclick="insRow(1)">
									</td>
									<td><input type="hidden" value="" class="hide-s-addr1"></td>
									<td><input type="hidden" name="slat1" value="" class="s-lat1"></td>
									<td><input type="hidden" name="slng1" value="" class="s-lng1"></td>
								</tr>
								<tr class="mate-e-addr-tr">
									<td>
										<input type="text" name="eplace1" value="" id="e-addr1" class="mate-e-addr1" placeholder="도착지를 입력하세요" onclick="sep(1)">
										<img class="ic-btn" src="assets/images/ico_close.png" onclick="clean(1)">
									</td>
									<td><input type="hidden" value="" class="hide-e-addr1"></td>
									<td><input type="hidden" name="elat1" value="" class="e-lat1"></td>
									<td><input type="hidden" name="elng1" value="" class="e-lng1"></td>
									<td><input type="hidden" name="latlng1" value="" id="latlng1"></td>
								</tr>
							</table>
						<div class='fare'>1인당 적립 포인트:</div>
				<div class='dur'>예상 소요 시간:</div>
				<div class='dis'>예상 거리:</div>
				<div onclick="finish()">설정완료</div>
				<div id="map"></div>
						<div class='fare1'>1인당 적립 포인트:</div>
				<div id="finish1" onclick="setDayPath(1)">설정완료</div>
				<div id="map1"></div>
				</div>
			</div>
			</div>
			
				<div class="t-sec">
					<p>탑승 가능한 인원 수*</p>
					<input name="people" type="number" min=1 placeholder="1명">
					<p>차량 상세조건</p>
					<table>
						<tr>
							<td><input type="checkbox" id="nosmoke" name="nosmoke"
								value="nosmoke"><label for="nosmoke">비흡연자</label></td>
							<td><input class="td2" type="checkbox" id="phonecharge"
								name="phonecharge" value="phonecharge"><label
								for="phonecharge">핸드폰 충전기 이용 가능</label></td>
						</tr>
						<tr>
							<td><input type="checkbox" id="drivergender"
								name="drivergender" value="female"><label
								for="drivergender">여성 드라이버</label></td>
							<td><input class="td2" type="checkbox" id="silence"
								name="silence" value="silence"><label for="silence">조용하게
									가는 것을 선호</label></td>
						</tr>
						<tr>
							<td><input type="checkbox" id="pet" name="pet"
								value="pet"><label for="pet">반려동물 탑승 가능</label></td>
						</tr>
					</table>
					<p>드라이버님을 소개해주세요*</p>
					<textarea class="introduce" name="introduce" readonly></textarea>
					<p>드라이버님이 하고싶은 말을 적어주세요</p>
					<textarea class="comments" name="comments" placeholder="하고싶은 말을 적어주세요!"></textarea>
				</div>
				<button>등록하기</button>
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
document.getElementById("mate-s-date").value = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString().slice(0, 10);
document.getElementById("mate-e-date").value = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString().slice(0, 10);

var a, b, oTbl;
var index = 2;

function add() {
	if (index >= 6) {
		alert("여행 일자는 5일 이상 추가할 수 없습니다.");
		index = 6;
		return;
	}
	document.getElementById("s-sec-box").innerHTML += '<div class="s-sec'+index+'"><div><span>일정을 추가하려면 눌러주세요</span><img class="ia-btn2" onclick="add()" src="assets/images/ico_add.png"><p>드라이버님의 '+index+'일차 이동 경로를 입력해주세요*</p></div><div id="input-div"><img class="mate-img" src="assets/images/map_line_03.png"><table id="addTable'+index+'" style="display:inline;"><tr><td><input type="text" id="s-addr'+index+'" name="splace'+index+'" onclick="ssp('+index+')" value="" class="mate-s-addr'+index+'" placeholder="출발지를 입력하세요"><input type="time" value="" name="stime'+index+'" class="mate-s-time'+index+'" placeholder="아침 8:00"><img class="ia-btn" src="assets/images/ico_add.png" onclick="insRow('+index+')"></td><td><input type="hidden" value="" class="hide-s-addr'+index+'"></td><td><input type="hidden" value="" name="slat'+index+'" class="s-lat'+index+'"></td><td><input type="hidden" name="slng'+index+'" value="" class="s-lng'+index+'"></td></tr><tr class="mate-e-addr-tr"><td><input type="text" value="" name="eplace'+index+'" id="e-addr'+index+'" class="mate-e-addr'+index+'" placeholder="도착지를 입력하세요" onclick="sep('+index+')"><img onclick="clean('+index+')" class="ic-btn" src="assets/images/ico_close.png"></td><td><input type="hidden" value="" class="hide-e-addr'+index+'"></td><td><input type="hidden" value="" name="elat'+index+'" class="e-lat'+index+'"></td><td><input type="hidden" name="elng'+index+'" value="" class="e-lng'+index+'"></td><td><input type="hidden" name="latlng'+index+'" value="" id="latlng'+index+'"></td></tr></table><p class="fare'+index+'">1인당 적립 포인트:</p><p id="finish'+index+'" onclick="setDayPath('+index+')">설정완료</p><div id="map'+index+'"></div></div></div>';
	index++;
	for (var i=1;i<index;i++) {
		if ( $(".hide-s-addr"+i).val() != "" ) {
			document.getElementById("s-addr"+i).value = $(".hide-s-addr"+i).val();
		} 
		if ( $(".hide-e-addr"+i).val() != "" ) {
			document.getElementById("e-addr"+i).value = $(".hide-e-addr"+i).val();
		}
	}
	for (var i=1;i<=index;i++) {
		for (var j=(9*i)+(i+1);j<(9*i)+(i+1)+5;j++) {
			if ( $(".mate-w-addr"+j).val() != "" && $(".mate-w-addr"+j).val() != null) {
				document.getElementById("w-addr"+j).value = $(".mate-w-addr"+j).val();
			}
		}
	}
}
	

function rmv() {
	index--;
	if (index <= 1) {
		alert("여행 일자는 최소 하루여야 합니다.");
		index = 2;
		return;
	}
	$(".s-sec"+index).remove();
	for (var i=1;i<index;i++) {
		if ( $(".hide-s-addr"+i).val() != "" ) {
			document.getElementById("s-addr"+i).value = $(".hide-s-addr"+i).val();
		} 
		if ( $(".hide-e-addr"+i).val() != "" ) {
			document.getElementById("e-addr"+i).value = $(".hide-e-addr"+i).val();
		}
	}
	for (var i=1;i<=index;i++) {
		for (var j=(9*i)+(i+1);j<(9*i)+(i+1)+5;j++) {
			if ( $(".mate-w-addr"+j).val() != "" && $(".mate-w-addr"+j).val() != null) {
				document.getElementById("w-addr"+j).value = $(".mate-w-addr"+j).val();
			}
		}
	}
}

function insRow(index) {
		if ( document.getElementById("insRowChk").value == "" ) {
			if ( a > (9*index)+(index+1)+5 && $("#w-addr"+a+"").val() == "") {
				if ( (9*index)+(index+1) - a > 5 ) {
					a = (9*index)+(index+1);
					b = a+4;
					return;
				} else if ( (9*index)+(index+1) - a < -9 ) {
					a = (9*index)+(index+1);
					b = a+4;
					return;
				}
				alert("경유지는 5개 이상 추가할 수 없습니다.");
				a = b;
				document.getElementById("insRowChk").value = "";
				return;
			} else if ( a > b && a == (9*index)+(index+1)+5) {
				alert("경유지는 5개 이상 추가할 수 없습니다.");
				a = b;
				document.getElementById("insRowChk").value = "";
				return;
			}
			
			a = (9*index)+(index+1);
			b = a+4;
			document.getElementById("insRowChk").value = "1";
			while($("#w-addr"+a+"").val() == "") {
				a++;
			}
			if ( a >= b ) {
				return;
			}
			oTbl = document.getElementById("addTable"+index);
			var oRow = oTbl.insertRow();
			oRow.onmouseover=function(){oTbl.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
			var oCell = oRow.insertCell();
			
			//삽입될 Form Tag
			var waypoint = '<input type="hidden" value="" class="mate-w-addr'+a+'"><input type="text" value="" name="wplace'+a+'" onclick="search('+a+')" id="w-addr'+a+'" placeholder="경유지를 입력하세요"><input type="time" name="wtime'+a+'" value="" class="w-time'+a+'" placeholder="아침 8:00"><input type="hidden" value="" name="wlat'+a+'" class="w-lat'+a+'"><input type="hidden" value="" name="wlng'+a+'" class="w-lng'+a+'"><img style="display:inline;" class="id-btn" src="assets/images/ico_minus.png" onClick="remove('+index+')">';
			
			oCell.innerHTML = waypoint;
			
			a++;
		}
		else {
			if ( (9*index)+(index+1) - a > 5 ) {
				a = (9*index)+(index+1);
				b = a+4;
			} else if ( (9*index)+(index+1) - a < -9 ) {
				a = (9*index)+(index+1);
				b = a+4;
			} else if ( (9*index)+(index+1) - a == 5 ) {
				a = (9*index)+(index+1);
				b = a+4;
			} else if ( a > b ) {
				alert("경유지는 5개 이상 추가할 수 없습니다.");
				a = b;
				document.getElementById("insRowChk").value = "";
				return;
			}
			while($("#w-addr"+a+"").val() == "") {
				a++;
			}
			oTbl = document.getElementById("addTable"+index);
			var oRow = oTbl.insertRow();
			oRow.onmouseover=function(){oTbl.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
			var oCell = oRow.insertCell();
			
			//삽입될 Form Tag
			var waypoint = '<input type="hidden" value="" class="mate-w-addr'+a+'"><input type="text" value="" name="wplace'+a+'" onclick="search('+a+')" id="w-addr'+a+'" placeholder="경유지를 입력하세요"><input type="time" name="wtime'+a+'" value="" class="w-time'+a+'" placeholder="아침 8:00"><input type="hidden" value="" name="wlat'+a+'" class="w-lat'+a+'"><input type="hidden" value="" name="wlng'+a+'" class="w-lng'+a+'"><img style="display:inline;" class="id-btn" src="assets/images/ico_minus.png" onClick="remove('+index+')">';
			
			oCell.innerHTML = waypoint;
			
			a++;
		}
}

function remove(index) {
		oTbl = document.getElementById("addTable"+index);
		try {
			oTbl.deleteRow(oTbl.rows.length-1);
			a--;
		} catch(TypeError) {}
}

function clean(index) {
	$(".mate-s-addr"+index).val("");
	$(".s-lat"+index).val("");
	$(".s-lng"+index).val("");
	$("#w-addr"+((9*index)+(index+1))).val("");
	$(".w-lat"+((9*index)+(index+1))).val("");
	$(".w-lng"+((9*index)+(index+1))).val("");
	$("#w-addr"+((9*index)+(index+1)+1)).val("");
	$(".w-lat"+((9*index)+(index+1)+1)).val("");
	$(".w-lng"+((9*index)+(index+1)+1)).val("");
	$("#w-addr"+((9*index)+(index+1)+2)).val("");
	$(".w-lat"+((9*index)+(index+1)+2)).val("");
	$(".w-lng"+((9*index)+(index+1)+2)).val("");
	$("#w-addr"+((9*index)+(index+1)+3)).val("");
	$(".w-lat"+((9*index)+(index+1)+3)).val("");
	$(".w-lng"+((9*index)+(index+1)+3)).val("");
	$("#w-addr"+((9*index)+(index+1)+4)).val("");
	$(".w-lat"+((9*index)+(index+1)+4)).val("");
	$(".w-lng"+((9*index)+(index+1)+4)).val("");
	$(".mate-e-addr"+index).val("");
	$(".e-lat"+index).val("");
	$(".e-lng"+index).val("");
}


function search(a) {
	window.open("swp/"+a, "child", "width=1350, height=820, left=300, top=100");
}

function ssp(index) {
	window.open("ssp/"+index, "child", "width=1350, height=820, left=1000, top=50");
}

function sep(index) {
	window.open("sep/"+index, "child", "width=1350, height=820, left=1000, top=50");
}

function setDayPath(index) {
	if( $(".s-lat"+index).val() == "" || $(".s-lng"+index).val() == "" || $(".e-lat"+index).val() == "" || $(".e-lng"+index).val() == "" ) {
		alert("검색 후에 시도해주세요");
		return;
	}
	var saddr = $(".mate-s-addr"+index).val();
	var slat = $(".s-lat"+index).val();
	var slng = $(".s-lng"+index).val();
	var waddr1 = $("#w-addr"+((9*index)+(index+1))).val();
	var wlat1 = $(".w-lat"+((9*index)+(index+1))).val();
	var wlng1 = $(".w-lng"+((9*index)+(index+1))).val();
	var waddr2 = $("#w-addr"+((9*index)+(index+1)+1)).val();
	var wlat2 = $(".w-lat"+((9*index)+(index+1)+1)).val();
	var wlng2 = $(".w-lng"+((9*index)+(index+1)+1)).val();
	var waddr3 = $("#w-addr"+((9*index)+(index+1)+2)).val();
	var wlat3 = $(".w-lat"+((9*index)+(index+1)+2)).val();
	var wlng3 = $(".w-lng"+((9*index)+(index+1)+2)).val();
	var waddr4 = $("#w-addr"+((9*index)+(index+1)+3)).val();
	var wlat4 = $(".w-lat"+((9*index)+(index+1)+3)).val();
	var wlng4 = $(".w-lng"+((9*index)+(index+1)+3)).val();
	var waddr5 = $("#w-addr"+((9*index)+(index+1)+4)).val();
	var wlat5 = $(".w-lat"+((9*index)+(index+1)+4)).val();
	var wlng5 = $(".w-lng"+((9*index)+(index+1)+4)).val();
	var eaddr = $(".mate-e-addr"+index).val();
	var elat = $(".e-lat"+index).val();
	var elng = $(".e-lng"+index).val();
	$.ajax({
		url : "${pageContext.request.contextPath}/setDayPath",		
		type : "post",
		contentType : "application/json",
		data : JSON.stringify({
			saddr: saddr,
			slat: slat,
			slng: slng,
			waddr1: waddr1,
			wlat1: wlat1,
			wlng1: wlng1,
			waddr2: waddr2,
			wlat2: wlat2,
			wlng2: wlng2,
			waddr3: waddr3,
			wlat3: wlat3,
			wlng3: wlng3,
			waddr4: waddr4,
			wlat4: wlat4,
			wlng4: wlng4,
			waddr5: waddr5,
			wlat5: wlat5,
			wlng5: wlng5,
			eaddr: eaddr,
			elat: elat,
			elng: elng
			}),

		dataType : "json",
		success : function(result){
			$("#map").attr("style","width:720px; height: 300px; margin:0px 0px 100px 0px;");
			$(".s-sec2").attr("style","margin:300px 0px 0px 0px;");
			$(".fare").remove();
			$(".dur").remove();
			$(".dis").remove();
			document.getElementById("s-addr").value = splace;
			document.getElementById("e-addr").value = eplace;
			document.getElementById("w-addr2").value = w2p;
			document.getElementById("w-addr3").value = w3p;
			document.getElementById("w-addr4").value = w4p;
			document.getElementById("w-addr5").value = w5p;
			document.getElementById("w-addr6").value = w6p;
			var bounds = new kakao.maps.LatLngBounds();
			bounds.extend(new kakao.maps.LatLng(slat, slng));
			bounds.extend(new kakao.maps.LatLng(elat, elng));
			latlng = result;
			document.getElementById("latlng").value = latlng.toString();
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = { 
			    center: new kakao.maps.LatLng(slat, slng), // 지도의 중심좌표
			    level: 4 // 지도의 확대 레벨
			};  
			
			$("#map"+index).attr("style","width:720px; height: 300px; margin:0px 0px 100px 0px;");
			$(".fare"+index).remove();
			document.getElementById("input-div").innerHTML += "<div class='fare'>1인당 적립 포인트:&nbsp; <input type='hidden' name='fare"+index+"' value='"+result.fare+"'>"+result.fare+"</div>";
			document.getElementById("s-addr"+index).value = saddr;
			document.getElementById("e-addr"+index).value = eaddr;
			if (waddr1 != null) {
				document.getElementById("w-addr"+((9*index)+(index+1))).value = waddr1;
			} 
			if (waddr2 != null) {
				document.getElementById("w-addr"+((9*index)+(index+1)+1)).value = waddr2;
			} 
			if (waddr3 != null) {
				document.getElementById("w-addr"+((9*index)+(index+1)+2)).value = waddr3;
			} 
			if (waddr4 != null) {
				document.getElementById("w-addr"+((9*index)+(index+1)+3)).value = waddr4;
			} 
			if (waddr5 != null) {
				document.getElementById("w-addr"+((9*index)+(index+1)+4)).value = waddr5;
			}
			var latArray = [slat, elat],
				lngArray = [slng, elng];
			if (wlat1 != null) {
				latArray.push(wlat1);
				lngArray.push(wlng1);
			} else if (wlat2 != null) {
				latArray.push(wlat2);
				lngArray.push(wlng2);
			} else if (wlat3 != null) {
				latArray.push(wlat3);
				lngArray.push(wlng3);
			} else if (wlat4 != null) {
				latArray.push(wlat4);
				lngArray.push(wlng4);
			} else if (wlat5 != null) {
				latArray.push(wlat5);
				lngArray.push(wlng5);
			};
			var maxLat = Math.max(...latArray),
				maxLng = Math.max(...lngArray),
				minLat = Math.min(...latArray),
				minLng = Math.min(...lngArray),
				bounds = new kakao.maps.LatLngBounds();
			bounds.extend(new kakao.maps.LatLng(maxLat, maxLng));
			bounds.extend(new kakao.maps.LatLng(minLat, minLng));
			latlng = result.latlng;
			document.getElementById("latlng"+index).value = latlng.toString();
			var mapContainer = document.getElementById('map'+index), // 지도를 표시할 div 
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
					latlng: new kakao.maps.LatLng(wlat1, wlng1)
				},
				{
					latlng: new kakao.maps.LatLng(wlat2, wlng2)
				},
				{
					latlng: new kakao.maps.LatLng(wlat3, wlng3)
				},
				{
					latlng: new kakao.maps.LatLng(wlat4, wlng4)
				},
				{
					latlng: new kakao.maps.LatLng(wlat5, wlng5)
				},
				{
					latlng: new kakao.maps.LatLng(elat, elng)
				}
			];
			
			for (var i=0;i<positions.length;i++) {
				var min = Math.ceil(1),
			    	max = Math.floor(14),
			    	rnd = Math.floor(Math.random() * (max - min)) + min;
				console.log(rnd);
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
				strokeOpacity: 0.8, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
				strokeStyle: 'solid', // 선의 스타일입니다
				map: map
			});
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
}
</script>
</html>