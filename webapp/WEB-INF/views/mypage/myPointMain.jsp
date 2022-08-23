<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath }/assets/js/jquery-1.11.0.min.js"></script>


<title>myPointMain</title>

</head>

<body>

	<div id="wrap">

		<!-- //header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

		<!-- //topNav -->
		<nav class="myPage_topNav">
			<div class="box1">
				<div class="box1_box">
					<img src="${pageContext.request.contextPath }/assets/images/box_user.png">
				</div>
				<p>yujieun님</p>
				<span>Reviews</span><span><img src="${pageContext.request.contextPath }/assets/images/ico_star.png">4.5</span>
			</div>
			<div class="box2">
				<p>
					<a href="./myPointCharge">포인트 충전 ></a>
				</p>
				<span>1,0000P </span> <img src="${pageContext.request.contextPath }/assets/images/ico_point.png">
			</div>
			<div class="box3">
				<p>
					<a href="./myCouponMain">쿠폰 사용 ></a>
				</p>
				<span>2개 </span> <img src="${pageContext.request.contextPath }/assets/images/ico_coupon.png">
			</div>
		</nav>

		<!-- //myPage main contents -->
		<main class="contents">

			<!-- //sideNav  -->
			<nav class="myPage_sideNav">
				<h2>마이페이지</h2>
				<!-- h2? -->
				<ul class="myPage_list">
					<li><a href="./myDriverForm">드라이버 신청/정보<img src="${pageContext.request.contextPath }/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myUsageDriverMain">이용 내역<img src="${pageContext.request.contextPath }/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myReservationDriverMain">예약 내역<img src="${pageContext.request.contextPath }/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myQnaMain">문의 내역<img src="${pageContext.request.contextPath }/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myPointMain">포인트<img src="${pageContext.request.contextPath }/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myCouponMain">쿠폰<img src="${pageContext.request.contextPath }/assets/images/chevron-right-blue.png"></a></li>
					<li><a href="./myPointRefundMain">환불 내역<img src="${pageContext.request.contextPath }/assets/images/chevron-right-blue.png"></a></li>
					<li class="myPage_list_last"><a href="./myInfoChk">개인정보 수정<img src="${pageContext.request.contextPath }/assets/images/chevron-right-blue.png"></a></li>
				</ul>
			</nav>

			<!-- //section -->
			<section class="myPage_selection">
				<!-- //section-header -->
				<header class="myPage_header">
					<h3>포인트</h3>
					<p>나의 포인트 사용과 적립 내역입니다.</p>
					<ul>
						<li>드라이버 포인트 내역은 주행 완료 후 지급된 포인트입니다.</li>
						<li>유저 포인트 내역은 다른 드라이버의 차량을 이용 후 사용한 포인트입니다.</li>
						<li>그 외에도 이용수칙을 위반한 경우 차감 또는 추가 지급 될 수 있습니다.</li>
					</ul>
				</header>

				<!-- //section-article -->
				<article class="myPage_article">

					<div class="inputBox">
						<form action="${pageContext.request.contextPath }/mypageJ/myPointMain" method="get">
							<input name="startDate" type="date" value=""> <span> - </span> <input name="endDate" type="date" value=""> <select name="option1">
								<option value="">유형</option>
								<option value="카풀">카풀정기권</option>
								<option value="카풀">카풀1회성</option>
								<option value="히치하이크">히치하이크</option>
								<option value="메이트">메이트</option>
								<option value="충전">충전</option>
								<option value="구매">구매</option>
								<option value="환불">환불</option>
							</select> <select name="option2">
								<option value="">참여주체</option>
								<option value="드라이버">드라이버</option>
								<option value="유저">유저</option>
							</select>
							<div class="btns">
								<button type="submit" class="myPage_btnB">조회하기</button>
								<a href="./myPointCharge"><button type="button" class="myPage_btnY">포인트 충전하기</button></a>
							</div>
						</form>
					</div>

				</article>

				<!-- //section-article2 -->
				<article class="myPage_article2">
					<h4>포인트 내역</h4>
					<table>
						<thead>
							<tr>
								<th>번호</th>
								<th>유형</th>
								<th>날짜</th>
								<th>출발지</th>
								<th>도착지</th>
								<th>참여주체</th>
								<th>포인트</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${pointList }" var="pointVo">
								<tr>
									<td>1</td>
									<td>${pointVo.type }</td>
									<td>${pointVo.regDate }</td>
									<td>${pointVo.splace }</td>
									<td>${pointVo.eplace }</td>
									<td>${pointVo.pType }</td>
									<td><c:if test="${pointVo.point>0}">+</c:if>${pointVo.point }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="paging">
						<ul>
							<li><a href=""> <img class="myPage_PagePicto" src="${pageContext.request.contextPath }/assets/images/chevron-double-left.png">
							</a></li>

							<li><a href=""> <img class="myPage_PagePicto" src="${pageContext.request.contextPath }/assets/images/chevron-left.png">
							</a></li>

							<li><a href="">1</a></li>
							<li><a href="">2</a></li>
							<li><a href="">3</a></li>
							<li><a href="">4</a></li>
							<li class="active"><a href="">5</a></li>
							<li><a href="">6</a></li>
							<li><a href="">7</a></li>
							<li><a href="">8</a></li>
							<li><a href="">9</a></li>
							<li><a href="">10</a></li>

							<li><a href=""> <img class="myPage_PagePicto" src="${pageContext.request.contextPath }/assets/images/chevron-right.png">
							</a></li>

							<li><a href=""> <img class="myPage_PagePicto" src="${pageContext.request.contextPath }/assets/images/chevron-double-right.png">
							</a></li>
						</ul>
					</div>
				</article>
			</section>
		</main>


		<!-- //banner & footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	</div>

</body>


</html>

