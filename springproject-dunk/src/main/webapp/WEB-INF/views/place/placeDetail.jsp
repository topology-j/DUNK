<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
<!-- 사진 효과 -->
  .img-thumbnail:hover {
    transform: scale(1.02); /* 이미지를 확대 */
    transition: transform 0.3s ease; /* 부드러운 애니메이션 효과를 위한 transition 속성 추가 */
  }
  .carousel-item:hover{
	transform: scale(1.02); /* 이미지를 확대 */
	transition: transform 0.3s ease; /* 부드러운 애니메이션 효과를 위한 transition 속성 추가 */
  }
</style>
<meta charset="UTF-8">
<title></title>
<link href="resources/bootstrap/bootstrap.min.css" rel="stylesheet">
<script src="resources/bootstrap/bootstrap.bundle.min.js"></script>
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="resources/js/formcheck-ms.js"></script>
<script src="resources/js/formcheck-ch.js"></script>
<script src="resources/js/reply-ms.js"></script>

<link href="resources/css/place.css"  rel="stylesheet"/>
</head>
<body>
	<form name="placeCheckForm" id="placeCheckForm">
		<input type="hidden" name="no" id="no" value="${b1.no}" />
		<input type="hidden" name="pageNum" value="${ pageNum }" />
	
		<c:if test="${searchOption }">
			<input type="hidden" name="type" value="${ type }" />
			<input type="hidden" name="keyword" value="${ keyword }" />
			<input type="hidden" name="area" value="${ area }" />
			<input type="hidden" name="orderBy" value="${ orderBy }" />
		</c:if>
	</form>
	
	<!-- 큰사진 캐러셀 시작-->
	<div class="row mt-5">
		<div class="col-8 mx-auto text center">
			<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="./resources/placeimg/${b1.image1}" class="d-block w-100" >
			    </div>
			    <div class="carousel-item">
			      <img src="./resources/placeimg/${b1.image2}" class="d-block w-100" >
			    </div>
			    <div class="carousel-item">
			      <img src="./resources/placeimg/${b1.image3}" class="d-block w-100" >
			    </div>
			  </div>
			  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Previous</span>
			  </button>
			  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Next</span>
			  </button>
			</div>
		</div>
	</div>
	<!-- 큰사진 캐러셀 끝 -->
	
	<!-- 세개 사진불러오기 시작-->
	<div class = "row mt-3">
	<div class = "col-8 mx-auto text center">
		<div class="container text-center">
			<div class="row">
				<div class="col-4">
					<img src="${pageContext.request.contextPath}/resources/placeimg/${b1.image1}" class="img-fluid img-thumbnail img-fluid" >
				</div>
				<div class="col-4">
					<img src="${pageContext.request.contextPath}/resources/placeimg/${b1.image2}" class="img-fluid img-thumbnail img-fluid" >
				</div>
				<div class="col-4">
					<img src="${pageContext.request.contextPath}/resources/placeimg/${b1.image3}" class="img-fluid img-thumbnail img-fluid" >
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- 세개 사진불러오기 끝 -->
	<div class="row">
		<div class="text-center">
		  <p class="fs-1">${b1.name}</p>
		</div>
	</div>
	
	<!-- 정보불러오는 테이블 -->
	<div class="row">
		<div class="col-5 mx-auto text center mt-3">
			<table class="table table-bordered">
				<thead>
				</thead>
				<tbody>
					<tr><!-- 번호 -->
						<th scope="row" style="text-align: center;"><img src="./resources/icon/telephone.png" style="width: 1cm; height: 1cm;" /></th>
						<td style="text-align: center;">${b1.phone}</td>
					</tr>
					<tr><!-- 가격 -->
						<th scope="row" style="text-align: center;"><img src="./resources/icon/dollar.png"  style="width: 1cm; height: 1cm;" /></th>
						<td style="text-align: center;">${b1.pay}</td>
					</tr>
					<tr><!-- 이용시간 -->
						<th scope="row" style="text-align: center;"><img src="./resources/icon/wall-clock.png"  style="width: 1cm; height: 1cm;" /></th>
						<td style="text-align: center;">${b1.startTime} ${b1.endTime}</td>
					</tr>
					<tr><!-- 조회수 -->
						<th scope="row" style="text-align: center;"><img src="./resources/icon/vision.png"  style="width: 1cm; height: 1cm;" /></th>
						<td style="text-align: center;">${b1.readCount}</td>
					</tr>
					<tr><!-- 추천수와 추천버튼 -->
						<th scope="row" style="text-align: center;"><img src="./resources/icon/hearts.png" style="width: 1cm; height: 1cm;" /></th>
						<td style="text-align: center;">
						 	<span>${b1.recommend}</span>
						</td>
					</tr>
					<tr><!-- 주차 -->
						<th scope="row" style="text-align: center;"><img src="./resources/icon/parking.png" 
		       style="width: 1cm; height: 1cm;" /> </th>
						<td style="text-align: center;">${b1.park}</td>
					</tr>
					<tr><!-- 인원수 -->
						<th scope="row" style="text-align: center;"><img src="./resources/icon/audience.png" 
		       style="width: 1cm; height: 1cm;" /> </th>
						<td style="text-align: center;">${b1.availNum}</td>
					</tr>
					<tr><!-- 공유 url복사 + 카카오톡 공유 보내기 -->
						<th scope="row" style="text-align: center;"> 
							<img src="./resources/icon/share.png"  style="width: 1cm; height: 1cm;" />
		  			     </th>
						<td style="text-align: center;">
							<img src="./resources/icon/shareUrl.png"  style="width: 1cm; height: 1cm;" onclick="copyUrl()" />&nbsp;&nbsp;
							<a href="javascript:sendLink()"><img src="https://developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png" style="width: 1cm; height: 1cm;"/></a>
						</td>
					</tr>
					<tr><!-- 주소 -->
						<th scope="row" style="text-align: center;"><img src="./resources/icon/address.png"  style="width: 1cm; height: 1cm;" /></th>
						<td style="text-align: center;">${b1.address1} ${b1.address2}</td>
					</tr>
					<tr>
					<th scope="row" style="text-align: center;"></th><!-- 네이버페이, 예약하기 -->
					<td style="text-align: center;">	
						<div class="row">
							<div class="col">
								<button type="button" id="naverPayBtn" class="btn btn-outline-success">네이버페이</button>
								<button type="button" class="btn btn-outline-danger"  id="placeBookTermsBtn" >예약하기</button>
							</div>
						</div>
					</td>
				</tbody>
			</table>
		</div>
		
		<div class="col-6" style="margin:10px; padding:10px;">
			<div class="text center" id="map2" style="width:500px;height:600px; margin:10px; padding:10px;"></div>
		</div>		
	</div>
	<div class="row">
	<div class="col" >${b1.content}</div>
	
	<!-- 정보불러오는 테이블 끝-->
	
	<!--주소마커 시작-->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2dd64d952acef053eda67ee450923fd2&libraries=services"></script>
	<script>
		var mapContainer = document.getElementById('map2'); // 지도를 표시할 div
	
		// 지도 옵션 설정
		var mapOption = {
		  center: new kakao.maps.LatLng(0, 0), // 초기 중심 좌표는 임시로 0, 0으로 설정합니다
		  level: 6 // 지도의 확대 레벨
		};
	
		// 지도를 생성합니다
		var map = new kakao.maps.Map(mapContainer, mapOption);
	
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
	
		// 마커 변수 선언
		var marker;
	
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch("${b1.getAddress1()}", function(result, status) {
		  // 정상적으로 검색이 완료됐으면
		  if (status === kakao.maps.services.Status.OK) {
		    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		    map.setCenter(coords); // 주소로 설정한 좌표를 지도의 중심 좌표로 설정합니다
	
		    // 마커를 생성합니다
		    marker = new kakao.maps.Marker({
		      map: map,
		      position: coords
		    });
		    console.log(map, coords);
		  }
		});
	</script>
	<!--주소마커 끝-->
	
	<!-- 기본규정 시작  -->
	<div class="row p-3 mb-2 bg-warning text-dark" id="contentChange" style="margin:20px; padding:20px;"><!-- 주의사항, 환불, 문의 비동기로 -->
		<div class="col-2"><button id="explanationBtn" style="background: none; border: none;">주의사항</button></div>
		<div class="col-2"><button id="refundBtn" style="background: none; border: none;">환불규정</button></div>
		<div class="col-5"><span id="placerecommendbtn" class="PlaceRecommendbtn"> 
											<img src="./resources/icon/like.png" style="width: 0.8cm; height: 0.8cm;  cursor: pointer;" />클릭하면 좋아요 수가 올라갑니다
									</span>
		</div>
		<div class="col-3">
		  	<c:if test="${grade eq '200'}">		
					<input type="button" class="btn btn-primary" id="updatebtn" value="수정form"/>&nbsp;&nbsp;
					<input type="button" class="btn btn-danger" id="placeDetaildeletebtn" value="삭제"/>
			</c:if>
			<c:if test="${not searchOption}">
					<button type="button" class="btn btn-dark" onclick="location.href='placeList?pageNum=${pageNum}'">목록가기</button>
			</c:if>
			<c:if test="${ searchOption}">
				<button type="button" class="btn btn-dark" onclick="location.href='placeList?pageNum=${pageNum}
														&type=${type}&keyword=${keyword}&area=${area}&orderBy=${orderBy}'">목록가기</button>
			</c:if>
		 </div>
	</div>

	<div id="result"><p></p></div>
	<!-- url복사 -->
	<script>
	  function copyUrl() {
	    var url = window.location.href;
	    var textarea = document.createElement("textarea");
	    document.body.appendChild(textarea);
	    textarea.value = url;
	    textarea.select();
	    document.execCommand("copy");
	    document.body.removeChild(textarea);
	    alert("링크가 복사되었습니다. 필요하신 곳에 붙여넣기 하세요!");
	  }
	</script>
	
	<!-- 	네이버결제api  -->
	<script src="https://nsp.pay.naver.com/sdk/js/naverpay.min.js"></script>
	<script>
	    var oPay = Naver.Pay.create({
	          "mode" : "production", // development or production
	          "clientId": "u86j4ripEt8LRfPGzQ8" // clientId
	    });
	
	    //직접 만드신 네이버페이 결제버튼에 click Event를 할당하세요
	    var elNaverPayBtn = document.getElementById("naverPayBtn");
	
	    elNaverPayBtn.addEventListener("click", function() {
	        oPay.open({
	          "merchantUserKey": "79851ed",
	          "merchantPayKey": "929912",
	          "productName": "${b1.getName()}",
	          "totalPayAmount": "${b1.getPay()}",
	          "taxScopeAmount": "${b1.getPay()}",
	          "taxExScopeAmount": "0",
	          "returnUrl": "사용자 결제 완료 후 결제 결과를 받을 URL"
	        });
	    });
	</script>
	<!-- 네이버페이 api 끝  -->
	
	<!-- 카카오 공유하기 시작 -->
	<script type="text/javascript">
	  Kakao.init('2dd64d952acef053eda67ee450923fd2'); // 초기화
	
	  function sendLink() { // 카카오톡 공유하기
	    Kakao.Link.sendDefault({
	      objectType: 'text',
	      text: '[덩크]혼자 농구하기 심심하시죠?🏀 🥇다같이 농구하자🏀 🥇 ',
	      link: {
	        mobileWebUrl: 'http://localhost:8080/springproject-dunk/matchingList',
	        webUrl: 'http://localhost:8080/springproject-dunk/matchingList',
	      },
	    })
	  }
	</script>
	<!-- 카톡공유하기 끝 -->
	
	<!-- 댓글시작  -->
	<!-- 추천/땡큐 영역 -->
	<div class="row my-5">
		<div class="col border p-3">
			<div id="recommend" class="text-end">
				<span id="replyWrite" class="text-primary" style="cursor: pointer;">						
				<i class="bi bi-file-earmark-text-fill" style="color: cornflowerblue;"></i> 댓글쓰기
				</span>					
			</div>
		</div>
	</div>
	
	<!-- 댓글 헤더 영역 -->
	<div class="row" id="replyTitle">
		<div class="col p-2 text-center bg-dark text-white">	
			<h3 class="fs-4">이 글에 대한 댓글 리스트</h3>								
		</div>
	</div>
				
	<!-- 댓글 리스트 영역 -->
	<!-- 댓글이 존재하는 경우 -->
	<c:if test="${ not empty replyList }" >		
	<div class="row mb-3">
		<div class="col" id="replyList">
			<c:forEach var="reply" items="${ replyList }" >
			<div class="replyRow row border border-top-0">
				<div class="col">
					<div class="row bg-light p-2">
						<div class="col-4">
							<span>${ reply.userId }</span>
						</div>
						<div class="col-8 text-end">
							<span class="me-3">
								<fmt:formatDate value="${ reply.regDate}" pattern="yyyy-MM-dd HH:mm:ss" />
							</span>
							<button class="modifyReply btn btn-outline-success btn-sm" data-no="${ reply.no }">
								<i class="bi bi-journal-text">수정</i>									
							</button>
							<button class="deleteReply btn btn-outline-warning btn-sm" data-no="${ reply.no }">
								<i class="bi bi-trash">삭제</i>
							</button>
							<button class="btn btn-outline-danger btn-sm" onclick="reportReply('${ reply.no }')">
								<i class="bi bi-telephone-outbound">신고</i>									
							</button>
						</div>
					</div>	
					<div class="row">
					<div class="col-2 p-3">
							<pre>${ reply.regDate}</pre>
						</div>
						<div class="col-4 p-3">
							<pre>${ reply.replyContent }</pre>
						</div>
					</div>
				</div>	
			</div>				
			</c:forEach>
		</div>
	</div>
	</c:if>
	
	<!-- 댓글이 존재하지 않는 경우 -->
	<c:if test="${ empty replyList }" >		
	<div class="row mb-5" id="replyList">
		<div class="col text-center border p-5">
			<div>이 게시 글에 대한 댓글이 존재하지 않습니다.</div>
		</div>
	</div>
	</c:if>
	
	<!-- 댓글 쓰기 폼 -->
	<div class="row my-3 d-none" id="replyForm">
		<div class="col">
			<form name="replyWriteForm" id="replyWriteForm">
				<input type="hidden" name="placeNo" value="${ b1.no }"/>
				<input type="hidden" name="userId" value="${sessionScope.id}" />  <!--  value="${ sessionScope.member.id }" -->
				<input type="hidden" name="userNick" value="${sessionScope.nick}" />  <!--  value="${ sessionScope.member.id }" -->
				<div class="row bg-light my-3 p-3 border">
					<div class="col">
						<div class="row">
							<div class="col text-center">
								<span>악의적인 댓글은 예고 없이 삭제될 수 있으며 글쓰기 제한과 아이디 삭제 처리됩니다.</span>
							</div>
						</div>						
						<div class="row my-3">								
							<div class="col-md-10">
								<textarea name="replyContent" id="replyContent" class="form-control" rows="4"></textarea>
							</div>
							<div class="col-md">
								<input type="submit" value="댓글쓰기" class="btn btn-primary h-100 w-100" id="replyWriteButton">									
							</div>
						</div>
					</div>
				</div>
			</form>	
		</div>	
	</div><!-- end replyForm -->
<!-- userid와 grade를 받아서 grade가 200이면 아래 수정칼럼이 보이게 수정하기 
  세션에있는 아이디 조회 String id = (String) session.getAttribute("id");-->
	<!--버튼 = 수정하기, 삭제하기, 리스트로 돌아가기 -->
	

	
	
	<!-- 버튼끝 -->

</body>
</html>