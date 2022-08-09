<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="./assets/js/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="/assets/css/spotmate.css">
<title>Insert title here</title>
</head>
<body>
<div id="wrap"  class="clearfix">
<c:import url="/WEB-INF/views/includes/nav.jsp"></c:import>
<div id="contents">
<div id="joinindex">
	<h1>회원가입</h1>
	<p id="joinp">*필수 입력사항</p>
</div>
	<div id="joinmain">
		<label for="userid">아이디*</label>
		<input id="userid" name="userid" type="text">
		<button>증복확인</button>
		<br>
		<label for="userpw">비밀번호*</label>
		<input id="userpw" name="userpw" type="text">
		<br>
		<label for="userpwchk">비밀번호확인*</label>
		<input id="userpwchk" name="userpwchk" type="text">
		<br>
		<label for="username">이름*</label>
		<input id="username" name="username" type="text">
		<br>
		<label for="useremail">이메일*</label>
		<input id="useremail" name="useremail" type="text">
		<br>
		<label for="userph">휴대폰*</label>
		<input id="userph" name="userph" type="text">
		<br>
		<label for="useraddr">주소*</label>
		<input id="useraddr" name="useraddr" type="text">
		<br>
		<label for="usersex">성별*</label>
		<input id="usersex" name="usersex" type="text">
		<br>
		<label for="userbth">생년월일*</label>
		<input id="userbth" name="useribth" type="text">
		<br>
		<label for="usercar">차량소유여부*</label>
		<input id="usercar" name="usercar" type="text">
	</div>
</div>
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</div>
</body>
</html>