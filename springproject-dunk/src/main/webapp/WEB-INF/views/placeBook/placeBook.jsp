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
			<input type="hidden" name="userId" id="userId" value="" />
			<input type="hidden" name="userNick" value="" />
			
			
		<div class="text-center mx-auto" id="">
			<div class="">			
				<h3 class="mt-5"><b id="placeName" name="placeName">${b1.name}</b></h3>
		
				<h5 class="mt-3">
					<span id="placeAddress1" name="placeAddress1">${b1.address1}</span>			
					<span id="placeAddress2" name="placeAddress2">${b1.address2}</span>
				</h5>
			</div>
			
			<div class="mt-2" id="dates" name="dates">예약 날짜 : <%= selectedDate %></div>
			<div class="mt-2" id="timeBook" name="timeBook">예약 시간 : <%= selectedTime %></div>
			<div class="mt-2" id="placePay" name="placePay">&nbsp;&nbsp;&nbsp;&nbsp;금액 : ${b1.pay} 원</div>
			
			<div>
				<label class="control-label col-sm-3 mt-2">결제 방법</label>
				<div>
					<input type="radio" name="option" value="CARD" id="" checked="checked">
					<label>캐쉬사용</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
					<input type="radio" name="option" value="VBANK" id="" checked="checked">
					<label>가상계좌</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</div>
			</div>

			<div class="form-inline col-sm-12">
				<label class="control-label col-sm-12 mt-2" id="userNick" name="userNick">신청자&nbsp;:&nbsp;userNick</label>
			</div>
			
			<div class="col-sm-12 invalid-form-error-message">
				<h6 class="mt-2">※ 계좌 정보 안내(문자메시지)가 자동으로 전송 됩니다.</h6>
			</div>
			<div class="col-sm-12">
				<button class="btn-active mt-2" id="" type="submit">예 약</button>
			</div>
		</div>
		</form>