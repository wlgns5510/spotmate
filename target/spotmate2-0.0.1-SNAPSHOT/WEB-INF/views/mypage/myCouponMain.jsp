<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="icon" type="image/png" sizes="192x192" href="${pageContext.request.contextPath}/assets/images/common/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/images/common/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="${pageContext.request.contextPath}/assets/images/common/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/assets/images/common/favicon-16x16.png">
<link rel="manifest" href="${pageContext.request.contextPath}/assets/images/common/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="${pageContext.request.contextPath}/assets/images/common/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">

<!-- css, js ?????? -->
<link href="${pageContext.request.contextPath}/assets/css/swiper-bundle.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.0.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/style.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/swiper.min.js"></script>

<title>myCouponMain</title>

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
					<h3>??????</h3>
					<p>?????? ?????? ????????? ?????? ???????????????.</p>

				</header>

				<!-- //section-article -->
				<article class="myPage_article">

					<div class="inputBox">
						<form action="${pageContext.request.contextPath }/mypageJ/myCouponMain" method="get">
							<input name="startDate" type="date" value=""> <span> - </span> <input name="endDate" type="date" value=""> <select name="option1">
								<option value="">??????</option>
								<option value="??????">?????????</option>
							</select> <select name="option2">
								<option value="">????????????</option>
								<option value="?????????">?????????</option>
								<option value="????????????">????????????</option>
							</select>
							<div class="btns">
								<button type="submit" class="myPage_btnB">????????????</button>
								<a href="./myCouponBuy"><button type="button" class="myPage_btnY">?????? ????????????</button></a>
							</div>
						</form>
					</div>

				</article>

				<!-- //section-article2 -->
				<article class="myPage_article2">
					<h4>?????? ?????? ??????</h4>
					<table>
						<thead>
							<tr>
								<th>??????</th>
								<th>????????????</th>
								<th>??????</th>
								<th>????????????</th>
								<th>????????????</th>
								<th>????????????</th>
							</tr>
						</thead>
						<c:forEach items="${cMap.couponBList }" var="couponVo">
							<tr>
								<td>${couponVo.couponListNo}</td>
								<td>${couponVo.buyDate }</td>
								<td>${couponVo.cateName }</td>
								<td>${couponVo.usePlace }</td>
								<td>${couponVo.point }</td>
								<td>${couponVo.status }</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
					<div class="paging">
						<ul>
							<c:if test="${cMap.prev}">
								<li><a href="${pageContext.request.contextPath }/mypageJ/myCouponMain?crtPage=${cMap.startPageBtnNo-1}&startDate=${param.startDate}&endDate=${param.endDate}&option1=${param.option1}&option2=${param.option2}"> <img class="myPage_PagePicto" src="/assets/images/chevron-double-left.png">
								</a></li>
							</c:if>
							<c:if test="${cMap.prev}">
								<li><a href="${pageContext.request.contextPath }/mypageJ/myCouponMain?crtPage=${param.crtPage-1}&startDate=${param.startDate}&endDate=${param.endDate}&option1=${param.option1}&option2=${param.option2}"> <img class="myPage_PagePicto" src="/assets/images/chevron-left.png">
								</a></li>
							</c:if>

							<c:forEach begin="${cMap.startPageBtnNo}" end="${cMap.endPageBtnNo}" step="1" var="page">
								<li><a <c:if test="${param.crtPage==page}">class='active'</c:if> href="${pageContext.request.contextPath}/mypageJ/myCouponMain?crtPage=${page}&startDate=${param.startDate}&endDate=${param.endDate}&option1=${param.option1}&option2=${param.option2}"> ${page} </a></li>
							</c:forEach>
							<c:if test="${cMap.next}">
								<li><a href="${pageContext.request.contextPath }/mypageJ/myCouponMain?crtPage=${param.crtPage+1}&startDate=${param.startDate}&endDate=${param.endDate}&option1=${param.option1}&option2=${param.option2}"> <img class="myPage_PagePicto" src="/assets/images/chevron-right.png">
								</a></li>
							</c:if>
							<c:if test="${cMap.next}">
								<li><a href="${pageContext.request.contextPath }/mypageJ/myCouponMain?crtPage=${cMap.endPageBtnNo+1}&startDate=${param.startDate}&endDate=${param.endDate}&option1=${param.option1}&option2=${param.option2}"> <img class="myPage_PagePicto" src="/assets/images/chevron-double-right.png">
								</a></li>
							</c:if>
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

