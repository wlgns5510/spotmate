<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath}/assets/css/style.css"
	rel="stylesheet" />
<script src="/assets/js/jquery-1.11.0.min.js"></script>


<title>myDriverForm</title>

</head>

<body>

	<div id="wrap">


		<!-- //header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

		<!-- //topNav -->
		<nav class="myPage_topNav">
			<div class="box1">
				<div class="box1_box">
					<img src="/assets/images/box_user.png">
				</div>
				<p>Ryeo-kyoung,kim님</p>
				<span>Reviews</span><span><img
					src="/assets/images/ico_star.png">4.3</span>
			</div>
			<div class="box2">
				<p>
					<a href="./myPointCharge">포인트 충전 ></a>
				</p>
				<span>1,0000P </span> <img src="/assets/images/ico_point.png">
			</div>
			<div class="box3">
				<p>
					<a href="./myCouponMain">쿠폰 사용 ></a>
				</p>
				<span>2개 </span> <img src="/assets/images/ico_coupon.png">
			</div>
		</nav>

		<!-- //myPage main contents -->
		<main class="contents">

			<!-- //sideNav  -->
			<nav class="myPage_sideNav">
				<h2>마이페이지</h2>
				<!-- h2? -->
				<ul class="myPage_list">
					<li><a href="./myDriverForm">드라이버 신청/정보<img
							src="/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myUsageDriverMain">이용 내역<img
							src="/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myReservationDriverMain">예약 내역<img
							src="/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myQnaMain">문의 내역<img
							src="/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myPointMain">포인트<img
							src="/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myCouponMain">쿠폰<img
							src="/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myPointRefundMain">환불 내역<img
							src="/assets/images/chevron-right-blue.png"></a></li>
					<li class="myPage_list_last"><a href="./myInfoChk">개인정보 수정<img
							src="/assets/images/chevron-right-blue.png"></a></li>
				</ul>
			</nav>
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
							action="${pageContext.request.contextPath }/myDriverWriteInsert">
							<div class="DL_info">
								<!-- -->

								<h5>면허증 정보 입력*</h5>
								<!-- Driver License -->
								<table>
									<tr align="left">
										<td><label for="username">이름*</label></td>
										<td><input name="username" id="username"
											placeholder="홍길동" type="text"></td>

									</tr>

									<tr align="left">
										<td><label for="userBD">생년월일*</label></td>
										<td><input name="userBD" id="userBD"
											placeholder="19900805" type="text"></td>
										<td><button type="button" id="liau" class="smallbtn">본인인증</button></td>
									</tr>
									<tr align="left">
										<td><label for="dl">면허등록번호*</label></td>
										<td><input name="dl" id="dl" placeholder="면허등록번호입력"
											type="text"></td>
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
										<td><input type="file" id="input-file" class="file_d"></td>
										<td><label class="smallbtn" for="input-file"> <span>파일선택</span>
										</label></td>
									</tr>
									<tr align="left">
										<td><label for="c_num">차량등록번호*</label></td>
										<td><input name="c_num" id="c_num" placeholder="770가7777"
											type="text"></td>
										<td><button type="button" style="font-weight: bold" class="smallbtn" id="carAuth">차량인증</button></td>
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
								<table>
									<!-- input type="radio" name="gender" id="male" placeholder="남자"  -->
									<tr align="left">
										<td><input type="checkbox" name="ch_type"
											id="Dformcheckbox" value="1"><span>비흡연자</span></td>
										<td><input type="checkbox" name="ch_type"
											id="Dformcheckbox" value="2" checked="checked"> <span>여성드라이버</span></td>
									</tr>
									<tr align="left">
										<td><input type="checkbox" name="ch_type"
											id="Dformcheckbox" value="3"><span> 반려동물 탑승가능</span></td>
										<td><input type="checkbox" name="ch_type"
											id="Dformcheckbox" value="4"> <span>핸드폰 충전기 보유</span></td>
									</tr>
									<tr align="left">
										<td><input type="checkbox" name="ch_type"
											id="Dformcheckbox" value="5"><span> 트렁크 사용
												가능여부</span></td>
									</tr>
								</table>
							</div>



							<div class="memo">
								<h5>드라이버님을 소개해주세요*</h5>
								<textarea placeholder="ex)약속 장소에는 출발 5분전에 나와주시면 좋겠습니다."
									name="introduce" id="introduce"></textarea>
							</div>

							<input type="submit" placeholder="등록하기" class="DForm_enrollbtn0">





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
			async: false,
			data : JSON.stringify({
					name: name,
					cnum: cnum
			}),
			dataType : "json",
			success : function(result) {
				console.log("result,",result)
				if ( result == -1 ) {
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
	
	$("#liau").on("click", function() {
		var name2 = $("#username").val();
		var btd2 = $("#userBD").val();
		var serial2 = $("#dl").val();
		if(serial2.length != 22) {
			alert("형식에 맞게 값을 넣어주세요");
			return;
		}
		$.ajax({
			url : "${pageContext.request.contextPath}/driverAuth",
			type : "post",
			contentType : "application/json",
			async: false,
			data : JSON.stringify({
					name: name2,
					btd: btd2,
					serial: serial2
			}),
			dataType : "json",
			success : function(result) {
				console.log("result,",result)
				if ( result == -1 ) {
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