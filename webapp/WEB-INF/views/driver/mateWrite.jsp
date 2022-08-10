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
		<div class="mid">
			<form action="/mateWriteOk" method="post">
				<p>등록하신 날짜와 출발시간입니다.</p>
				<div class="f-sec">
					<span>출발 날짜</span><input type="date" name="sdate" value="" id="mate-s-date">
					<br>
					<span>도착 날짜</span><input type="date" name="edate" value="" id="mate-e-date">
				</div>
				<div id="s-sec-box">
					<div class="s-sec">
						<div>
							<span>일정을 추가하려면 눌러주세요</span>
							<img class="ia-btn2" src="assets/images/ico_add.png" onclick="add()">
						</div>
						<p>드라이버님의 1일차 이동 경로를 입력해주세요*</p>

						<div id="input-div">
							<img class="mate-img" src="assets/images/map_line_03.png">
							<table id="addTable">
								<tr>
									<td>
										<input type="text" value="" id="s-addr" class="mate-s-addr" placeholder="출발지를 입력하세요" onclick="ssp()">
										<input type="text" value="" class="mate-s-time" placeholder="아침 8:00">
										<img class="ia-btn" src="assets/images/ico_add.png" onclick="insRow()">
									</td>
									<td><input type="hidden" value="" class="s-lat"></td>
									<td><input type="hidden" value="" class="s-lng"></td>
								</tr>
								<tr class="mate-e-addr-tr">
									<td>
										<input type="text" value="" id="e-addr" class="mate-e-addr" placeholder="도착지를 입력하세요" onclick="sep()">
										<img class="mate-ic-btn" src="assets/images/ico_close.png">
									</td>
									<td><input type="hidden" value="" class="e-lat"></td>
									<td><input type="hidden" value="" class="e-lng"></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<div class="t-sec">
					<p>탑승 가능한 인원 수*</p>
					<input type="number" min=1 placeholder="1명">
					<p>차량 상세조건</p>
					<table>
						<tr>
							<td><input type="checkbox" id="smoke" name="smoke"
								value="nosmoke"><label for="smoke">비흡연자</label></td>
							<td><input class="td2" type="checkbox" id="phonecharge"
								name="phonecharge" value="phonecharge"><label
								for="phonecharge">핸드폰 충전기 이용 가능</label></td>
						</tr>
						<tr>
							<td><input type="checkbox" name="wifi" id="wifi"
								value="wifi"><label for="wifi">차량 와이파이 이용 가능</label></td>
							<td><input class="td2" type="checkbox" id="silence"
								name="silence" value="silence"><label for="silence">조용하게
									가는 것을 선호</label></td>
						</tr>
						<tr>
							<td><input type="checkbox" id="drivergender"
								name="drivergender" value="female"><label
								for="drivergender">여성 드라이버</label></td>
							<td><input class="td2" type="checkbox" id="pet" name="pet"
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
var index = 1;
var index1 = 11;
var index2 = 2;
var index3 = 21;
var index4 = 31;
var index5 = 41;
var oTbl;

