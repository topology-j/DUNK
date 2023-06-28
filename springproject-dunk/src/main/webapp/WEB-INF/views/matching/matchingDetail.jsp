<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="resources/js/formcheck-mj.js"></script>
<!-- content -->
<div class="row my-5" id="dunk-content">
	<div class="col">
		<form name="checkForm2" id="checkForm2">
			<input type="hidden" name="no" id="no" value="${matching.no}" />
			<input type="hidden" name="pageNum" value="${ pageNum }" />
		</form>
		<div class="row text-center">
			<div class="col">
				<h2 class=" fw-bold fs-3">매칭리스트상세보기</h2>
			</div>
		</div>
		<div class="row my-3">
			<!-- 매치포인트정보시작 상위col1-->
			<div class="col">
				<!-- 매칭정보 col1-row1 -->
				<div class="row">				
						<h2>매치포인트</h2>		
						<p>레벨</p>		
						<p>성별</p>
						<p>경기규칙</p>
						<p>모집인원</p>
						<p>준비물ex)</p>
						<hr>
						<pre>${ matching.information }</pre>
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
				<div id="map">
							<figure class="figure">
							  <img src="resources/main_img/map.png" class="figure-img img-fluid rounded">
							  <figcaption class="figure-caption text-end">지도영역구현</figcaption>
							</figure>
				</div>
				
				<p>날짜<fmt:formatDate value="${ matching.date }" pattern="yyyy-MM-dd" />/${ matching.time }시</p>
				<h4>${ matching.title }</h4>
				<p>*주소불러오기</p>
				<div><img src="resources/main_img/readCount.svg">${ matching.readCount }</div><hr>
				<div>${ matching.pay}원/*몇시간</div><hr>
				<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">신청하기</button>
				
				<!-- 매치신청하기 모달 -->
				<form action="matchingApply" method="post">
					<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					      	<input type="hidden" name="matchingNo" value="${matching.no}"/>
					     
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
						        			<h6 class="text-danger">${ matching.pay}</h6>
					        			</div>
					        		</div>
					        	</div>
					        </section>
					      </div>
					      <div class="modal-footer">
					      	<div class="col text-center">
								<input type="submit" class="btn btn-warning" id="detailUpdate" value="매칭신청하기">
					        </div>
					      </div>
					    </div>
					  </div>
					</div>
					</form><!-- 모달 끝  -->	
			</div>
		</div>
	</div>
			<!-- 수정,삭제는 로그인 구현시 if처리 -->
			<div class="row my-3">
				<div class="col text-center">
					<input type="button" class="btn btn-warning" id="detailUpdate" value="수정하기">&nbsp;&nbsp;
					<input type="button" class="btn btn-danger" id="mDelete" value="삭제하기">&nbsp;&nbsp;
					<input class="btn btn-primary" type="button" value="목록보기" onclick="location.href='matchingList?pageNum=${pageNum}'"/>
				</div>
			</div>
		</div>
</div>
	
	