<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="myPage_topNav">
	<div class="box1">
		<div class="box1_box">
			<img src="/assets/images/box_user.png">
		</div>
		<p>${authUser.name}님</p>
		<span>Reviews</span><span><img src="/assets/images/ico_star.png">${topNavMap.avgStar }</span>
	</div>
	<div class="box2">
		<p>
			<a href="${pageContext.request.contextPath }/mypageJ/myPointCharge">포인트 충전 ></a>
		</p>
		<span>${topNavMap.totalPoint }P </span> <img src="/assets/images/ico_point.png">
	</div>
	<div class="box3">
		<p>
			<a href="${pageContext.request.contextPath }/mypageJ/myCouponMain">쿠폰 사용 ></a>
		</p>
		<span>${topNavMap.notUsedCoupon }개 </span> <img src="/assets/images/ico_coupon.png">
	</div>
</nav>