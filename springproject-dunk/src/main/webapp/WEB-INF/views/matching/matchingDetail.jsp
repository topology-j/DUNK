<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="resources/js/formcheck-mj.js"></script>

<!-- content -->
<div class="row my-5" id="dunk-content">
	<div class="col">
		<form name="checkForm2" id="checkForm2">
			<input type="hidden" name="no" id="no" value="${matchingItem.no}" />
			<input type="hidden" name="pageNum" value="${ pageNum }" />
		</form>
		<div class="row text-center">
			<div class="col">
				<h2 class="fw-bold fs-3">${ matchingItem.title }</h2>
			</div>
		</div>
		<div class="row my-3">
			<!-- 매치포인트정보시작 상위col1-->
			<div class="col">
				<!-- 매칭정보 col1-row1 -->
				<div class="row">				
						<h3 class="text-center">👉매치 포인트</h3>		
						<p>레벨 : ${matchingItem.level}</p>		
						<p>성별 : ${matchingItem.gender}</p>
						
						<c:if test="${matchingItem.laws == 0}">
						  <p>경기규칙 : 3x3</p>
						</c:if>
						<c:if test="${matchingItem.laws == 1}">
						  <p>경기규칙 : 5X5</p>
						</c:if>
						<c:if test="${matchingItem.laws == 2}">
						  <p>경기규칙 : 자유매칭</p>
						</c:if>

						<p>지원인원 : ${matchingApplyCount }명</p>
						<p>모집인원 : ${matchingItem.inwon}</p>
						<hr>
						<pre>${ matchingItem.information }</pre>
					</div>	
					<!-- 경기장정보 col1-row2-->
					<div class="row">
						<h2>경기장 정보</h2>
						<p>*경기장정보 불러오기</p>
					</div>
					<!-- 주의사항 col1-row3-->
					<div class="row">
						<div class="accordion" id="accordionExample">
							<div class="accordion-item">
    							<h2 class="accordion-header" id="headingOne">
    								<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
        								주의사항
        							</button>
       							</h2>
   							<div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
      							<div class="accordion-body">
									<div>✅ 매치시작 시간 기준<br>
											👉 2일 전 100% 환불<br>
											👉 1일 전 80% 환불<br>
											👉 당일 1시간 30분 이전 20% 환급 + 팀워크 점수 5점 차감<br>
											👉 당일 1시간 30분 이내 0% + 팀워크 점수 10점 차감<br>
											👉 인원 미충족시 전액환불<br>
											☂️  시간당 10mm 우천 예정 혹은 실제 강우시 (기상청 날씨누리, 매치 기준 1:30 전 기준)<br>
											☂️  우천시에도 인원 확정시는 매치 정상진행되며, 극심한 우천상황시에는 현장에서 매니저님에 의해 진행 여부가 결정됩니다. <br> 
											📌 취소 환불 금액은 해당 경기 시작점으로 부터 취소 시점에 따라 비율이 상이하며,<br>
											취소 신청 없이 무단 불참시 환불 불가와 더불어 서비스 이용 제한이 발생합니다.<br>
											 📌 취소 및 경기 변경 또한 동일한 환불 규정이 적용되니 신중한 신청 부탁드립니다.
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		<!-- 매치날짜,주소,타이틀(플랩이랑 유사하게) 상위col2-->
		<div class="col">
			<div class="row">
			<!-- 매칭장소지도구현 -->
			<div id="map517" style="width:550px;height:400px;"></div>
				<!-- 매칭정보 -->
				<p>날짜<fmt:formatDate value="${ matchingItem.date }" pattern="yyyy-MM-dd" />/${ matchingItem.time }시</p>
				<h4>${ matchingItem.title }</h4>
				<p>주소${ matchingItem.name}</p>
				<div><img src="resources/main_img/readCount.svg">${ matchingItem.readCount }</div><hr>
				<div>${ matchingItem.pay}원/*몇시간</div><hr>
				<!-- 로그인일시 신청버튼보이게. -->
				<c:if test="${sessionScope.isLogin}">
					<div class="col text-center" data-bs-target="#exampleModal">
						<button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#exampleModal"
						${matchingItem.inwon > matchingItem.matchingApplyCount ? '' : 'disabled'}>
							
						    <c:if test="${matchingItem.inwon > matchingItem.matchingApplyCount}">
								<div class="text-center rounded-pill p-2" style="background-color: #fa9300">
									<p class="text-white">신청가능</p>
								</div>
							</c:if>
					        <c:if test="${matchingItem.inwon - m.matchingApplyCount eq 1}">
								<div class="bg-danger text-center rounded-pill p-2">
									<p class="text-white">마감임박</p>
								</div>
							</c:if>
						    
						    <c:if test="${matchingItem.inwon <= matchingItem.matchingApplyCount}">
								<div class="text-center rounded-pill p-2" style="background-color: #B9B9B9">
									<p class="text-white">모집마감</p>
								</div>
							</c:if>
						</button>
					</div>
				</c:if>
				
				<!-- 로그인이 아닐시 보이는 안내멘트 -->
				<c:if test="${ not sessionScope.isLogin}">
					<div class="text-center">
						<a href="loginForm">
							<i class="bi bi-dribbble"></i>로그인하고 매칭신청하기
						</a>
					</div>
				</c:if>

				
				<!-- 매치신청하기 모달 -->
				<form action="matchingApply" method="post">
					<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					      	<input type="hidden" name="matchingNo" value="${matchingItem.no}"/>
					     
					        <section>
					        	<h5>신청하기</h5>
					        	<div class="col">
					        		<div class="form-check form-check-inline">
									  <input class="form-check-input" type="radio" name="userId" id="userId" value="${sessionScope.id}" checked>
									  <label class="form-check-label" for="userId">본인신청</label>
									</div>
									<div class="form-check form-check-inline">
									  <input class="form-check-input" type="radio" name="teamNo" id="teamNo" value="#" disabled>
									  <label class="form-check-label" for="teamNo">동반신청</label>
									</div>
									<p class="mt-3 text-danger">주의사항</p>
									<p class="mt-4 mb-2" >신청인정보</p>
									<div>${sessionScope.nick}</div>
					        	</div>
					        </section>
					        <hr>
					        <section>
					        	<h5>결제하기</h5>
					        	<div class="col">
					        		<div class="row">
					        			<div class="d-flex justify-content-between p-2">
						        			<h6>보유포인트</h6>
						        			<h6>${point}</h6>
					        			</div>
					        		</div>
					        		<div class="row">
					        		</div>
					        		<div class="row">
					        			<div class="d-flex justify-content-between p-2">
						        			<h6>총결제 포인트</h6>
						        			<h6 class="text-danger">${ matchingItem.pay}</h6>
					        			</div>
					        		</div>
					        	</div>
					        </section>
					      </div>
					      <div class="modal-footer">
					      	<div class="col text-center">
								<input type="submit" class="btn btn-warning" value="매칭신청하기">
					        </div>
					      </div>
					    </div>
					  </div>
					</div>
						
					</form><!-- 모달 끝  -->
					
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
							"${matchingItem.address1}",
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
												content : '<div style="width:150px;text-align:center;padding:6px 0;">${matchingItem.name}</div>'
											});
									infowindow.open(map, marker);

									// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
									map.setCenter(coords);
								}
							});
		</script>
	
		<!-- 수정,삭제는 로그인 구현시 if처리 -->
			<div class="row my-3">
				<div class="col text-center">
					<c:if test="${sessionScope.isLogin and sessionScope.id eq matchingItem.userId}">
						<input type="button" class="btn btn-danger" id="mDelete" value="삭제하기">&nbsp;&nbsp;
					</c:if>
					<input class="btn btn-primary" type="button" value="목록보기" onclick="location.href='matchingList?pageNum=${pageNum}&selectedDate=${selectedDate}'"/>
				</div>
			</div>
		</div>
</div>
	
	