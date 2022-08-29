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

<title>myQnaWriteForm</title>

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
					<h3>문의내역</h3>

					<ul>
						<li>서비스에 대한 문의를 남기는 공간입니다.</li>
						<li>해당 게시판의 성격과 다른 글은 사전 동의 없이 담당 게시판으로 이동될 수 있습니다.</li>
						<li>자주하는 질문(FAQ)는 NOTICE 게시판을 확인해주세요.</li>
					</ul>
				</header>


				<article class="myPage_article2">
				<form method="post"
							action="${pageContext.request.contextPath }/myQnaInsert">
					<h4></h4>


					<div class="myQnaryeo">
					
					
						<table>

							<tr>
								<td><label for="type">유형*</label></td>
								<td><select id="option1" name="type">
										<option value=selected>&nbsp;&nbsp;문의 유형을 선택해주세요</option>
										<option value="카풀">카풀 문의</option>
										<option value="히치하이크">히치하이크 문의</option>
										<option value="메이트">메이트 문의</option>
										<option value="드라이버">드라이버 문의</option>
										<option value="포인트">포인트/쿠폰문의</option>
										<option value="기타">기타문의</option>
								</select></td>
							</tr>


							<tr>
								<td><label>제목*</label></td>
								<td><input id="qnatitle" name="title" placeholder="&nbsp;제목을 작성해주세요"
									type="text"></td>
							</tr>
							<tr>
								<td><span>내용*</span></td>
								<td><textarea name="content" placeholder="내용을 입력해주세요"></textarea></td>
							</tr>
							<!-- <tr>
								<td><span>이미지</span></td>
								<td><input type="file" name="image" class="real-upload" accept="image/*" required multiple style="display: none;">
									<div type="button" class="imgbox">
										<img src="/assets/images/myQna_imgfilebox.png" alt="파일 아이콘" class="image"> 
										
									</div>
									</td>
							</tr> -->
						</table>
						
					</div>
					<div class="QnaWFp_group">
						<p class=gray_bottomtext>* 30MB이상의 이미지만 업로드 가능합니다.</p>
						<p class=gray_bottomtext>* 서비스와 무관한 내용이거나 음란 및 불법적인 내용은 사전
							통보없이 삭제될 수 있습니다.</p>
						<p class=gray_bottomtext>* 사진은 최대 8장까지 등록가능합니다.</p>
					</div>
					<br> <br>
					<div class="underlinegray"></div>
					<!--  <input type="submit" value="등록하기" alt="등록하기"
						class="DForm_enrollbtn"> -->
						<input type="submit" placeholder="등록하기" class="DForm_enrollbtn0">
</form>
				</article>
			</section>
		</main>


		<!-- //banner & footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	</div>

</body>
<script type="text/javascript">

function getImageFiles(e) {
	 const uploadFiles = [];
    const files = e.currentTarget.files;
    const imagePreview = document.querySelector('.image-preview');
    console.log(typeof files, files);
    const docFrag = new DocumentFragment();
    
    // 파일 타입 검사
    [...files].forEach(file => {
      if (!file.type.match("image/.*")) {
        alert('이미지 파일만 업로드가 가능합니다.');
        return
      }
  
    }
  }

const realUpload = document.querySelector('.real-upload');
const imgbox = document.querySelector('.imgbox');

imgbox.addEventListener('click', () => realUpload.click());
realUpload.addEventListener('change', getImageFiles);
</script>

</html>