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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c6544d76c3912585c75cfd126a875faf&libraries=services,clusterer,drawing"></script>
<script src="/assets/jqueryUi/jquery-ui.js"></script>

<link rel="stylesheet" href="/assets/jqueryUi/jquery-ui.min.css">
<link rel="stylesheet" href="/assets/css/style.css">
</head>
<body>
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<div class="inner">
		<div class="top">
			<div class="clear">
				<img src="/assets/images/ico_boxgift.png">
				
				<div class="matedesc">
					<span>Mate 등록시</span>
					<p>예상 적립 포인트는 ${mwVo.totalFare}입니다.</p>
				</div>
			</div>
			<ul>
				<li>입력해주신 MATE PRODUCT 내용이 맞으시면 등록을 눌러주세요.</li>
			</ul>
		</div>
		<div class="mid">
			<form action="/mateWriteInsert" method="post">
				<p>등록하신 날짜와 출발시간입니다.</p>
				<div class="f-sec">
					<input type="text" id="mate-s-date" value="${mwVo.sdate1} ~ ${mwVo.edate1}" readonly>
				</div>
				<input type="hidden" name="sdate1" value="${mwVo.sdate1}">
				<input type="hidden" name="edate1" value="${mwVo.edate1}">
				<input type="hidden" name="type" value="mate">
				<input type="hidden" name="intfare" value="${mwVo.intfare}">
				<div id="s-sec-box">
					<div class="s-sec1">
						<div>
							<p>드라이버님의 1일차 이동 경로를 확인해주세요</p>
						</div>
						<div id="input-div1">
							<img class="mate-img" src="assets/images/map_line_03.png">
							<table id="addTable1">
								<tr>
									<td>
										<input type="text" name="splace1" value="${mwVo.splace1}" id="s-addr1" class="mate-s-addr1">
										<input type="text" value="${mwVo.stime1}" id="s-time1" class="mate-s-time1">
										<input type="hidden" value="${mwVo.stime1}" name="stime1" id="stime1">
									</td>
									<td><input type="hidden" name="slat1" value="${mwVo.slat1}" class="s-lat1"></td>
									<td><input type="hidden" name="slng1" value="${mwVo.slng1}" class="s-lng1"></td>
									<td><input type="hidden" value="" name="day1" id="day1"></td>
								</tr>
								<tr class="mate-e-addr-tr">
									<td>
										<input type="text" name="eplace1" value="${mwVo.eplace1}" id="e-addr1" class="mate-e-addr1">
									</td>
									<td><input type="hidden" name="elat1" value="${mwVo.elat1}" class="e-lat1"></td>
									<td><input type="hidden" name="elng1" value="${mwVo.elng1}" class="e-lng1"></td>
									<td><input type="hidden" name="latlng1" value="${mwVo.latlng1}" id="latlng1"></td>
								</tr>
								<c:if test="${mwVo.wplace11 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace11}" name="wplace11" id="w-addr11">
									<input type="text" value="${mwVo.wtime11}" name="wtime11" id="w-time11"></td>
									<td><input type="hidden" value="${mwVo.wlat11}" name="wlat11" class="w-lat11"></td>
									<td><input type="hidden" value="${mwVo.wlng11}" name="wlng11" class="w-lng11"></td>
								</tr>
								</c:if>
								<c:if test="${mwVo.wplace12 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace12}" name="wplace12" id="w-addr12">
									<input type="text" value="${mwVo.wtime12}" name="wtime12" id="w-time12"></td>
									<td><input type="hidden" value="${mwVo.wlat12}" name="wlat12" class="w-lat12"></td>
									<td><input type="hidden" value="${mwVo.wlng12}" name="wlng12" class="w-lng12"></td>
								</tr>
								</c:if>
								<c:if test="${mwVo.wplace13 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace13}" name="wplace13" id="w-addr13">
									<input type="text" value="${mwVo.wtime13}" name="wtime13" id="w-time13"></td>
									<td><input type="hidden" value="${mwVo.wlat13}" name="wlat13" class="w-lat13"></td>
									<td><input type="hidden" value="${mwVo.wlng13}" name="wlng13" class="w-lng13"></td>
								</tr>
								</c:if>
								<c:if test="${mwVo.wplace14 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace14}" name="wplace14" id="w-addr14">
									<input type="text" value="${mwVo.wtime14}" name="wtime14" id="w-time14"></td>
									<td><input type="hidden" value="${mwVo.wlat14}" name="wlat14" class="w-lat14"></td>
									<td><input type="hidden" value="${mwVo.wlng14}" name="wlng14" class="w-lng14"></td>
								</tr>
								</c:if>
								<c:if test="${mwVo.wplace15 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace15}" name="wplace15" id="w-addr15">
									<input type="text" value="${mwVo.wtime15}" name="wtime15" id="w-time15"></td>
									<td><input type="hidden" value="${mwVo.wlat15}" name="wlat15" class="w-lat15"></td>
									<td><input type="hidden" value="${mwVo.wlng15}" name="wlng15" class="w-lng15"></td>
								</tr>
								</c:if>
							</table>
							<div class='fare1'>1인당 적립 포인트:${mwVo.fare1}</div>
						<div id="map1"></div>
						</div>
					</div>
					<c:if test="${mwVo.splace2 != null}">
					<div class="s-sec2">
						<div>
							<p>드라이버님의 2일차 이동 경로를 확인해주세요</p>
						</div>
						<div id="input-div2">
							<img class="mate-img" src="assets/images/map_line_03.png">
							<table id="addTable2">
								<tr>
									<td>
										<input type="text" name="splace2" value="${mwVo.splace2}" id="s-addr2" class="mate-s-addr2">
										<input type="text" value="${mwVo.stime2}" id="s-time2" class="mate-s-time2">
										<input type="hidden" value="${mwVo.stime2}" name="stime2" id="stime2">
									</td>
									<td><input type="hidden" name="slat2" value="${mwVo.slat2}" class="s-lat2"></td>
									<td><input type="hidden" name="slng2" value="${mwVo.slng2}" class="s-lng2"></td>
									<td><input type="hidden" value="" name="day2" id="day2"></td>
								</tr>
								<tr class="mate-e-addr-tr">
									<td>
										<input type="text" name="eplace2" value="${mwVo.eplace2}" id="e-addr2" class="mate-e-addr2">
									</td>
									<td><input type="hidden" name="elat2" value="${mwVo.elat2}" class="e-lat2"></td>
									<td><input type="hidden" name="elng2" value="${mwVo.elng2}" class="e-lng2"></td>
									<td><input type="hidden" name="latlng2" value="${mwVo.latlng2}" id="latlng2"></td>
								</tr>
								<c:if test="${mwVo.wplace21 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace21}" name="wplace21" id="w-addr21">
									<input type="text" value="${mwVo.wtime21}" name="wtime21" id="w-time21"></td>
									<td><input type="hidden" value="${mwVo.wlat21}" name="wlat21" class="w-lat21"></td>
									<td><input type="hidden" value="${mwVo.wlng21}" name="wlng21" class="w-lng21"></td>
								</tr>
								</c:if>
								<c:if test="${mwVo.wplace22 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace22}" name="wplace22" id="w-addr22">
									<input type="text" value="${mwVo.wtime22}" name="wtime22" id="w-time22"></td>
									<td><input type="hidden" value="${mwVo.wlat22}" name="wlat22" class="w-lat22"></td>
									<td><input type="hidden" value="${mwVo.wlng22}" name="wlng22" class="w-lng22"></td>
								</tr>
								</c:if>
								<c:if test="${mwVo.wplace23 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace23}" name="wplace23" id="w-addr23">
									<input type="text" value="${mwVo.wtime23}" name="wtime23" id="w-time23"></td>
									<td><input type="hidden" value="${mwVo.wlat23}" name="wlat23" class="w-lat23"></td>
									<td><input type="hidden" value="${mwVo.wlng23}" name="wlng23" class="w-lng23"></td>
								</tr>
								</c:if>
								<c:if test="${mwVo.wplace24 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace24}" name="wplace24" id="w-addr24">
									<input type="text" value="${mwVo.wtime24}" name="wtime24" id="w-time24"></td>
									<td><input type="hidden" value="${mwVo.wlat24}" name="wlat24" class="w-lat24"></td>
									<td><input type="hidden" value="${mwVo.wlng24}" name="wlng24" class="w-lng24"></td>
								</tr>
								</c:if>
								<c:if test="${mwVo.wplace25 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace25}" name="wplace25" id="w-addr25">
									<input type="text" value="${mwVo.wtime25}" name="wtime25" id="w-time25"></td>
									<td><input type="hidden" value="${mwVo.wlat25}" name="wlat25" class="w-lat25"></td>
									<td><input type="hidden" value="${mwVo.wlng25}" name="wlng25" class="w-lng25"></td>
								</tr>
								</c:if>
							</table>
							<div class='fare2'>1인당 적립 포인트:${mwVo.fare2}</div>
						<div id="map2"></div>
						</div>
					</div>
					</c:if>
					<c:if test="${mwVo.splace3 != null}">
					<div class="s-sec3">
						<div>
							<p>드라이버님의 3일차 이동 경로를 확인해주세요</p>
						</div>
						<div id="input-div3">
							<img class="mate-img" src="assets/images/map_line_03.png">
							<table id="addTable3">
								<tr>
									<td>
										<input type="text" name="splace3" value="${mwVo.splace3}" id="s-addr3" class="mate-s-addr3">
										<input type="text" value="${mwVo.stime3}" id="s-time3" class="mate-s-time3">
										<input type="hidden" value="${mwVo.stime3}" name="stime3" id="stime3">
									</td>
									<td><input type="hidden" name="slat3" value="${mwVo.slat3}" class="s-lat3"></td>
									<td><input type="hidden" name="slng3" value="${mwVo.slng3}" class="s-lng3"></td>
									<td><input type="hidden" value="" name="day3" id="day3"></td>
								</tr>
								<tr class="mate-e-addr-tr">
									<td>
										<input type="text" name="eplace3" value="${mwVo.eplace3}" id="e-addr3" class="mate-e-addr3">
									</td>
									<td><input type="hidden" name="elat3" value="${mwVo.elat3}" class="e-lat3">
									<input type="hidden" name="elng3" value="${mwVo.elng3}" class="e-lng3"></td>
									<td><input type="hidden" name="latlng3" value="${mwVo.latlng3}" id="latlng3"></td>
								</tr>
								<c:if test="${mwVo.wplace31 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace31}" name="wplace31" id="w-addr31">
									<input type="text" value="${mwVo.wtime31}" name="wtime31" id="w-time31"></td>
									<td><input type="hidden" value="${mwVo.wlat31}" name="wlat31" class="w-lat31"></td>
									<td><input type="hidden" value="${mwVo.wlng31}" name="wlng31" class="w-lng31"></td>
								</tr>
								</c:if>
								<c:if test="${mwVo.wplace32 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace32}" name="wplace32" id="w-addr32">
									<input type="text" value="${mwVo.wtime32}" name="wtime32" id="w-time32"></td>
									<td><input type="hidden" value="${mwVo.wlat32}" name="wlat32" class="w-lat32"></td>
									<td><input type="hidden" value="${mwVo.wlng32}" name="wlng32" class="w-lng32"></td>
								</tr>
								</c:if>
								<c:if test="${mwVo.wplace33 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace33}" name="wplace33" id="w-addr33">
									<input type="text" value="${mwVo.wtime33}" name="wtime33" id="w-time33"></td>
									<td><input type="hidden" value="${mwVo.wlat33}" name="wlat33" class="w-lat33"></td>
									<td><input type="hidden" value="${mwVo.wlng33}" name="wlng33" class="w-lng33"></td>
								</tr>
								</c:if>
								<c:if test="${mwVo.wplace34 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace34}" name="wplace34" id="w-addr34">
									<input type="text" value="${mwVo.wtime34}" name="wtime34" id="w-time34"></td>
									<td><input type="hidden" value="${mwVo.wlat34}" name="wlat34" class="w-lat34"></td>
									<td><input type="hidden" value="${mwVo.wlng34}" name="wlng34" class="w-lng34"></td>
								</tr>
								</c:if>
								<c:if test="${mwVo.wplace35 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace35}" name="wplace35" id="w-addr35">
									<input type="text" value="${mwVo.wtime35}" name="wtime35" id="w-time35"></td>
									<td><input type="hidden" value="${mwVo.wlat35}" name="wlat35" class="w-lat35"></td>
									<td><input type="hidden" value="${mwVo.wlng35}" name="wlng35" class="w-lng35"></td>
								</tr>
								</c:if>
							</table>
							<div class='fare3'>1인당 적립 포인트:${mwVo.fare3}</div>
						<div id="map3"></div>
						</div>
					</div>
					</c:if>
					<c:if test="${mwVo.splace4 != null}">
					<div class="s-sec4">
						<div>
							<p>드라이버님의 4일차 이동 경로를 확인해주세요</p>
						</div>
						<div id="input-div4">
							<img class="mate-img" src="assets/images/map_line_03.png">
							<table id="addTable4">
								<tr>
									<td>
										<input type="text" name="splace4" value="${mwVo.splace4}" id="s-addr4" class="mate-s-addr4">
										<input type="text" value="${mwVo.stime4}" id="s-time4" class="mate-s-time4">
										<input type="hidden" value="${mwVo.stime4}" name="stime4" id="stime4">
									</td>
									<td><input type="hidden" name="slat4" value="${mwVo.slat4}" class="s-lat4"></td>
									<td><input type="hidden" name="slng4" value="${mwVo.slng4}" class="s-lng4"></td>
									<td><input type="hidden" value="" name="day4" id="day4"></td>
								</tr>
								<tr class="mate-e-addr-tr">
									<td>
										<input type="text" name="eplace4" value="${mwVo.eplace4}" id="e-addr4" class="mate-e-addr4">
									</td>
									<td><input type="hidden" name="elat4" value="${mwVo.elat4}" class="e-lat4"></td>
									<td><input type="hidden" name="elng4" value="${mwVo.elng4}" class="e-lng4"></td>
									<td><input type="hidden" name="latlng4" value="${mwVo.latlng4}" id="latlng4"></td>
								</tr>
								<c:if test="${mwVo.wplace41 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace41}" name="wplace41" id="w-addr41">
									<input type="text" value="${mwVo.wtime41}" name="wtime41" id="w-time41"></td>
									<td><input type="hidden" value="${mwVo.wlat41}" name="wlat41" class="w-lat41"></td>
									<td><input type="hidden" value="${mwVo.wlng41}" name="wlng41" class="w-lng41"></td>
								</tr>
								</c:if>
								<c:if test="${mwVo.wplace42 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace42}" name="wplace42" id="w-addr42">
									<input type="text" value="${mwVo.wtime42}" name="wtime42" id="w-time42"></td>
									<td><input type="hidden" value="${mwVo.wlat42}" name="wlat42" class="w-lat42"></td>
									<td><input type="hidden" value="${mwVo.wlng42}" name="wlng42" class="w-lng42"></td>
								</tr>
								</c:if>
								<c:if test="${mwVo.wplace43 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace43}" name="wplace43" id="w-addr43">
									<input type="text" value="${mwVo.wtime43}" name="wtime43" id="w-time43"></td>
									<td><input type="hidden" value="${mwVo.wlat43}" name="wlat43" class="w-lat43"></td>
									<td><input type="hidden" value="${mwVo.wlng43}" name="wlng43" class="w-lng43"></td>
								</tr>
								</c:if>
								<c:if test="${mwVo.wplace44 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace44}" name="wplace44" id="w-addr44">
									<input type="text" value="${mwVo.wtime44}" name="wtime44" id="w-time44"></td>
									<td><input type="hidden" value="${mwVo.wlat44}" name="wlat44" class="w-lat44"></td>
									<td><input type="hidden" value="${mwVo.wlng44}" name="wlng44" class="w-lng44"></td>
								</tr>
								</c:if>
								<c:if test="${mwVo.wplace45 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace45}" name="wplace45" id="w-addr45">
									<input type="text" value="${mwVo.wtime45}" name="wtime45" id="w-time45"></td>
									<td><input type="hidden" value="${mwVo.wlat45}" name="wlat45" class="w-lat45"></td>
									<td><input type="hidden" value="${mwVo.wlng45}" name="wlng45" class="w-lng45"></td>
								</tr>
								</c:if>
							</table>
							<div class='fare4'>1인당 적립 포인트:${mwVo.fare4}</div>
						<div id="map4"></div>
						</div>
					</div>
					</c:if>
					<c:if test="${mwVo.splace5 != null}">
					<div class="s-sec5">
						<div>
							<p>드라이버님의 5일차 이동 경로를 확인해주세요</p>
						</div>
						<div id="input-div5">
							<img class="mate-img" src="assets/images/map_line_03.png">
							<table id="addTable5">
								<tr>
									<td>
										<input type="text" name="splace5" value="${mwVo.splace5}" id="s-addr5" class="mate-s-addr5">
										<input type="text" value="${mwVo.stime5}" id="s-time5" class="mate-s-time5">
										<input type="hidden" value="${mwVo.stime5}" name="stime5" id="stime5">
									</td>
									<td><input type="hidden" name="slat5" value="${mwVo.slat5}" class="s-lat5"></td>
									<td><input type="hidden" name="slng5" value="${mwVo.slng5}" class="s-lng5"></td>
									<td><input type="hidden" value="" name="day5" id="day5"></td>
								</tr>
								<tr class="mate-e-addr-tr">
									<td>
										<input type="text" name="eplace5" value="${mwVo.eplace5}" id="e-addr5" class="mate-e-addr5">
									</td>
									<td><input type="hidden" name="elat5" value="${mwVo.elat5}" class="e-lat5"></td>
									<td><input type="hidden" name="elng5" value="${mwVo.elng5}" class="e-lng5"></td>
									<td><input type="hidden" name="latlng5" value="${mwVo.latlng5}" id="latlng5"></td>
								</tr>
								<c:if test="${mwVo.wplace51 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace51}" name="wplace51" id="w-addr51">
									<input type="text" value="${mwVo.wtime51}" name="wtime51" id="w-time51"></td>
									<td><input type="hidden" value="${mwVo.wlat51}" name="wlat51" class="w-lat51"></td>
									<td><input type="hidden" value="${mwVo.wlng51}" name="wlng51" class="w-lng51"></td>
								</tr>
								</c:if>
								<c:if test="${mwVo.wplace52 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace52}" name="wplace52" id="w-addr52">
									<input type="text" value="${mwVo.wtime52}" name="wtime52" id="w-time52"></td>
									<td><input type="hidden" value="${mwVo.wlat52}" name="wlat52" class="w-lat52"></td>
									<td><input type="hidden" value="${mwVo.wlng52}" name="wlng52" class="w-lng52"></td>
								</tr>
								</c:if>
								<c:if test="${mwVo.wplace53 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace53}" name="wplace53" id="w-addr53">
									<input type="text" value="${mwVo.wtime53}" name="wtime53" id="w-time53"></td>
									<td><input type="hidden" value="${mwVo.wlat53}" name="wlat53" class="w-lat53"></td>
									<td><input type="hidden" value="${mwVo.wlng53}" name="wlng53" class="w-lng53"></td>
								</tr>
								</c:if>
								<c:if test="${mwVo.wplace54 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace54}" name="wplace54" id="w-addr54">
									<input type="text" value="${mwVo.wtime54}" name="wtime54" id="w-time54"></td>
									<td><input type="hidden" value="${mwVo.wlat54}" name="wlat54" class="w-lat54"></td>
									<td><input type="hidden" value="${mwVo.wlng54}" name="wlng54" class="w-lng54"></td>
								</tr>
								</c:if>
								<c:if test="${mwVo.wplace55 != null}">
								<tr>
									<td><input type="text" value="${mwVo.wplace55}" name="wplace55" id="w-addr55">
									<input type="text" value="${mwVo.wtime55}" name="wtime55" id="w-time55"></td>
									<td><input type="hidden" value="${mwVo.wlat55}" name="wlat55" class="w-lat55"></td>
									<td><input type="hidden" value="${mwVo.wlng55}" name="wlng55" class="w-lng55"></td>
								</tr>
								</c:if>
							</table>
							<div class='fare5'>1인당 적립 포인트:${mwVo.fare5}</div>
						<div id="map5"></div>
						</div>
					</div>
					</c:if>
				</div>
				<div class="t-sec">
						<p>탑승 가능한 인원 수</p>
						<input name="people" type="text" value="${mwVo.people}" readonly>
						<p>차량 상세조건</p>
						<table>
							<tr>
							<c:if test="${mwVo.nosmoke != null}">
								<td><div style="background: url(/assets/images/drop-opacity.png); background-repeat: no-repeat; width:30px; height: 30px; float:left;"></div><span>비흡연자</span></td>
								<td><input type="hidden" name="nosmoke" value="${mwVo.nosmoke}"></td>
								</c:if>
								<c:if test="${mwVo.phonecharge != null}">
								<td><div style="background: url(/assets/images/mic.png); background-repeat: no-repeat; width:30px; height: 30px; float:left;"></div><span>핸드폰 충전기 이용 가능</span></td>
								<td><input type="hidden" name="phonecharge" value="${mwVo.phonecharge}"></td>
								</c:if>
							</tr>
							<tr>
							<c:if test="${mwVo.femaledriver != null}">
								<td><div style="background: url(/assets/images/boy.png); background-repeat: no-repeat; width:30px; height: 30px; float:left;"></div><span>여성 드라이버</span></td>
								<td><input type="hidden" name="femaledriver" value="${mwVo.femaledriver}"></td>
								</c:if>
								<c:if test="${mwVo.trunk != null}">
								<td><div style="background: url(/assets/images/wifi.png); background-repeat: no-repeat; width:30px; height: 30px; float:left;"></div><span>트렁크 사용 가능</span></td>
								<td><input type="hidden" name="trunk" value="${mwVo.trunk}"></td>
								</c:if>
							</tr>
							<tr>
								<c:if test="${mwVo.pet != null}">
								<td><div style="background: url(/assets/images/paws01.png); background-repeat: no-repeat; width:30px; height: 30px; float:left;"></div><span>반려동물 탑승 가능</span></td>
								<td><input type="hidden" name="pet" value="${mwVo.pet}"></td>
								</c:if>
							</tr>
						</table>
						<p>드라이버님을 소개해주세요</p>
					<textarea class="introduce" name="introduce" readonly>${mwVo.introduce}</textarea>
					<p>드라이버님이 하고싶은 말을 적어주세요</p>
					<textarea class="comments" name="comments" readonly>${mwVo.comments}</textarea>
					</div>
					<p id="btn-modal">등록하기</p>
    <div id="modal" class="modal-overlay">
        <div class="modal-window">
