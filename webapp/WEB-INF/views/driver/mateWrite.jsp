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
<<<<<<< HEAD
=======
							<img class="rmv-btn" src="assets/images/ico_close.png" onclick="rmv()">
>>>>>>> branch 'master' of https://github.com/ljk0071/spotmate2.git
							<p>드라이버님의 1일차 이동 경로를 입력해주세요*</p>
						</div>
<<<<<<< HEAD
						

=======
>>>>>>> branch 'master' of https://github.com/ljk0071/spotmate2.git
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
<<<<<<< HEAD
						<div class='fare'>1인당 적립 포인트:</div>
				<div class='dur'>예상 소요 시간:</div>
				<div class='dis'>예상 거리:</div>
				<div onclick="finish()">설정완료</div>
				<div id="map"></div>
=======
						<div class='fare1'>1인당 적립 포인트:</div>
				<div id="finish1" onclick="setDayPath(1)">설정완료</div>
				<div id="map1"></div>
>>>>>>> branch 'master' of https://github.com/ljk0071/spotmate2.git
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
<<<<<<< HEAD
	if (index1 >= 6) {
		alert("여행 일자는 5일 이상 추가할 수 없습니다.");
		index1 = 6;
		return;
	}
	document.getElementById("s-sec-box").innerHTML += '<div class="s-sec'+index1+'"><div><img class="ia-btn2" onclick="add()" src="assets/images/ico_add.png"><p>드라이버님의 '+index1+'일차 이동 경로를 입력해주세요*</p></div><div id="input-div"><img class="mate-img" src="assets/images/map_line_03.png"><table id="addTable'+index1+'" style="display:inline;"><tr><td><input type="text" onclick="ssp'+index1+'()" value="" class="mate-s-addr'+index1+'" placeholder="출발지를 입력하세요"><input type="time" value="" class="mate-s-time'+index1+'" placeholder="아침 8:00"><img class="ia-btn" src="assets/images/ico_add.png" onclick="insRow'+index1+'()"></td><td><input type="hidden" value="" name="s-lat'+index1+'" class="s-lat'+index1+'"></td><td><input type="hidden" value="" name="s-lng'+index1+'" class="s-lng'+index1+'"></td></tr><tr class="mate-e-addr-tr"><td><input type="text" value="" name="mate-e-addr'+index1+'" class="mate-e-addr'+index1+'" placeholder="도착지를 입력하세요" onclick="sep'+index1+'()"><img class="mate-ic-btn'+index1+'" src="assets/images/ico_close.png"></td><td><input type="hidden" value="" name="e-lat'+index1+'" class="e-lat'+index1+'"></td><td><input type="hidden" value="" name="e-lng'+index1+'" class="e-lng'+index1+'"></td><td><input type="hidden" name="latlng'+index1+'" value="" id="latlng'+index1+'"></td></tr></table><div class="fare'+index1+'">1인당 적립 포인트:</div><div class="dur'+index1+'">예상 소요 시간:</div><div class="dis'+index1+'">예상 거리:</div><div onclick="finish'+index1+'()">설정완료</div><div id="map'+index1+'"></div></div></div>';
	index1++;
}
function insRow() {
	
=======
>>>>>>> branch 'master' of https://github.com/ljk0071/spotmate2.git
	if (index >= 6) {
		alert("여행 일자는 5일 이상 추가할 수 없습니다.");
		index = 6;
		return;
	}
	document.getElementById("s-sec-box").innerHTML += '<div class="s-sec'+index+'"><div><span>일정을 추가하려면 눌러주세요</span><img class="ia-btn2" onclick="add()" src="assets/images/ico_add.png"><p>드라이버님의 '+index+'일차 이동 경로를 입력해주세요*</p></div><div id="input-div"><img class="mate-img" src="assets/images/map_line_03.png"><table id="addTable'+index+'" style="display:inline;"><tr><td><input type="text" id="s-addr'+index+'" name="splace'+index+'" onclick="ssp('+index+')" value="" class="mate-s-addr'+index+'" placeholder="출발지를 입력하세요"><input type="time" value="" name="stime'+index+'" class="mate-s-time'+index+'" placeholder="아침 8:00"><img class="ia-btn" src="assets/images/ico_add.png" onclick="insRow('+index+')"></td><td><input type="hidden" value="" class="hide-s-addr'+index+'"></td><td><input type="hidden" value="" name="slat'+index+'" class="s-lat'+index+'"></td><td><input type="hidden" name="slng'+index+'" value="" class="s-lng'+index+'"></td></tr><tr class="mate-e-addr-tr"><td><input type="text" value="" name="eplace'+index+'" id="e-addr'+index+'" class="mate-e-addr'+index+'" placeholder="도착지를 입력하세요" onclick="sep('+index+')"><img onclick="clean('+index+')" class="ic-btn" src="assets/images/ico_close.png"></td><td><input type="hidden" value="" class="hide-e-addr'+index+'"></td><td><input type="hidden" value="" name="elat'+index+'" class="e-lat'+index+'"></td><td><input type="hidden" name="elng'+index+'" value="" class="e-lng'+index+'"></td><td><input type="hidden" name="latlng'+index+'" value="" id="latlng'+index+'"></td></tr></table><p class="fare'+index+'">1인당 적립 포인트:</p><p id="finish'+index+'" onclick="setDayPath('+index+')">설정완료</p><div id="map'+index+'"></div></div></div>';
	index++;
<<<<<<< HEAD
	if (index == 2) {
		$(".s-sec").attr("style", "height:320px;");
	} else if (index == 3) {
		$(".s-sec").attr("style", "height:370px;");
	} else if (index == 4) {
		$(".s-sec").attr("style", "height:420px;");
	} else if (index == 5) {
		$(".s-sec").attr("style", "height:470px;");
	} else if (index == 6) {
		$(".s-sec").attr("style", "height:520px;");
=======
	for (var i=1;i<index;i++) {
		if ( $(".hide-s-addr"+i).val() != "" ) {
			document.getElementById("s-addr"+i).value = $(".hide-s-addr"+i).val();
		} 
		if ( $(".hide-e-addr"+i).val() != "" ) {
			document.getElementById("e-addr"+i).value = $(".hide-e-addr"+i).val();
		}
>>>>>>> branch 'master' of https://github.com/ljk0071/spotmate2.git
	}
	for (var i=1;i<=index;i++) {
		for (var j=(9*i)+(i+1);j<(9*i)+(i+1)+5;j++) {
			if ( $(".mate-w-addr"+j).val() != "" && $(".mate-w-addr"+j).val() != null) {
				document.getElementById("w-addr"+j).value = $(".mate-w-addr"+j).val();
			}
		}
	}
<<<<<<< HEAD
	index2++;
	if (index2 == 12) {
		$(".s-sec2").attr("style", "height:320px;");
	} else if (index2 == 13) {
		$(".s-sec2").attr("style", "height:370px;");
	} else if (index2 == 14) {
		$(".s-sec2").attr("style", "height:420px;");
	} else if (index2 == 15) {
		$(".s-sec2").attr("style", "height:470px;");
	} else if (index2 == 16) {
		$(".s-sec2").attr("style", "height:520px;");
	}
	
	oTbl2 = document.getElementById("addTable2");
	var oRow = oTbl2.insertRow();
	oRow.onmouseover=function(){oTbl2.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
	var oCell = oRow.insertCell();
	
	//삽입될 Form Tag
	var waypoint = '<input type="text" value="" onclick="search1()" id="w-addr'+ index2 + '" placeholder="경유지를 입력하세요"><input type="time" value="" class="w-time'+ index2 + '" placeholder="아침 8:00"><input type="hidden" value="" class="w-lat'+ index2 + '"><input type="hidden" value="" class="w-lng'+ index2 + '"><img style="display:inline;" class="id-btn" src="assets/images/ico_minus.png" onClick="remove2()">';
	
	oCell.innerHTML = waypoint;
	
}
function insRow3() {
	
	if (index3 >= 26) {
		alert("경유지는 5개 이상 추가할 수 없습니다.");
		index3 = 26;
		return;
	}
	index3++;
	if (index3 == 22) {
		$(".s-sec3").attr("style", "height:270px;");
	} else if (index3 == 23) {
		$(".s-sec3").attr("style", "height:320px;");
	} else if (index3 == 24) {
		$(".s-sec3").attr("style", "height:370px;");
	} else if (index3 == 25) {
		$(".s-sec3").attr("style", "height:420px;");
	} else if (index3 == 26) {
		$(".s-sec3").attr("style", "height:470px;");
	}
	
	oTbl3 = document.getElementById("addTable3");
	var oRow = oTbl3.insertRow();
	oRow.onmouseover=function(){oTbl3.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
	var oCell = oRow.insertCell();
	
	//삽입될 Form Tag
	var waypoint = '<input type="text" value="" onclick="search2()" id="w-addr'+ index3 + '" placeholder="경유지를 입력하세요"><input type="time" value="" class="w-time'+ index3 + '" placeholder="아침 8:00"><input type="hidden" value="" class="w-lat'+ index3 + '"><input type="hidden" value="" class="w-lng'+ index3 + '"><img style="display:inline;" class="id-btn" src="assets/images/ico_minus.png" onClick="remove3()">';
	
	oCell.innerHTML = waypoint;
	
}
function insRow4() {
	
	if (index4 >= 36) {
		alert("경유지는 5개 이상 추가할 수 없습니다.");
		index4 = 36;
		return;
	}
	index4++;
	if (index4 == 32) {
		$(".s-sec4").attr("style", "height:270px;");
	} else if (index4 == 33) {
		$(".s-sec4").attr("style", "height:320px;");
	} else if (index4 == 34) {
		$(".s-sec4").attr("style", "height:370px;");
	} else if (index4 == 35) {
		$(".s-sec4").attr("style", "height:420px;");
	} else if (index4 == 36) {
		$(".s-sec4").attr("style", "height:470px;");
	}
	
	oTbl4 = document.getElementById("addTable4");
	var oRow = oTbl4.insertRow();
	oRow.onmouseover=function(){oTbl4.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
	var oCell = oRow.insertCell();
	
	//삽입될 Form Tag
	var waypoint = '<input type="text" value="" onclick="search3()" id="w-addr'+ index4 + '" placeholder="경유지를 입력하세요"><input type="time" value="" class="w-time'+ index4 + '" placeholder="아침 8:00"><input type="hidden" value="" class="w-lat'+ index4 + '"><input type="hidden" value="" class="w-lng'+ index4 + '"><img style="display:inline;" class="id-btn" src="assets/images/ico_minus.png" onClick="remove4()">';
	
	oCell.innerHTML = waypoint;
	
}
function insRow5() {
	
	if (index5 >= 46) {
		alert("경유지는 5개 이상 추가할 수 없습니다.");
		index5 = 46;
		return;
	}
	index5++;
	if (index5 == 42) {
		$(".s-sec5").attr("style", "height:270px;");
	} else if (index5 == 43) {
		$(".s-sec5").attr("style", "height:320px;");
	} else if (index5 == 44) {
		$(".s-sec5").attr("style", "height:370px;");
	} else if (index5 == 45) {
		$(".s-sec5").attr("style", "height:420px;");
	} else if (index5 == 46) {
		$(".s-sec5").attr("style", "height:470px;");
	}
	
	oTbl5 = document.getElementById("addTable5");
	var oRow = oTbl5.insertRow();
	oRow.onmouseover=function(){oTbl5.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
	var oCell = oRow.insertCell();
	
	//삽입될 Form Tag
	var waypoint = '<input type="text" value="" onclick="search4()" id="w-addr'+ index5 + '" placeholder="경유지를 입력하세요"><input type="time" value="" class="w-time'+ index5 + '" placeholder="아침 8:00"><input type="hidden" value="" class="w-lat'+ index5 + '"><input type="hidden" value="" class="w-lng'+ index5 + '"><img style="display:inline;" class="id-btn" src="assets/images/ico_minus.png" onClick="remove5()">';
	
	oCell.innerHTML = waypoint;
	
}
function remove() {
	try {
		oTbl.deleteRow(oTbl.clickedRowIndex);
		index--;
	} catch(TypeError) {
	}
	console.log(index);
	if (index >= 5) {
		$(".s-sec").attr("style", "height:470px;");
	} else if (index == 1) {
		$(".s-sec").attr("style", "height:270px;");
	} else if (index == 2) {
		$(".s-sec").attr("style", "height:320px;");
	} else if (index == 3) {
		$(".s-sec").attr("style", "height:370px;");
	} else if (index == 4) {
		$(".s-sec").attr("style", "height:420px;");
	}
}
function remove2() {
	try {
		oTbl2.deleteRow(oTbl2.clickedRowIndex);
		index2--;
	} catch(TypeError) {
	}
	if (index2 >= 15) {
		$(".s-sec2").attr("style", "height:470px;");
	} else if (index2 == 11) {
		$(".s-sec2").attr("style", "height:270px;");
	} else if (index2 == 12) {
		$(".s-sec2").attr("style", "height:320px;");
	} else if (index2 == 13) {
		$(".s-sec2").attr("style", "height:370px;");
	} else if (index2 == 14) {
		$(".s-sec2").attr("style", "height:420px;");
	}
}
function remove3() {
	try {
		oTbl3.deleteRow(oTbl3.clickedRowIndex);
		index3--;
	} catch(TypeError) {
	}
	if (index3 >= 25) {
		$(".s-sec3").attr("style", "height:420px;");
	} else if (index3 == 21) {
		$(".s-sec3").attr("style", "height:220px;");
	} else if (index3 == 22) {
		$(".s-sec3").attr("style", "height:270px;");
	} else if (index3 == 23) {
		$(".s-sec3").attr("style", "height:320px;");
	} else if (index3 == 24) {
		$(".s-sec3").attr("style", "height:370px;");
	}
}
function remove4() {
	try {
		oTbl4.deleteRow(oTbl4.clickedRowIndex);
		index4--;
	} catch(TypeError) {
	}
	if (index4 >= 35) {
		$(".s-sec4").attr("style", "height:420px;");
	} else if (index4 == 31) {
		$(".s-sec4").attr("style", "height:220px;");
	} else if (index4 == 32) {
		$(".s-sec4").attr("style", "height:270px;");
	} else if (index4 == 33) {
		$(".s-sec4").attr("style", "height:320px;");
	} else if (index4 == 34) {
		$(".s-sec4").attr("style", "height:370px;");
	}
}
function remove5() {
	try {
		oTbl5.deleteRow(oTbl5.clickedRowIndex);
		index5--;
	} catch(TypeError) {
	}
	if (index5 >= 45) {
		$(".s-sec5").attr("style", "height:420px;");
	} else if (index5 == 41) {
		$(".s-sec5").attr("style", "height:220px;");
	} else if (index5 == 42) {
		$(".s-sec5").attr("style", "height:270px;");
	} else if (index5 == 43) {
		$(".s-sec5").attr("style", "height:320px;");
	} else if (index5 == 44) {
		$(".s-sec5").attr("style", "height:370px;");
	}
}
function search() {
	window.open("swp"+oTbl.clickedRowIndex, "child", "width=1350, height=820, left=300, top=100");
}
function search1() {
	window.open("swp1"+oTbl2.clickedRowIndex, "child", "width=1350, height=820, left=300, top=100");
}
function search2() {
	window.open("swp2"+oTbl3.clickedRowIndex, "child", "width=1350, height=820, left=300, top=100");
}
function search3() {
	window.open("swp3"+oTbl4.clickedRowIndex, "child", "width=1350, height=820, left=300, top=100");
}
function search4() {
	window.open("swp4"+oTbl5.clickedRowIndex, "child", "width=1350, height=820, left=300, top=100");
=======
>>>>>>> branch 'master' of https://github.com/ljk0071/spotmate2.git
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


<<<<<<< HEAD
function finish() {
	if($(".s-lat").val() == "" || $(".s-lng").val() == "" || $(".e-lat").val() == "" || $(".e-lng").val() == "") {
=======
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
>>>>>>> branch 'master' of https://github.com/ljk0071/spotmate2.git
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
<<<<<<< HEAD
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
=======
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
>>>>>>> branch 'master' of https://github.com/ljk0071/spotmate2.git
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
<<<<<<< HEAD
function finish2() {
	if($(".s-lat2").val() == "" || $(".s-lng2").val() == "" || $(".e-lat2").val() == "" || $(".e-lng2").val() == "") {
		alert("검색 후에 시도해주세요");
		return;
	}
	var latlng = "";
	var splace2 = $(".mate-s-addr2").val();
	var eplace2 = $(".mate-e-addr2").val();
	var w12p = $("#w-addr12").val();
	var w13p = $("#w-addr13").val();
	var w14p = $("#w-addr14").val();
	var w15p = $("#w-addr15").val();
	var w16p = $("#w-addr16").val();
	var slat2 = $(".s-lat2").val();
	var slng2 = $(".s-lng2").val();
	var w12lat = $(".w-lat12").val();
	var w12lng = $(".w-lng12").val();
	var w13lat = $(".w-lat13").val();
	var w13lng = $(".w-lng13").val();
	var w14lat = $(".w-lat14").val();
	var w14lng = $(".w-lng14").val();
	var w15lat = $(".w-lat15").val();
	var w15lng = $(".w-lng15").val();
	var w16lat = $(".w-lat16").val();
	var w16lng = $(".w-lng16").val();
	var elat2 = $(".e-lat2").val();
	var elng2 = $(".e-lng2").val();
	$.ajax({
		url : "${pageContext.request.contextPath}/setWayPath2",		
		type : "post",
		contentType : "application/json",
		data : JSON.stringify({slat2: slat2,
			slng2: slng2,
			elat2: elat2,
			elng2: elng2,
			w12lat: w12lat,
			w12lng: w12lng,
			w13lat: w13lat,
			w13lng: w13lng,
			w14lat: w14lat,
			w14lng: w14lng,
			w15lat: w15lat,
			w15lng: w15lng,
			w16lat: w16lat,
			w16lng: w16lng,
			splace2: splace2,
			eplace2: eplace2,
			w12p: w12p,
			w13p: w13p,
			w14p: w14p,
			w15p: w15p,
			w16p: w16p}),

		dataType : "json",
		success : function(result){
			$("#map2").attr("style","width:720px; height: 300px; margin:0px 0px 100px 0px;");
			$(".fare2").remove();
			$(".dur2").remove();
			$(".dis2").remove();
			document.getElementsByClassName("mate-s-addr2")[0].value = splace2;
			document.getElementsByClassName("mate-e-addr2")[0].value = eplace2;
			document.getElementById("w-addr12").value = w12p;
			document.getElementById("w-addr13").value = w13p;
			document.getElementById("w-addr14").value = w14p;
			document.getElementById("w-addr15").value = w15p;
			document.getElementById("w-addr16").value = w16p;
			var bounds = new kakao.maps.LatLngBounds();
			bounds.extend(new kakao.maps.LatLng(slat2, slng2));
			bounds.extend(new kakao.maps.LatLng(elat2, elng2));
			latlng = result;
			document.getElementById("latlng2").value = latlng.toString();
			var mapContainer = document.getElementById('map2'), // 지도를 표시할 div 
			mapOption = { 
			    center: new kakao.maps.LatLng(slat2, slng2), // 지도의 중심좌표
			    level: 4 // 지도의 확대 레벨
			};  
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			map.setBounds(bounds);
			
			var positions = [
				{
					latlng: new kakao.maps.LatLng(slat2, slng2)
				},
				{
					latlng: new kakao.maps.LatLng(w12lat, w12lng)
				},
				{
					latlng: new kakao.maps.LatLng(w13lat, w13lng)
				},
				{
					latlng: new kakao.maps.LatLng(w14lat, w14lng)
				},
				{
					latlng: new kakao.maps.LatLng(w15lat, w15lng)
				},
				{
					latlng: new kakao.maps.LatLng(w16lat, w16lng)
				},
				{
					latlng: new kakao.maps.LatLng(elat2, elng2)
				}
			];
			
			for (var i=0;i<positions.length;i++) {
				var imageSrc = '/assets/images/common/android-icon-36x36.png', // 마커이미지의 주소입니다    
				imageSize = new kakao.maps.Size(36, 36); // 마커이미지의 크기입니다
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
				new kakao.maps.LatLng(slat2, slng2),
				];
			for (var i=0; i<latlng.length; i++) {
					if (i == latlng.length) {
						linePath.push(new kakao.maps.LatLng(elat2,elng2));
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
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
}
=======
>>>>>>> branch 'master' of https://github.com/ljk0071/spotmate2.git
</script>
</html>