<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<div class="searchbox">
					<input class="splace" type="text" name="start" value="" placeholder="출발지"> 
					<input class="eplace" type="text" name="end" value="" placeholder="도착지"> 
					<input class="people" value="1" type="number" min="1" name="people" value="" placeholder="인원수">
					<button onclick="search()" type="button"><img src="/assets/images/round-search.png"></button>
				</div>
				<div class="detail-option">
					<div class="do1">
						<input class="chkitem" type="checkbox" id="nosmoke" name="nosmoke" value="비흡연자">
						<label for="nosmoke" class="detailtext-2">비흡연자</label>
						<input class="chkitem" type="checkbox" id="femaledriver" name="femaledriver" value="여성드라이버">
						<label for="femaledriver" class="detailtext-2">여성 드라이버</label>
						
					
						<input class="chkitem" type="checkbox" id="pet" name="pet" value="반려동물">
						<label for="pet" class="detailtext-2">반려동물</label>
						<input class="chkitem" type="checkbox" id="phonecharge" name="phonecharge" value="충전기 사용 가능">
						<label for="phonecharge" class="detailtext-2">충전기 사용 가능</label>
						<input class="chkitem" type="checkbox" id="trunk" name="trunk" value="트렁크 사용 가능">
						<label for="trunk" class="detailtext-2">트렁크 사용 가능</label>
					</div>
