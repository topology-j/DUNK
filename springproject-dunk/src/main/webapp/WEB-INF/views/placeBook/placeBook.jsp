<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%
	String selectedDate = request.getParameter("selectedDate");
	String selectedTime = request.getParameter("selectedTime");
%>	
<script src="resources/js/formcheck-ch.js"></script>
		<h2 class="text-center mx-auto mt-5"><b>경기장 예약하기</b></h2>
			
		<form id="placeBook" name="placeBook" action="placeBookProcess" method="post">
			<input type="hidden" name="placeNo" id="placeNo" value="${b1.no}" />
			<input type="hidden" name="placeName" value="${b1.name}" />
			<input type="hidden" name="placeAddress1" value="${b1.address1}" />
			<input type="hidden" name="placeAddress2" value="${b1.address2}" />
			<input type="hidden" name="dates" value="<%= selectedDate %>" />
			<input type="hidden" name="timeBook" value="<%= selectedTime %>" />
			<input type="hidden" name="placePay" value="${b1.pay}" />
			<input type="hidden" name="userId" id="userId" value="${sessionScope.id}" />
			<input type="hidden" name="userNick" value="${sessionScope.nick}" />
			
		
			
			
		<div class="text-center mx-auto" id="">
			<div class="">			
				<h3 class="mt-5"><b id="placeName" name="placeName">${b1.name}</b></h3>
		
				<h5 class="mt-3">
					<b><span id="placeAddress1" name="placeAddress1">(${b1.address1}</span>			
					<span id="placeAddress2" name="placeAddress2">${b1.address2})</span></b>
				</h5>
			</div>
			
			<div class="mt-3" id="dates" name="dates"><b>예약 날짜</b> : <%= selectedDate %></div>
			<div class="mt-3" id="timeBook" name="timeBook"><b>예약 시간</b> : <%= selectedTime %></div>
			<div class="mt-3" id="placePay" name="placePay">&nbsp;&nbsp;&nbsp;&nbsp;<b>금액</b> : ${b1.pay} 원</div>
			
			<div>
				<label class="font-weight-bold control-label col-sm-3 mt-3"><b>결제 방법</b></label>
				<div class="mt-2">
					
					<input type="button" name="pButton" value="캐쉬사용" id="point" class="btn btn-outline-dark">&nbsp;
					
					
					<input type="button" name="pButton" value="가상계좌" id="account" class="btn btn-outline-dark">
				
					
				</div>
			</div>

			<div class="form-inline col-sm-12">
				<label class="control-label col-sm-12 mt-3" id="userNick" name="userNick">신청자&nbsp;:&nbsp;${sessionScope.nick}</label>
			</div>
			
			<div class="col-sm-12 invalid-form-error-message">
				<h6 class="mt-4">※ 계좌 정보 안내(문자메시지)가 자동으로 전송 됩니다.</h6>
			</div>
			<div class="col-sm-12">
				<button class="btn btn-primary mt-3" id="" type="submit">예 약</button>
			</div>
		</div>
		</form>