<!--             <div class="title"> -->
<!--             </div> -->
            <div class="close-area">X</div>
            <div class="content">
                <p>예상 적립 포인트는 +${mwVo.totalFare}입니다.</p>
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
var modal = document.getElementById("modal")
function modalOn() {
    modal.style.animation = "fade-in 0.5s"
    modal.style.display = "flex"
}
function isModalOn() {
    return modal.style.display === "flex"
}
function modalOff() {
   	modal.style.animation = "fade-out 0.5s"
   		$("body").css("overflow-y","visible");//body 스크롤바 생성
    setTimeout(function(){modal.style.display = "none"},501);
}
var btnModal = document.getElementById("btn-modal")
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
var closeBtn = modal.querySelector(".close-area")
closeBtn.addEventListener("click", e => {
	modalOff()
})
modal.addEventListener("click", e => {
    const evTarget = e.target
    if(evTarget.classList.contains("modal-overlay")) {
        modalOff()
    }
})
window.addEventListener("keyup", e => {
    if(isModalOn() && e.key === "Escape") {
        modalOff()
    }
})
 



$(document).ready(function() {
	$("input:text").attr("readonly", true);
});

for (var j=1;j<6;j++) {
	var i = (9*j)+(j+1);
	
	var day = j+"일차";
	var slat = $(".s-lat"+j).val();
	if (slat == null) {
		break;
	}
	var slng = $(".s-lng"+j).val();
	var wlat1 = $(".w-lat"+i).val();
	var wlng1 = $(".w-lng"+i).val();
	var wlat2 = $(".w-lat"+(i+1)).val();
	var wlng2 = $(".w-lng"+(i+1)).val();
	var wlat3 = $(".w-lat"+(i+2)).val();
	var wlng3 = $(".w-lng"+(i+2)).val();
	var wlat4 = $(".w-lat"+(i+3)).val();
	var wlng4 = $(".w-lng"+(i+3)).val();
	var wlat5 = $(".w-lat"+(i+4)).val();
	var wlng5 = $(".w-lng"+(i+4)).val();
	var elat = $(".e-lat"+j).val();
	var elng = $(".e-lng"+j).val();
	var Strlatlng = $("#latlng"+j).val().replace('[', '').replace(']','');
	var latlng = Strlatlng.split(',');
	$("#latlng"+j).val(latlng);
	$("#map"+j).attr("style","width:720px; height: 300px; margin:0px 0px 100px 0px;");
	//마커 위치 찍어주기 및 bound설정
	var latArray = [slat, elat],
		lngArray = [slng, elng],
		positions = [{
			latlng: new kakao.maps.LatLng(slat, slng)
		},];
	if (wlat1 != 0.0 && wlat1 != null) {
		latArray.push(wlat1);
		lngArray.push(wlng1);
		positions.push({latlng: new kakao.maps.LatLng(wlat1, wlng1)},);
	} 
	if (wlat2 != 0.0 && wlat2 != null) {
		latArray.push(wlat2);
		lngArray.push(wlng2);
		positions.push({latlng: new kakao.maps.LatLng(wlat2, wlng2)},);
	} 
	if (wlat3 != 0.0 && wlat3 != null) {
		latArray.push(wlat3);
		lngArray.push(wlng3);
		positions.push({latlng: new kakao.maps.LatLng(wlat3, wlng3)},);
	}
	if (wlat4 != 0.0 && wlat4 != null) {
		latArray.push(wlat4);
		lngArray.push(wlng4);
		positions.push({latlng: new kakao.maps.LatLng(wlat4, wlng4)},);
	}
	if (wlat5 != 0.0 && wlat5 != null) {
		latArray.push(wlat5);
		lngArray.push(wlng5);
		positions.push({latlng: new kakao.maps.LatLng(wlat5, wlng5)},);
	};
	positions.push({latlng: new kakao.maps.LatLng(elat, elng)});
	var maxlat = Math.max(...latArray),
		maxlng = Math.max(...lngArray),
		minlat = Math.min(...latArray),
		minlng = Math.min(...lngArray),
		bounds = new kakao.maps.LatLngBounds();
	bounds.extend(new kakao.maps.LatLng(maxlat, maxlng));
	bounds.extend(new kakao.maps.LatLng(minlat, minlng));
	document.getElementById("day"+j).value = day;
	var mapContainer = document.getElementById('map'+j), // 지도를 표시할 div 
	mapOption = { 
	    center: new kakao.maps.LatLng(slat, slng), // 지도의 중심좌표
	    level: 4 // 지도의 확대 레벨
	};  
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	map.setBounds(bounds);
	var iwContent;
	for (var i=0;i<positions.length;i++) {
		if ( i==0 ) {
			iwContent = '<div style="font-size:14px; padding:5px 0px 5px 30px;">출발지 입니다</div>'; 
		} else if (i==positions.length-1){
			iwContent = '<div style="font-size:14px; padding:5px 0px 5px 30px;">도착지 입니다</div>';
		} else {
			iwContent = '<div style="font-size:14px; padding:5px 0px 5px 22px;">'+i+'번 경유지입니다</div>';
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
} 
</script>
</html>