<!-- 					<input class="chkitem" type="checkbox" value="femaleDriver" id="femaleDriver"><label for="femaleDriver">&nbsp;여성 드라이버</label> -->
<!-- 					<input class="chkitem" type="checkbox" value="nosmoke" id="nosmoke"><label for="nosmoke">&nbsp;비흡연자</label> -->
<!-- 					<input class="chkitem" type="checkbox" value="pet" id="pet"><label for="pet">&nbsp;반려동물 탑승 가능</label> -->
<!-- 					<input class="chkitem" type="checkbox" value="phonecharge" id="phonecharge"><label for="phonecharge">&nbsp;충전기 사용 가능</label> -->
<!-- 					<input class="chkitem" type="checkbox" value="trunk" id="trunk"><label for="trunk">&nbsp;트렁크 사용 가능</label> -->
				</div>
				<div id="hitch-list">
				
				</div>
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
$(document).ready(function() {
	$("input:checkbox").on('click', function() {
	      if ( $(this).prop('checked') ) {
	        $(this).parent().addClass("selected");
	      } else {
	        $(this).parent().removeClass("selected");
	      }
	    });
});

	var geocoder = new kakao.maps.services.Geocoder();
	var mapContainer = document.getElementById('hitch-main-map'), // 지도를 표시할 div 
	mapOption = {
		center : new kakao.maps.LatLng(37.48436301061165, 126.9922281879226), // 지도의 중심좌표
		level : 3
	},
	map = new kakao.maps.Map(mapContainer, mapOption);
	var	lat, lng, atl = 0,
		markers = [],
		infowindows = [],
		temp =[];
	
	var imageSrc = './assets/images/common/login_people_f50.png', // 마커이미지의 주소입니다    
		imageSize = new kakao.maps.Size(50, 50), // 마커이미지의 크기입니다
		markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize),
		marker = new kakao.maps.Marker({
			image : markerImage,
		});
	
	if(navigator.geolocation) {
		var na = navigator.geolocation.getCurrentPosition(function(position) {
			lat = position.coords.latitude,
			lng = position.coords.longitude,
			locPosition = new kakao.maps.LatLng(lat, lng);
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
						var mateNo = result[i].mateNo;
						$("#hitch-list").append('<div class="box-hitch-info" id="box'+result[i].mateNo+'"><div class="driverList"><input type="hidden" id="summary'+result[i].mateNo+'" value=""><div class="start"><p>현재위치</p><span id="nowpos'+result[i].mateNo+'">'+result[i].nowaddr+'</span></div><div class="end"><p>목적지</p><span>'+result[i].eplace1+'</span></div><div class="num" id="people'+result[i].mateNo+'"><span>탑승 가능한 인원 수</span><p>'+result[i].people+'</p></div><div class="usePoint"><span>총 결제 포인트</span><p>'+result[i].convertPoint+'</p></div><img onclick="carPos('+result[i].mateNo+')" class="carPos" src="/assets/images/ico_spot.png"><div class="btn'+result[i].mateNo+'"><a href="/spotHitchhikedeep/'+result[i].mateNo+'" class="hitchdeep">상세 조건</a><p onclick="rideReq('+result[i].mateNo+')" class="rideReq" id="rideReq'+result[i].mateNo+'">탑승 요청</p><input class="reqPeople" type="number" value="1" min="1"><input type="hidden" value="'+result[i].mateNo+'" id="hitch'+result[i].mateNo+'"><input type="hidden" value="'+result[i].people+'" id="canRide'+result[i].mateNo+'"><input type="hidden" value="'+result[i].latlng.split(",")[1]+","+result[i].latlng.split(",")[0]+'" id="latlng'+result[i].mateNo+'"><input type="hidden" id="point'+result[i].mateNo+'" value="'+result[i].point+'"></div></div></div>');
						$.ajax({
							url : "${pageContext.request.contextPath}/cancelChk",
							type : "post",
							contentType : "application/json",
							data : JSON.stringify(result[i].mateNo),
							dataType : "json",
							success : function(ccVo) {
								if(ccVo.result != -1)
								$(".btn"+ccVo.mateNo).append('<p onclick="cancel('+ccVo.mateNo+')" class="cancel" id="cancel'+ccVo.mateNo+'">취소</p>');
							},
							error : function(XHR, status, error) {
								console.error(status + " : " + error);
							}
						});
					}
					
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});
			map.setCenter(locPosition);
		})
	}
	
	
	myloca();
	
	var interval = setInterval(function(){myloca()}, 5000);
	
	
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
			url : "${pageContext.request.contextPath}/driverPos",
			type : "post",
			contentType : "application/json",
			data : JSON.stringify({
					lat: lat,
					lng: lng
			}),
			dataType : "json",
			success : function(result) {
				if(result.length == 0) {
					$("body > div > div > .box-hitch-info").remove();
					for(var n=0;n<markers.length;n++) {
						markers[n].setMap(null);
					}
					markers = [];
				}
				var hVo = {},
					chkTemp = [];
				for(var i=0;i<result.length;i++) {
					atl = result.length - 1;
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
							//전체 mateNo리스트
							if ( !temp.includes(result.hiVo.mateNo) ) {
								temp.push(result.hiVo.mateNo);
							} 
							//people = 0이 됬을 때 갱신된 mateNo리스트
							else if ( temp.length >= chkTemp.length) {
								chkTemp.push(result.hiVo.mateNo);
								if ( i == atl ) {
									var dif = temp.filter(x => !chkTemp.includes(x));
									for( var k=0;k<dif.length;k++ ) {
										$("#box"+dif[k]).remove();
										markers[k].setMap(null);
									}
								}
							}
							hVo = result.hVo;
							$("#nowpos"+result.hiVo.mateNo).text(result.hiVo.nowaddr);
							$("#people"+result.hiVo.mateNo).html("<span>탑승 가능한 인원수</span><p>"+result.hiVo.people+"</p>");
						},
						error : function(XHR, status, error) {
							console.error(status + " : " + error);
						}
					});
					if (markers.length >= result.length) {
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
												if(!$("#box"+result[i].mateNo).hasClass("box-hitch-info")) {
													$("#hitch-list").prepend('<div class="box-hitch-info" id="box'+result[i].mateNo+'"><div class="driverList"><input type="hidden" id="summary'+result[i].mateNo+'" value=""><div class="start"><p>현재위치</p><span id="nowpos'+result[i].mateNo+'">'+result[i].nowaddr+'</span></div><div class="end"><p>목적지</p><span>'+result[i].eplace1+'</span></div><div class="num" id="people'+result[i].mateNo+'"><span>탑승 가능한 인원수</span><p>'+result[i].people+'</p></div><div class="usePoint"><span>총 결제 포인트</span><p>'+result[i].convertPoint+'</p></div><img onclick="carPos('+result[i].mateNo+')" class="carPos" src="/assets/images/ico_spot.png"><div class="btn'+result[i].mateNo+'"><a href="/spotHitchhikedeep/'+result[i].mateNo+'" class="hitchdeep">상세 조건</a><p onclick="rideReq('+result[i].mateNo+')" class="rideReq" id="rideReq'+result[i].mateNo+'">탑승 요청</p><input class="reqPeople" type="number" value="1" min="1"><input type="hidden" value="'+result[i].mateNo+'" id="hitch'+result[i].mateNo+'"><input type="hidden" value="'+result[i].people+'" id="canRide'+result[i].mateNo+'"><input type="hidden" value="'+result[i].latlng.split(",")[1]+","+result[i].latlng.split(",")[0]+'" id="latlng'+result[i].mateNo+'"></div></div></div>');
													$.ajax({
														url : "${pageContext.request.contextPath}/cancelChk",
														type : "post",
														contentType : "application/json",
														data : JSON.stringify(result[i].mateNo),
														dataType : "json",
														success : function(ccVo) {
															console.log(ccVo);
															if(ccVo.result != -1)
															$(".btn"+ccVo.mateNo).append('<p onclick="cancel('+ccVo.mateNo+')" class="cancel" id="cancel'+ccVo.mateNo+'">취소</p>');
														},
														error : function(XHR, status, error) {
															console.error(status + " : " + error);
														}
													});
													markers[i].setMap(map);
												}
											}
										},
										error : function(XHR, status, error) {
											console.error(status + " : " + error);
										}
									});
								})
							}
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
// 					map.setCenter(locPosition);
					
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
		var chk = 0,
			mateNo = $("#hitch"+index).val();
		$.ajax({
			url : "${pageContext.request.contextPath}/chkRide",
			type : "post",
			contentType : "application/json",
			data : JSON.stringify(index),
			dataType : "json",
			async : false,
			success : function(result) {
				if (result == -1) {
					chk = -1;
				} else {
					chk = result;
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		if ( $(".reqPeople").val() == '' ) {
			alert("인원 수를 지정한 다음 시도해주세요")
			return;
		} else if(chk == 1) {
			alert("이미 신청 하셨습니다")
			return;
		} else if(chk == -1) {
			alert("로그인 후 신청해주세요!")
			return;
		}
		var hrVo = {};
		hrVo.mateNo = mateNo;
		hrVo.people = $(".reqPeople").val();
		hrVo.canRide = $("#canRide"+index).val();
		hrVo.point = $("#point"+index).val();
		navigator.geolocation.getCurrentPosition(function(position) {
			lat = position.coords.latitude, // 위도
			lng = position.coords.longitude; // 경도
		})
		hrVo.lat = lat;
		hrVo.lng = lng;
		$.ajax({
			url : "${pageContext.request.contextPath}/rideReq",
			type : "post",
			contentType : "application/json",
			data : JSON.stringify(hrVo),
			dataType : "json",
			success : function(result) {
				if (result != -1) {
					$("#canRide"+index).val(result);
					$("#people"+index).html("<span>탑승 가능한 인원수</span><p>"+result+"</p>");
					$("#rideReq"+index).text("신청 완료");
					$(".btn"+index).append('<p onclick="cancel('+index+')" class="cancel" id="cancel'+index+'">취소</p>');
				} else {
					alert("탑승 인원 초과입니다.");
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
	
	function cancel(index) {
		$.ajax({
			url : "${pageContext.request.contextPath}/cancel",
			type : "post",
			contentType : "application/json",
			dataType : "json",
			data : JSON.stringify($("#hitch"+index).val()),
			success : function(result) {
				$("#canRide"+index).val(result);
				$("#people"+index).html("<span>탑승 가능한 인원수</span><p>"+result+"</p>");
				$("#rideReq"+index).text("탑승 신청");
				$("#cancel"+index).remove();
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
	
	function carPos(index) {
		var mateNo = $("#hitch"+index).val(),
			Strlatlng = $("#latlng"+mateNo).val().replace("(", "").replace(")", "")
			latlngList = Strlatlng.split(",");
		var	latlng = new kakao.maps.LatLng(latlngList[0], latlngList[1]);
		map.setCenter(latlng);
	}
	
	function search() {
		var detailOpt = $('.chkitem:checked').map(function(){ return $(this).val();}).get().join(",");
		var splace = $('.splace').val();
		var eplace = $('.eplace').val();
		var people =  $('.people').val();
		var lat, lng;
		if(navigator.geolocation) {
			var na = navigator.geolocation.getCurrentPosition(function(position) {
				lat = position.coords.latitude,
				lng = position.coords.longitude;
				var searchVo = {
						detailOpt: detailOpt,
						splace: splace,
						eplace: eplace,
						people: people,
						lat: lat,
						lng: lng
				};
				$.ajax({
					url : "${pageContext.request.contextPath}/hitchsearch",
					type : "post",
					contentType : "application/json",
					data : JSON.stringify(searchVo),
					dataType : "json",
					success : function(result) {
						$(".box-hitch-info").remove();
						for(var i=0;i<result.length;i++) {
							clearInterval(interval);
							var mateNo = result[i].mateNo;
							$("#hitch-list").prepend('<div class="box-hitch-info" id="box'+result[i].mateNo+'"><div class="driverList"><input type="hidden" id="summary'+result[i].mateNo+'" value=""><div class="start"><p>현재위치</p><span id="nowpos'+result[i].mateNo+'">'+result[i].nowAddr+'</span></div><div class="end"><p>목적지</p><span>'+result[i].eplace1+'</span></div><div class="num" id="people'+result[i].mateNo+'"><span>탑승 가능한 인원수</span><p>'+result[i].people+'</p></div><div class="usePoint"><span>총 결제 포인트</span><p>'+result[i].convertPoint+'</p></div><img onclick="carPos('+result[i].mateNo+')" class="carPos" src="/assets/images/ico_spot.png"><div class="btn'+result[i].mateNo+'"><a href="/spotHitchhikedeep/'+result[i].mateNo+'" class="hitchdeep">상세 조건</a><p onclick="rideReq('+result[i].mateNo+')" class="rideReq" id="rideReq'+result[i].mateNo+'">탑승 요청</p><input type="hidden" value="'+result[i].mateNo+'" id="hitch'+result[i].mateNo+'"><input type="hidden" value="'+result[i].people+'" id="canRide'+result[i].mateNo+'"><input type="hidden" value="'+result[i].latlng.split(",")[1]+","+result[i].latlng.split(",")[0]+'" id="latlng'+result[i].mateNo+'"><input type="hidden" id="point'+result[i].mateNo+'" value="'+result[i].point+'"></div></div></div>');
							$.ajax({
								url : "${pageContext.request.contextPath}/cancelChk",
								type : "post",
								contentType : "application/json",
								data : JSON.stringify(result[i].mateNo),
								dataType : "json",
								success : function(ccVo) {
									if(ccVo.result != -1)
									$(".btn"+ccVo.mateNo).append('<p onclick="cancel('+ccVo.mateNo+')" class="cancel" id="cancel'+ccVo.mateNo+'">취소</p>');
								},
								error : function(XHR, status, error) {
									console.error(status + " : " + error);
								}
							});
						}
					},
					error : function(XHR, status, error) {
						console.error(status + " : " + error);
					}
				});
			});
		}
		
	}
	
</script>
</html>