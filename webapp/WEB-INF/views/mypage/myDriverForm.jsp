<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
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
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/assets/images/common/favicon.ico"
	type="image/x-icon">
<link rel="icon"
	href="${pageContext.request.contextPath}/assets/images/common/favicon.ico"
	type="image/x-icon">
<link rel="apple-touch-icon" sizes="57x57"
	href="${pageContext.request.contextPath}/assets/images/common/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="${pageContext.request.contextPath}/assets/images/common/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="${pageContext.request.contextPath}/assets/images/common/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="${pageContext.request.contextPath}/assets/images/common/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="${pageContext.request.contextPath}/assets/images/common/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="${pageContext.request.contextPath}/assets/images/common/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="${pageContext.request.contextPath}/assets/images/common/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="${pageContext.request.contextPath}/assets/images/common/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="${pageContext.request.contextPath}/assets/images/common/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"
	href="${pageContext.request.contextPath}/assets/images/common/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="${pageContext.request.contextPath}/assets/images/common/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="${pageContext.request.contextPath}/assets/images/common/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="${pageContext.request.contextPath}/assets/images/common/favicon-16x16.png">
<link rel="manifest"
	href="${pageContext.request.contextPath}/assets/images/common/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage"
	content="${pageContext.request.contextPath}/assets/images/common/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">

<!-- css, js 연결 -->
<link
	href="${pageContext.request.contextPath}/assets/css/swiper-bundle.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/style.css"
	rel="stylesheet" />
<script
	src="${pageContext.request.contextPath}/assets/js/jquery-1.11.0.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/style.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/swiper.min.js"></script>

<title>myDriverForm</title>

</head>

<body>

	<div id="wrap">


		<!-- //header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

		<!-- //topNav -->
		<c:import url="/WEB-INF/views/includes/myPageTopNav.jsp"></c:import>

		<!-- //myPage main contents -->
		<main class="contents">

			<!-- //sideNav  -->
			<c:import url="/WEB-INF/views/includes/myPageSideNav.jsp"></c:import>

			<!-- //section -->
			<section class="myPage_selection">
				<!-- //section-header -->
				<header class="myPage_header">
					<h3>차량 등록하기</h3>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
						style="font-weight: bold">유저님의 차량을 등록해 서비스를 이용하실 수 있습니다.</span>
					<ul>
						<li>드라이버 포인트 내역은 주행 완료 후 지급된 포인트입니다.</li>
						<li>유저 포인트 내역은 다른 드라이버의 차량을 이용 후 사용한 포인트입니다.</li>
						<li>그 외에도 이용수칙을 위반한 경우 차감 또는 추가 지급 될 수 있습니다.</li>
					</ul>
				</header>


				<article class="myPage_article2">
					<h4>드라이버 신청 등록하기</h4>
					<br>

					<div>

						<p class="require_info" style="color: blue">*필수 입력사항</p>
					</div>

					<div class="DriverenrollForm">
						<form method="post"
							action="${pageContext.request.contextPath }/myDriverWriteInsert" id="myform">
							<div class="DL_info">
								<!-- -->

								<h5>면허증 정보 입력*</h5>
								<!-- Driver License -->
								<table>
									<tr align="left">
										<td><label for="username">이름*</label></td>
										<td><input value="${dlvo.username}" name="username"
											id="username" placeholder="ex)장원영" type="text"></td>
									</tr>

									<tr align="left">
										<td><label for="userBD">생년월일*</label></td>
										<td>
											<input value="${dlvo.userBD}" name="userBD" id="userBD" placeholder="ex)2004-0831" type="text">
											<button type="button" id="liau" class="smallbtn" style="float: initial;">본인인증</button>
										</td>
										<td></td>
									</tr>

									<tr align="left">
										<td><label for="dl">면허등록번호*</label></td>
										<td>
											<div class="join_dl">
												<div class="dltable">

													<div class="dl_wrap1">
														<span class="dl_box"> 
															<input id="dl_1"onchange="OnChangeDL();" placeholder="ex)11" type="text">
															<input id="dl_2" class="dl" onchange="OnChangeDL();" placeholder="ex)18" type="text">
															<input id="dl_3" class="dl" onchange="OnChangeDL();" placeholder="ex)026155" type="text">
															<input id="dl_4" class="dl" onchange="OnChangeDL();" placeholder="ex)10" type="text">
															<input id="dl_5" class="dl" onchange="OnChangeDL();" placeholder="ex)X61D86" type="text">
															<input name="dl" id="dl" type="hidden">
														</span>
													</div>
												</div>
												<span class="error_next_box" id="dlMsg"
													aria-live="assertive" style="display: none;">면허등록번호를
													정확하게 입력하세요.</span>
											</div>
										</td>
									</tr>
									<tr align="left">
										<td><label for="licensetype">종류*</label></td>
										<td><input name="licensetype" id="licensetype"
											placeholder="대형 1종" type="text" placeholder=""></td>
									</tr>

								</table>
							</div>

							<div class="DC_info">
								<h5>차량 정보 입력*</h5>
								<table>

									<tr align="left">
										<td><label for="c_Model">차량모델명*</label></td>
										<td><input name="c_Model" id="c_Model"
											placeholder="테슬라 모델3" type="text"></td>
									</tr>

									<tr>
										<td></td>
										<td>
											<input type="hidden" name="c_file" id="c_file">
											<input id="img_path" accept="image/*" type="text">
											<input type="file" id="input-file" class="file_d" onchange="OnChangeFile();">
										</td>
										<td><label class="smallbtn" for="input-file"> <span>파일선택</span>
										</label></td>
									</tr>
									<tr align="left">
										<td><label for="c_num">차량등록번호*</label></td>
										<td><input name="c_num" id="c_num" placeholder="770가7777"
											type="text"></td>
										<td><button type="button" style="font-weight: bold"
												class="smallbtn" id="carAuth">차량인증</button></td>
									</tr>
									<tr align="left">
										<td><label for="c_color">차량색상*</label></td>
										<td><input name="c_color" id="c_color" placeholder="화이트"
											type="text"></td>
									</tr>
									<tr align="left">
										<td><label for="num_PA">탑승가능인원*</label></td>
										<td><input name="num_PA" id="num_PA" placeholder="2"
											type="text"></td>
									</tr>
								</table>

							</div>


							<div class="DC_etc">
								<h5>차량 상세조건</h5>
								<div class="detail">

									<label class="detailtext"> <input class="detail_ckbox"
										type="checkbox" name="ch_type" id="Dformcheckbox" value="1">
										&nbsp;&nbsp;비흡연자
									</label> <label class="detailtext"> <input class="detail_ckbox"
										type="checkbox" name="ch_type" id="Dformcheckbox" value="2">
										&nbsp;&nbsp;여성드라이버
									</label> <label class="detailtext"> <input class="detail_ckbox"
										type="checkbox" name="ch_type" id="Dformcheckbox" value="3">
										&nbsp;&nbsp;반려동물
									</label> <label class="detailtext"> <input class="detail_ckbox"
										type="checkbox" name="ch_type" id="Dformcheckbox" value="4">
										&nbsp;&nbsp;충전기 사용 가능
									</label> <label class="detailtext"> <input class="detail_ckbox"
										type="checkbox" name="ch_type" id="Dformcheckbox" value="5">
										&nbsp;&nbsp;트렁크 사용 가능
									</label>
								</div>
							</div>
							<br>


							<div class="memo">
								<h5>드라이버님을 소개해주세요*</h5>
								<textarea placeholder="ex)약속 장소에는 출발 5분전에 나와주시면 좋겠습니다."
									name="introduce" id="introduce"></textarea>
							</div>

							<input type="button" onclick="isCarAuth();" value="등록하기" class="DForm_enrollbtn0">





						</form>

					</div>
	</div>
	</article>


	</section>

	</main>



	<!-- //banner & footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	</div>

