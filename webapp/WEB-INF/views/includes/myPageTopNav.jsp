<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="myPage_topNav">
	<div class="box1">
		<div class="box1_box">
			<img src="/assets/images/box_user.png">
		</div>
		<p>${authUser.name}님</p>
		<span>Reviews</span><span><img src="/assets/images/ico_star.png">4.5</span>
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