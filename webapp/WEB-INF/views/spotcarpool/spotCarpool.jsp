<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
<script src="/assets/js/jquery-1.11.0.min.js"></script>

<title>스팟 카풀 리스트</title>



</head>


<body>


<!-- 	<div id="wrap"> -->
	
		<!-- header-->
		<c:import url="../includes/header.jsp"></c:import>
		<!-- //header-->
		
					
		
		<!-- CONTENT -->

		
		<div class="content-head">
		<div class="clear" style="width:1920px; margin:0px auto;">
			<div class="carpool-MainText1">
			<span>같이 타고 가요</span><p>SPOT CARPOOL</p>
		</div> <span class="carpool-MainText2"> 이동하는 경로가 비슷한 드라이버를 찾아 <br> 출발지부터 목적지까지 편하게 이동해보세요.
			</span>
		</div>
		</div>
		
		<div id="content" class="clear">
			<form class="searchForm" action="/spotCarpool/list" method="get">
								
				<button type="submit" class="search">
					<img class="carpoolSearchPicto" src="/assets/images/round-search.png">
					<p>검색하기</p>
				</button>
				

				<div class="carpoolInput">
					<input class="input1" type="text" name="splace" value="" placeholder="출발지를 입력하세요">
					<!--<button>
						<img class="carpoolInput1Picto" src="/assets/images/arrows_exchange02.png">
					</button>  -->
				</div>

				<input class="input2" type="text" name="eplace" value="" placeholder="도착지를 입력하세요">
				
				<input class="input3" type="time" name="time" value="" placeholder="출발시간">
				
				<div class="carpoolInput">
					<input class="input4" type="number" name="people" value="" placeholder="인원수">
					<!-- <button>
						<img class="carpoolInput4Picto" src="/assets/images/ico_updown.png">
					</button> -->
				</div>
				
				<div class="carpoolInput"> 
					<input  class="input5" type="date" name="startDate" value="" placeholder="이용 출발 날짜">
					<!--<button>
						<img class="carpoolInput5Picto" src="/assets/images/regularcalendar.png">
					
					</button>  -->
				</div>
				
				<div class="carpoolInput">
					<input class="input6" type="date" name="endDate" value="" placeholder="이용 도착 날짜"> 
					<!--<button>
						<img class="carpoolInput6Picto" src="/assets/images/regularcalendar.png">
					</button>  -->
				</div>

		

				<div class="detail">
				
					<label>
					<span class="detailtext"><input type="checkbox" name="ch_type" value="nonSmoke">&nbsp;&nbsp;비흡연자</span>
					</label>
					
					<label>
					<span class="detailtext"><input type="checkbox" name="ch_type" value="femaleDriver">&nbsp;&nbsp;여성드라이버</span>
					</label>
					
					<label>
					<span class="detailtext"><input type="checkbox" name="ch_type" value="pet">&nbsp;&nbsp;반려동물</span> 
					</label>
					
					<label>
					<span class="detailtext"><input type="checkbox" name="ch_type" value="phoneCharger">&nbsp;&nbsp;충전기 사용 가능</span>
					</label>
					
					<label>
					<span class="detailtext"><input type="checkbox" name="ch_type" value="handWash">&nbsp;&nbsp;트렁크 사용 가능</span>
					</label>
				
				</div>
			</form>


			<div class="carList">
				<span class="listText">탑승 가능 차량 리스트</span>
			</div>


			<div class="list">
		
				<table>
					<thead>
						<tr>
							<th>번호</th>		
							<th>유형</th>
							<th>출발지</th>
							<th>도착지</th>
							<th>지급 포인트</th>
							<th>드라이버</th>
							<th>상태</th>			
						</tr>
					</thead>

					<tbody>
					<!--  
						<c:forEach items="${carpoolList}" var="carpoolVo">
							<tr>
								<td>${carpoolVo.no }</td>
								<td>${carpoolVo.type}</td>
								<td><c:if test="${carpoolVo.wayNo == 0}">
							${carpoolVo.place}</c:if></td>
								<td><c:if test="${carpoolVo.wayNo == 6}">
							${carpoolVo.place}</c:if></td>
								<td>${carpoolVo.point}</td>
								<td>${carpoolVo.driverNo}</td>
								<td><a href="./spotCarpoolDeep"><button class="board">탑승요청</button></a></td>
	
							</tr>
						</c:forEach>
						
						-->
						
						<c:forEach items="${cMap.carpoolList}" var="carpoolVo">
							<tr>
								<td>${carpoolVo.no}</td>
								<td>${carpoolVo.type}</td>
								<td>${carpoolVo.splace}</td>
								<td>${carpoolVo.eplace}</td>
								<td>${carpoolVo.point}</td>
								<td>${carpoolVo.id}</td>
								<td><a href="/spotCarpoolDeep"><button class="board">탑승요청</button></a></td>
	
							</tr>
						</c:forEach>
					</tbody>
				
				</table>
				
				
				</div> 
				
				<div class="carpool-paging">
							<ul>
							<c:if test="${cMap.prev}">
								<li><a href="/spotCarpool?crtPage=${cMap.startPageBtnNo-1}"> <img class="carpoolPagePicto" src="/assets/images/chevron-double-left.png">
								</a></li>
							</c:if>
							<c:if test="${param.crtPage != 1}">
								<li><a href="/spotCarpool?crtPage=${param.crtPage-1}"> <img class="carpoolPagePicto" src="/assets/images/chevron-left.png">
								</a></li>
							</c:if>

							<c:forEach begin="${cMap.startPageBtnNo}" end="${cMap.endPageBtnNo}" step="1" var="page">
								<c:choose>
									<c:when test="${param.crtPage==page}">
										<li><a class="active" href="/spotCarpool?crtPage=${page}">${page}</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="/spotCarpool?crtPage=${page}">${page}</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:if test="${param.crtPage != cMap.endPageNo}">
								<li><a href="/spotCarpool?crtPage=${param.crtPage+1}"> <img class="carpoolPagePicto" src="/assets/images/chevron-right.png">
								</a></li>
							</c:if>
							<c:if test="${cMap.next}">
								<li><a href="/spotCarpool?crtPage=${cMap.endPageBtnNo+1}"> <img class="carpoolPagePicto" src="/assets/images/chevron-double-right.png">
								</a></li>
							</c:if>
						</ul>
				</div>				
			</div>		
		
		
		
		
		<!-- footer-->
		<c:import url="../includes/footer.jsp"></c:import>
		<!-- //footer-->
	
	
<!-- 	</div> -->

	
</body>


</html>