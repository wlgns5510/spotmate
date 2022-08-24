<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="myPage_sideNav">
	<h2>마이페이지</h2>
	<ul class="myPage_list">
		<li><a href="${pageContext.request.contextPath }/myDriverForm">드라이버 신청/정보<img src="/assets/images/chevron-right-blue.png"></a></li>
		<li><a href="${pageContext.request.contextPath }/myUsageDriverMain">이용 내역<img src="/assets/images/chevron-right-blue.png"></a></li>
		<li><a href="${pageContext.request.contextPath }/myReservationDriverMain">예약 내역<img src="/assets/images/chevron-right-blue.png"></a></li>
		<li><a href="${pageContext.request.contextPath }/myQnaMain">문의 내역<img src="/assets/images/chevron-right-blue.png"></a></li>
		<li><a href="${pageContext.request.contextPath }/mypageJ/myPointMain">포인트<img src="/assets/images/chevron-right-blue.png"></a></li>
		<li><a href="${pageContext.request.contextPath }/mypageJ/myCouponMain">쿠폰<img src="/assets/images/chevron-right-blue.png"></a></li>
		<li><a href="${pageContext.request.contextPath }/mypageJ/myPointRefundMain">환불 내역<img src="/assets/images/chevron-right-blue.png"></a></li>
		<li class="myPage_list_last"><a href="${pageContext.request.contextPath }/mypageJ/myInfoChk">개인정보 수정<img src="/assets/images/chevron-right-blue.png"></a></li>
	</ul>
</nav>