function add() {
	if (index2 >= 6) {
		alert("여행 일자는 5일 이상 추가할 수 없습니다.");
		index2 = 6;
		return;
	}
	document.getElementById("s-sec-box").innerHTML += '<div class="s-sec'+index2+'"><div><img class="ia-btn2" onclick="add()" src="assets/images/ico_add.png"></div><p>드라이버님의 '+index2+'일차 이동 경로를 입력해주세요*</p><div id="input-div"><img class="mate-img" src="assets/images/map_line_03.png"><table id="addTable'+index2+'" style="display:inline;"><tr><td><input type="text" onclick="ssp'+index2+'()" value="" class="mate-s-addr'+index2+'" placeholder="출발지를 입력하세요"><input type="text" value="" class="mate-s-time'+index2+'" placeholder="아침 8:00"><img class="ia-btn" src="assets/images/ico_add.png" onclick="insRow'+index2+'()"></td><td><input type="hidden" value="" class="s-lat'+index2+'"></td><td><input type="hidden" value="" class="s-lng'+index2+'"></td></tr><tr class="mate-e-addr-tr"><td><input type="text" value="" class="mate-e-addr'+index2+'" placeholder="도착지를 입력하세요" onclick="sep'+index2+'()"><img class="mate-ic-btn'+index2+'" src="assets/images/ico_close.png"></td><td><input type="hidden" value="" class="e-lat'+index2+'"></td><td><input type="hidden" value="" class="e-lng'+index2+'"></td></tr></table></div></div>';
	index2++;
}
function insRow() {
	
	if (index >= 6) {
		alert("경유지는 5개 이상 추가할 수 없습니다.");
		index = 6;
		return;
	}
	index++;
	if (index == 2) {
		$(".s-sec").attr("style", "height:270px;");
	} else if (index == 3) {
		$(".s-sec").attr("style", "height:320px;");
	} else if (index == 4) {
		$(".s-sec").attr("style", "height:370px;");
	} else if (index == 5) {
		$(".s-sec").attr("style", "height:420px;");
	} else if (index == 6) {
		$(".s-sec").attr("style", "height:470px;");
	}
	
	oTbl = document.getElementById("addTable");
	var oRow = oTbl.insertRow();
	oRow.onmouseover=function(){oTbl.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
	var oCell = oRow.insertCell();
	
	//삽입될 Form Tag
	var waypoint = '<input type="text" value="" onclick="search()" class="w-addr'+ index + '" placeholder="경유지를 입력하세요"><input type="text" value="" class="w-time'+ index + '" placeholder="아침 8:00"><input type="hidden" value="" class="w-lat'+ index + '"><input type="hidden" value="" class="w-lng'+ index + '"><img style="display:inline;" class="id-btn" src="assets/images/ico_minus.png" onClick="remove()">';
	
	oCell.innerHTML = waypoint;
	
}
function insRow2() {
	
	if (index1 >= 16) {
		alert("경유지는 5개 이상 추가할 수 없습니다.");
		index1 = 16;
		return;
	}
	index1++;
	if (index1 == 12) {
		$(".s-sec2").attr("style", "height:270px;");
	} else if (index1 == 13) {
		$(".s-sec2").attr("style", "height:320px;");
	} else if (index1 == 14) {
		$(".s-sec2").attr("style", "height:370px;");
	} else if (index1 == 15) {
		$(".s-sec2").attr("style", "height:420px;");
	} else if (index1 == 16) {
		$(".s-sec2").attr("style", "height:470px;");
	}
	
	oTbl = document.getElementById("addTable2");
	var oRow = oTbl.insertRow();
	oRow.onmouseover=function(){oTbl.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
	var oCell = oRow.insertCell();
	
	//삽입될 Form Tag
	var waypoint = '<input type="text" value="" onclick="search1()" class="w-addr'+ index1 + '" placeholder="경유지를 입력하세요"><input type="text" value="" class="w-time'+ index1 + '" placeholder="아침 8:00"><input type="hidden" value="" class="w-lat'+ index1 + '"><input type="hidden" value="" class="w-lng'+ index1 + '"><img style="display:inline;" class="id-btn" src="assets/images/ico_minus.png" onClick="remove1()">';
	
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
	
	oTbl = document.getElementById("addTable3");
	var oRow = oTbl.insertRow();
	oRow.onmouseover=function(){oTbl.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
	var oCell = oRow.insertCell();
	
	//삽입될 Form Tag
	var waypoint = '<input type="text" value="" onclick="search2()" class="w-addr'+ index3 + '" placeholder="경유지를 입력하세요"><input type="text" value="" class="w-time'+ index3 + '" placeholder="아침 8:00"><input type="hidden" value="" class="w-lat'+ index3 + '"><input type="hidden" value="" class="w-lng'+ index3 + '"><img style="display:inline;" class="id-btn" src="assets/images/ico_minus.png" onClick="remove2()">';
	
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
	
	oTbl = document.getElementById("addTable4");
	var oRow = oTbl.insertRow();
	oRow.onmouseover=function(){oTbl.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
	var oCell = oRow.insertCell();
	
	//삽입될 Form Tag
	var waypoint = '<input type="text" value="" onclick="search3()" class="w-addr'+ index4 + '" placeholder="경유지를 입력하세요"><input type="text" value="" class="w-time'+ index4 + '" placeholder="아침 8:00"><input type="hidden" value="" class="w-lat'+ index4 + '"><input type="hidden" value="" class="w-lng'+ index4 + '"><img style="display:inline;" class="id-btn" src="assets/images/ico_minus.png" onClick="remove3()">';
	
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
	
	oTbl = document.getElementById("addTable5");
	var oRow = oTbl.insertRow();
	oRow.onmouseover=function(){oTbl.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
	var oCell = oRow.insertCell();
	
	//삽입될 Form Tag
	var waypoint = '<input type="text" value="" onclick="search4()" class="w-addr'+ index5 + '" placeholder="경유지를 입력하세요"><input type="text" value="" class="w-time'+ index5 + '" placeholder="아침 8:00"><input type="hidden" value="" class="w-lat'+ index5 + '"><input type="hidden" value="" class="w-lng'+ index5 + '"><img style="display:inline;" class="id-btn" src="assets/images/ico_minus.png" onClick="remove4()">';
	
	oCell.innerHTML = waypoint;
	
}
function remove() {
	index--;
	try {
		oTbl.deleteRow(oTbl.clickedRowIndex);
	} catch(TypeError) {
	}
	if (index >= 6) {
		$(".s-sec").attr("style", "height:420px;");
	} else if (index == 2 || index == 1) {
		$(".s-sec").attr("style", "height:220px;");
	} else if (index == 3) {
		$(".s-sec").attr("style", "height:270px;");
	} else if (index == 4) {
		$(".s-sec").attr("style", "height:320px;");
	} else if (index == 5) {
		$(".s-sec").attr("style", "height:370px;");
	}
}
function remove1() {
	index1--;
	try {
		oTbl.deleteRow(oTbl.clickedRowIndex);
	} catch(TypeError) {
	}
	if (index1 >= 16) {
		$(".s-sec1").attr("style", "height:420px;");
	} else if (index1 == 12 || index1 == 11) {
		$(".s-sec1").attr("style", "height:220px;");
	} else if (index1 == 13) {
		$(".s-sec1").attr("style", "height:270px;");
	} else if (index1 == 14) {
		$(".s-sec1").attr("style", "height:320px;");
	} else if (index1 == 15) {
		$(".s-sec1").attr("style", "height:370px;");
	}
}
function remove2() {
	index3--;
	try {
		oTbl.deleteRow(oTbl.clickedRowIndex);
	} catch(TypeError) {
	}
	if (index3 >= 26) {
		$(".s-sec3").attr("style", "height:420px;");
	} else if (index3 == 22) {
		$(".s-sec3").attr("style", "height:220px;");
	} else if (index3 == 23) {
		$(".s-sec3").attr("style", "height:270px;");
	} else if (index3 == 24) {
		$(".s-sec3").attr("style", "height:320px;");
	} else if (index3 == 25) {
		$(".s-sec3").attr("style", "height:370px;");
	}
}
function remove3() {
	index4--;
	try {
		oTbl.deleteRow(oTbl.clickedRowIndex);
	} catch(TypeError) {
	}
	if (index4 >= 36) {
		$(".s-sec4").attr("style", "height:420px;");
	} else if (index4 == 32) {
		$(".s-sec4").attr("style", "height:220px;");
	} else if (index4 == 33) {
		$(".s-sec4").attr("style", "height:270px;");
	} else if (index4 == 34) {
		$(".s-sec4").attr("style", "height:320px;");
	} else if (index4 == 35) {
		$(".s-sec4").attr("style", "height:370px;");
	}
}
function remove4() {
	index5--;
	try {
		oTbl.deleteRow(oTbl.clickedRowIndex);
	} catch(TypeError) {
	}
	if (index5 >= 46) {
		$(".s-sec5").attr("style", "height:420px;");
	} else if (index5 == 42) {
		$(".s-sec5").attr("style", "height:220px;");
	} else if (index5 == 43) {
		$(".s-sec5").attr("style", "height:270px;");
	} else if (index5 == 44) {
		$(".s-sec5").attr("style", "height:320px;");
	} else if (index5 == 45) {
		$(".s-sec5").attr("style", "height:370px;");
	}
}
function search() {
	window.open("swp"+oTbl.clickedRowIndex, "child", "width=1350, height=820, left=300, top=100");
}
function search1() {
	window.open("swp1"+oTbl.clickedRowIndex, "child", "width=1350, height=820, left=300, top=100");
}
function search2() {
	window.open("swp2"+oTbl.clickedRowIndex, "child", "width=1350, height=820, left=300, top=100");
}
function search3() {
	window.open("swp3"+oTbl.clickedRowIndex, "child", "width=1350, height=820, left=300, top=100");
}
function search4() {
	window.open("swp4"+oTbl.clickedRowIndex, "child", "width=1350, height=820, left=300, top=100");
}

$(".mate-ic-btn").on("click", function() {
	$(".mate-s-addr").val("");
	$(".s-lat").val("");
	$(".s-lng").val("");
	$(".w-addr2").val("");
	$(".w-lat2").val("");
	$(".w-lng2").val("");
	$(".w-addr3").val("");
	$(".w-lat3").val("");
	$(".w-lng3").val("");
	$(".w-addr4").val("");
	$(".w-lat4").val("");
	$(".w-lng4").val("");
	$(".w-addr5").val("");
	$(".w-lat5").val("");
	$(".w-lng5").val("");
	$(".w-addr6").val("");
	$(".w-lat6").val("");
	$(".w-lng6").val("");
	$(".mate-e-addr").val("");
	$(".e-lat").val("");
	$(".e-lng").val("");
})
$(".mate-ic-btn2").on("click", function() {
	$(".mate-s-addr2").val("");
	$(".s-lat").val("");
	$(".s-lng").val("");
	$(".w-addr12").val("");
	$(".w-lat12").val("");
	$(".w-lng12").val("");
	$(".w-addr13").val("");
	$(".w-lat13").val("");
	$(".w-lng13").val("");
	$(".w-addr14").val("");
	$(".w-lat14").val("");
	$(".w-lng14").val("");
	$(".w-addr15").val("");
	$(".w-lat15").val("");
	$(".w-lng15").val("");
	$(".w-addr16").val("");
	$(".w-lat16").val("");
	$(".w-lng16").val("");
	$(".mate-e-addr2").val("");
	$(".e-lat2").val("");
	$(".e-lng2").val("");
})
$(".mate-ic-btn3").on("click", function() {
	$(".mate-s-addr3").val("");
	$(".s-lat3").val("");
	$(".s-lng3").val("");
	$(".w-addr22").val("");
	$(".w-lat22").val("");
	$(".w-lng22").val("");
	$(".w-addr23").val("");
	$(".w-lat23").val("");
	$(".w-lng23").val("");
	$(".w-addr24").val("");
	$(".w-lat24").val("");
	$(".w-lng24").val("");
	$(".w-addr25").val("");
	$(".w-lat25").val("");
	$(".w-lng25").val("");
	$(".w-addr26").val("");
	$(".w-lat26").val("");
	$(".w-lng26").val("");
	$(".mate-e-addr3").val("");
	$(".e-lat3").val("");
	$(".e-lng3").val("");
})
$(".mate-ic-btn4").on("click", function() {
	$(".mate-s-addr4").val("");
	$(".s-lat4").val("");
	$(".s-lng4").val("");
	$(".w-addr32").val("");
	$(".w-lat32").val("");
	$(".w-lng32").val("");
	$(".w-addr33").val("");
	$(".w-lat33").val("");
	$(".w-lng33").val("");
	$(".w-addr34").val("");
	$(".w-lat34").val("");
	$(".w-lng34").val("");
	$(".w-addr35").val("");
	$(".w-lat35").val("");
	$(".w-lng35").val("");
	$(".w-addr36").val("");
	$(".w-lat36").val("");
	$(".w-lng36").val("");
	$(".mate-e-addr4").val("");
	$(".e-lat4").val("");
	$(".e-lng4").val("");
})
$(".mate-ic-btn5").on("click", function() {
	$(".mate-s-addr5").val("");
	$(".s-lat5").val("");
	$(".s-lng5").val("");
	$(".w-addr42").val("");
	$(".w-lat42").val("");
	$(".w-lng42").val("");
	$(".w-addr43").val("");
	$(".w-lat43").val("");
	$(".w-lng43").val("");
	$(".w-addr44").val("");
	$(".w-lat44").val("");
	$(".w-lng44").val("");
	$(".w-addr45").val("");
	$(".w-lat45").val("");
	$(".w-lng45").val("");
	$(".w-addr46").val("");
	$(".w-lat46").val("");
	$(".w-lng46").val("");
	$(".mate-e-addr5").val("");
	$(".e-lat5").val("");
	$(".e-lng5").val("");
})
function ssp() {
	window.open("ssp", "child", "width=1350, height=820, left=1000, top=50");
}
function ssp2() {
	window.open("ssp2", "child", "width=1350, height=820, left=1000, top=50");
}
function ssp3() {
	window.open("ssp3", "child", "width=1350, height=820, left=1000, top=50");
}
function ssp4() {
	window.open("ssp4", "child", "width=1350, height=820, left=1000, top=50");
}
function ssp5() {
	window.open("ssp5", "child", "width=1350, height=820, left=1000, top=50");
}
function sep() {
	window.open("sep", "child", "width=1350, height=820, left=1000, top=50");
}
function sep2() {
	window.open("sep2", "child", "width=1350, height=820, left=1000, top=50");
}
function sep3() {
	window.open("sep3", "child", "width=1350, height=820, left=1000, top=50");
}
function sep4() {
	window.open("sep4", "child", "width=1350, height=820, left=1000, top=50");
}
function sep5() {
	window.open("sep5", "child", "width=1350, height=820, left=1000, top=50");
}


</script>
</html>