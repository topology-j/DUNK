<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!-- 나의 매칭내역 상세보기 -->
<div class="row">
	<div class="col text-center">
		<div class="row p-3">
			<h3>나의 매칭 정보 상세보기</h3>
		</div>
		<div class="row">
			<p>모임 타이틀 : ${myApply.title}</p>
			
			<div class="row justify-content-center">
				<!-- 매칭장소지도구현 -->
				<div id="map517" style="width:550px;height:400px;"></div>
			</div>
			<p>모임 장소: ${myApply.name}</p>
			<p>모임 장소 상세주소: ${myApply.address1}</p>
			<p>참가비: ${myApply.pay}</p>
			<p>일시: ${myApply.date}.${myApply.time}</p>
			<p>신청자 아이디: ${myApply.userId}</p>
		</div>
		<div class="row">
			<div class="col text-center">
				<a class="btn" style="border-color: #fa9300" href="myCalender">내 일정목록</a>
			</div>
		</div>
	</div>
</div>
<!-- 카카오지도생성 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=12b3e50d52ec3f5f679638a93c481864&libraries=services"></script>
		<script>
			var mapContainer = document.getElementById('map517'); // 지도를 표시할 div 
			var mapOption = {
				center : new kakao.maps.LatLng(0, 0), // 지도의 중심좌표
				level : 3// 지도의 확대 레벨
			};

			// 지도를 생성합니다    
			var map = new kakao.maps.Map(mapContainer, mapOption);

			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();

			// 주소로 좌표를 검색합니다
			geocoder.addressSearch(
							"${myApply.address1}",
							function(result, status) {

								// 정상적으로 검색이 완료됐으면 
								if (status === kakao.maps.services.Status.OK) {

									var coords = new kakao.maps.LatLng(
											result[0].y, result[0].x);

									// 결과값으로 받은 위치를 마커로 표시합니다
									var marker = new kakao.maps.Marker({
										map : map,
										position : coords
									});

									// 인포윈도우로 장소에 대한 설명을 표시합니다
									var infowindow = new kakao.maps.InfoWindow(
											{
												content : '<div style="width:150px;text-align:center;padding:6px 0;">${myApply.name}</div>'
											});
									infowindow.open(map, marker);

									// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
									map.setCenter(coords);
								}
							});
		</script>
