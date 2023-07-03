<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%
	String selectedDate = request.getParameter("selectedDate");
	String selectedTime = request.getParameter("selectedTime");
%>	
<style>
</style>
<script src="resources/js/formcheck-ch.js"></script>
<link href="resources/css/placeBook.css"  rel="stylesheet"/>		
		<h2 class="text-center mx-auto mt-5"><b>경기장 예약하기</b></h2>			

			
			<div class="text-center mx-auto" id="">			
				<div class="">			
					<h3 class="mt-5"><b id="placeName" name="placeName">${b1.name}</b></h3>
					<h5 class="mt-3">
						<b>
							<span id="placeAddress1" name="placeAddress1">(${b1.address1}</span>			
							<span id="placeAddress2" name="placeAddress2">${b1.address2})</span>
						</b>
					</h5>	
				</div>		
				<div class="info-table mt-4 fw-bold">
					<div class="info-table-row">
						<div class="info-table-cell">예약 날짜</div>
						<div class="info-table-cell" id="dates" name="dates"><%= selectedDate %></div>
					</div>
					<div class="info-table-row">
						<div class="info-table-cell">예약 시간</div>
						<div class="info-table-cell" id="timeBook" name="timeBook"><%= selectedTime %></div>
					</div>
					<div class="info-table-row">
						<div class="info-table-cell">총 금액</div>
						<div class="info-table-cell" id="placePay" name="placePay">${b1.pay}원</div>
					</div>
					<div class="info-table-row">
						<div class="info-table-cell">보유 포인트</div>
						<div class="info-table-cell" id="currentPoint">${point}원</div>
					</div>
					<div class="info-table-row">
						<div class="info-table-cell">예약 후 포인트</div>
						<div class="info-table-cell">${point - b1.pay}원</div>
					</div>
					<div class="info-table-row">
						<div class="info-table-cell">신청자</div>
						<div class="info-table-cell" id="userNick" name="userNick">${sessionScope.nick}</div>
					</div>
				</div>
			</div>
			
			
<!-- 			<div class="text-center mx-auto" id="">			 -->
<!-- 				<div class="">			 -->
<%-- 					<h3 class="mt-5"><b id="placeName" name="placeName">${b1.name}</b></h3> --%>
<!-- 					<h5 class="mt-3"> -->
<!-- 						<b> -->
<%-- 							<span id="placeAddress1" name="placeAddress1">(${b1.address1}</span>			 --%>
<%-- 							<span id="placeAddress2" name="placeAddress2">${b1.address2})</span> --%>
<!-- 						</b> -->
<!-- 					</h5>	 -->
<!-- 				</div>		 -->
<%-- 				<div class="mt-3" id="dates" name="dates"><b>예약 날짜</b> : <%= selectedDate %></div> --%>
<%-- 				<div class="mt-3" id="timeBook" name="timeBook"><b>예약 시간</b> : <%= selectedTime %></div> --%>
<%-- 				<div class="mt-3" id="placePay" name="placePay"><b>총 금액</b> : ${b1.pay}원</div> --%>
<%-- 				<div class="mt-3" id="currentPoint" ><b>보유 포인트</b> : ${point}원</div> --%>
<%-- 				<div class="mt-3" id=""><b>예약 후 포인트</b> : ${point - b1.pay}원</div> --%>
<!-- 				<div class="form-inline col-sm-12"> -->
<%-- 					<label class="control-label col-sm-12 mt-3" id="userNick" name="userNick"><b>신청자</b>&nbsp;:&nbsp;${sessionScope.nick}</label> --%>
<!-- 				</div> -->
<!-- 			</div>	 -->
			
			
		<!-- 모달 창 이동 버튼 -->
		<div class="col-sm-12 text-center mx-auto">
			<button id="payModalOpen" class="btn btn-primary mt-4 fw-bold">예약하기</button>
		</div>
		
		<!-- 모달 창 view -->
		<div id="payModal" class="text-center mx-auto">
			<div id="payModalContainer" >
				<div><h4><b>예약 버튼을 누르면 포인트 차감 후 예약이 완료됩니다.</b></h4></div>
				<div class="mt-3 fw-bold" id="dates" name="dates">예약 날짜 : <%= selectedDate %></div>
				<div class="mt-3 fw-bold" id="timeBook" name="timeBook">예약 시간 : <%= selectedTime %></div>
				<div class="mt-3 fw-bold" id="">예약 후 포인트 : ${point - b1.pay}원</div>
				
				<div class="mt-3">				
					<div class="text-center mx-auto d-flex justify-content-center align-items-center">
						<form id="placeBook" name="placeBook" action="placeBookProcess" method="post">
							<input type="hidden" name="placeNo" id="placeNo" value="${b1.no}" />
							<input type="hidden" name="placeName" value="${b1.name}" />
							<input type="hidden" name="placeAddress1" value="${b1.address1}" />
							<input type="hidden" name="placeAddress2" value="${b1.address2}" />
							<input type="hidden" name="placePay" value="${b1.pay}" />
							<input type="hidden" name="userId" id="userId" value="${sessionScope.id}" />
							<input type="hidden" name="userNick" value="${sessionScope.nick}" />
							<input type="hidden" name="dates" value="<%= selectedDate %>" />
							<input type="hidden" name="playerNum" id="playerNum" value="${b1.availNum}" />			
							<input type="hidden" name="timeBook" value="<%= selectedTime %>" />
							<input type="hidden" name="currentPoint" value="${point}">								
							<button class="btn btn-primary fw-bold" id="" type="submit">예 약</button>&nbsp;&nbsp;
						</form>							
						<button id="modalClose" class="btn btn-danger fw-bold">닫 기</button>
					</div>
				</div>
			</div>
		</div>
		
		