</body>

<script type="text/javascript">
	let bCarAuth = false;
	
	function isCarAuth() {
		if(!bCarAuth) {
			alert("차량인증을 먼저 해주세요.");
			//return false;
		}
		
		document.getElementById("myform").submit();
	}

	
	//상세조건 정렬
	function OnChangeDL() {
		let dl_1 = document.getElementById("dl_1").value;
		let dl_2 = document.getElementById("dl_2").value;
		let dl_3 = document.getElementById("dl_3").value;
		let dl_4 = document.getElementById("dl_4").value;
		let dl_5 = document.getElementById("dl_5").value;
		const dl = document.getElementById("dl");
		dl.value = dl_1 + "-" + dl_2 + "-" + dl_3 + "-" + dl_4 + "-" + dl_5;
	}
	
	function OnChangeFile() {
		const inputFile = document.getElementById("input-file");
		let fileName = inputFile.value;
		document.getElementById("img_path").value = fileName;
		
		var FR= new FileReader();
		FR.onload = function(e) {
			console.log(e.target.result);
			document.getElementById("c_file").value = e.target.result;
		};       
		FR.readAsDataURL( inputFile.files[0] );
	}

	$(document).ready(function() {
		$("#file").on('change', function() {
			var fileName = $("#file").val();
			$(".upload-name").val(fileName);
		});
	});

	$("#carAuth").on("click", function() {
		var name = $("#username").val();
		var cnum = $("#c_num").val();

		console.log(name)
		console.log(cnum)
		$.ajax({
			url : "${pageContext.request.contextPath}/carAuth",
			type : "post",
			contentType : "application/json",
			async : false,
			data : JSON.stringify({
				name : name,
				cnum : cnum
			}),
			dataType : "json",
			success : function(result) {
				console.log("result,", result)
				if (result == -1) {
					alert("틀렸습니다");
				} else {
					alert("성공했습니다");
					bCarAuth = true;
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	})

	$("#liau").on("click", function() {
		var name2 = $("#username").val();
		var btd2 = $("#userBD").val();
		var serial2 = $("#dl").val();
		if (serial2.length != 22) {
			alert("형식에 맞게 값을 넣어주세요");
			return;
		}
		$.ajax({
			url : "${pageContext.request.contextPath}/driverAuth",
			type : "post",
			contentType : "application/json",
			async : false,
			data : JSON.stringify({
				name : name2,
				btd : btd2,
				serial : serial2
			}),
			dataType : "json",
			success : function(result) {
				console.log("result,", result)
				if (result == -1) {
					alert("틀렸습니다");
				} else {
					alert("성공했습니다");
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	})
</script>

</html>