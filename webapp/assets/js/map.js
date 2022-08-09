/**
 * 
 */
 
 	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(37.48436301061165, 126.9922281879226), // 지도의 중심좌표
	        level: 2 // 지도의 확대 레벨 
	    };
	var temp = {};
	var lat, lon = 0;
	var locPosition = new kakao.maps.LatLng(lat, lon);
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	real(); 
	setInterval(function() {
		$("#map > div > div > div > div").remove();
		real();
	}, 5000);
	// 지도에 마커와 인포윈도우를 표시하는 함수입니다
	function displayMarker(locPosition) {
		var imageSrc = './assets/images/logo.png', // 마커이미지의 주소입니다    
			imageSize = new kakao.maps.Size(48, 62), // 마커이미지의 크기입니다
			imageOption = {offset: new kakao.maps.Point(27, 69)};
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)
	    // 마커를 생성합니다
	    var marker = new kakao.maps.Marker({  
			map: map,
	    	position: locPosition,
	        image: markerImage
	    });
		map.setCenter(locPosition);
	}
	function real() {
		if (navigator.geolocation) {
		    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
		    navigator.geolocation.getCurrentPosition(function(position) {
		    	lat = position.coords.latitude, // 위도
				lon = position.coords.longitude; // 경도
		    	var mVo = {};
		   		mVo.lat = lat;
		   		mVo.lon = lon;
		        if (mVo != temp) {
			       	var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
			        temp = mVo;
			       	$.ajax ({
			    		url : "${pageContext.request.contextPath}/now",		
			    		type : "post",
			    		contentType : "application/json",
			    		data : JSON.stringify(temp),
			   			dataType : "json",
			   			success : function(result){
							console.log("good")
			   			},
			   			error : function(XHR, status, error) {
			   				console.error(status + " : " + error);
			   			}
			   		});
			       // 마커와 인포윈도우를 표시합니다
			       displayMarker(locPosition);
		       	}
				});
			} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
			    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667);    
			    displayMarker(locPosition);
			}
	}