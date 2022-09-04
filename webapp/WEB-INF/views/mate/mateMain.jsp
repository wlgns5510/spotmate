<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
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
	
	
	<title>mateMain</title>
	
</head>
<body>
<!-- mateMain_wrap -->
<div class="mateMain_wrap">

	<!-- header -->
	<header>
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	</header>	
	<!-- //header -->
	
	<!-- mateMain_content -->
	<div class="mateMain-banner">
	<div class="mateMain_content">
		<div class="seachBox">
			<h2>FIND YOUR MATE</h2>
			
			<div class="mateMain_inputBox">
				<form class="mateSearch" action="${pageContext.request.contextPath}/mateMain" method="get">
					<div class="selBox">
						<div class="sel1">
							<label for="Location" class="LocationLabel">Location</label><br>
							<input type="text" id="Location" name="ePlace" value="${param.ePlace}" placeholder="목적지를 입력해주세요">
						</div>
						
						<div class="sel2">
							<label for="CheckIn" class="CheckInLabel">Check In</label><br>
							<input type="date" id="CheckIn" name="sDate" value="${param.sDate}" placeholder="Add Dates">
						</div>
						
						<div class="sel3">
							<label for="CheckOut" class="CheckOutLabel">Check Out</label><br>
							<input type="date" id="CheckOut" name="eDate" value="${param.eDate}" placeholder="Add Dates">
						</div>
						
						<div class="sel4">
							<label for="PeopleN" class="PeopleLabel">People</label><br>
							<input type="number" id="PeopleN" name="smPeople" value="${param.smPeople}" placeholder="Add Guests">
						</div>
					</div>
					<div class="DetaileBox">
						<img class="DetaileBoxImg" src="/assets/images/ico_filter_white.png"> 
						<span class="DetaileBoxFont">상세조건</span>
					</div>				
					
					<div class="chectBoxList">
						<c:forEach items="${mLMap.optList}" var="opt">
							<span class=""><input id="chkOpt-${opt.detailOptNo}" type="checkbox" name="mateContactList" value="${opt.detailOptNo}"
								<c:forEach items="${mateVo.mateContactList}" var="target">
									<c:if test="${opt.detailOptNo == target}">
										checked="checked"
									</c:if>
								</c:forEach>
							><label for="chkOpt-${opt.detailOptNo}">${opt.name}</label></span>
						</c:forEach>
					</div>
					<button type="submit" class="searchPictogrem"></button>
				</form>
			</div>
		</div>
	</div>
	</div>
	<!-- mateMain_content -->
	
	<!-- mateMain_content2 -->
	<div class="mateMain_content2">		
		<div class="mateListFont">
			<h2>탑승 가능 메이트 리스트</h2>									
		</div>
		
		<div class="mateListAll clear">		
			<c:forEach items="${mLMap.mateList}" var="mateVo" varStatus="status">
				<div class="mateList">
					<a href="/mateDeep/${mateVo.mateNo}?ePlace=${param.ePlace}&sDate=${param.sDate}&eDate=${param.eDate}&smPeople=${param.smPeople}<c:forEach items="${paramValues.mateContactList}" var="item">&mateContactList=${item}</c:forEach>">						
						<img src="/assets/images/mate_imgbox/${mateVo.randomImgNo}.png" class="matePicture">																										
					</a><br>
					<span class="driverName">Driver ${mateVo.name}</span>
					<span class="schedule">일정 ${mateVo.startDate} - ${mateVo.endDate}</span><br>
					<span class="startEnd">
						${mateVo.sPlace} → ${mateVo.ePlace}
					</span>
					<div class="mateMain_listBox">
						<img src="/assets/images/car icon.png">
						<span class="seatNo">${mateVo.people}</span>																		
					</div>							
				</div>	
			</c:forEach>												
		</div>
		
		<button class="mateListBtn" id="btnMoreList">
				<h2>더보기</h2>
		</button>
								
	</div>
	<!-- //mateMain_content2 -->
	
	
	<!-- footer -->
	<footer>
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	</footer>	
	<!-- //footer -->
</div>
<!-- //mateMain_wrap -->
</body>
<script type="text/javascript">
var mateVo = {};

//페이지가 로딩되기 직전 일때
$(document).ready(function(){
	console.log("페이지 로딩 직전");

	mateVo.crtPage = 1;
	mateVo.ePlace = $("[name='ePlace']").val();
	mateVo.sDate = $("[name='sDate']").val();
	mateVo.eDate = $("[name='eDate']").val();
	mateVo.smPeople = parseInt($("[name='smPeople']").val());
	
	var mateContactList = [];
	
	var chks=$("[name='mateContactList']");
	chks.each(function(index){
		if($(this).is(":checked") == true){
			mateContactList.push(parseInt($(this).val()));
		}
	});
	
	mateVo.mateContactList = mateContactList;
	
	console.log(mateVo);

});

$(".mateListBtn").on("click", function(){
	console.log("더보기 버튼클릭");
	mateVo.crtPage += 1;
	
	console.log(mateVo);
	
	//ajax 요청  받는코드
	$.ajax({
		url : "${pageContext.request.contextPath}/mateList",
		type : "post",
		contentType : "application/json",
		data : JSON.stringify(mateVo),
		dataType : "json",
		success : function(mLMap) {
			
			var mateList = mLMap.mateList;
			/* 다음페이지 리스트 가져오기 */
			console.log(mateList);
			
			/* 화면에 가져온 data와 html를 그린다 */
			for (var i = 0; i < mateList.length; i++){
				render(mateList[i]);	//화면에 그리는 함수실행
			}

			
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});	
});

function render(mateList) {
	console.log("render()");
	
	var str = '';
	str += '<div class="mateList">';
	str += '	<a href="/mateDeep/' + mateList.mateNo + '">';
	str += '		<img src="/assets/images/mate_imgbox/' + mateList.randomImgNo + '.png" class="matePicture">';
	str += '	</a><br>';
	str += '	<span class="driverName">Driver ' + mateList.name + '</span>';
	str += '	<span class="schedule">일정 ' + mateList.startDate + ' - ' + mateList.endDate + '</span><br>';
	str += '	<span class="startEnd">';
	str += '		' + mateList.sPlace +  ' → ' + mateList.ePlace + '';
	str += '	</span>';
	str += '	<div class="mateMain_listBox">';
	str += '		<img src="/assets/images/car icon.png">';
	str += '		<span class="seatNo">' + mateList.people + '</span>';
	str += '	</div>';
	str += '</div>';
	
	$(".mateListAll").append(str);
}



//옵션체크 했을때  vo값 변경

</script>
</html>