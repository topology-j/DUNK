<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%
	String selectedDate = request.getParameter("selectedDate");
	String selectedTime = request.getParameter("selectedTime");
%>	
<style>
#payModal{
    display: none;
    position: fixed;
    z-index: 2000;
    left: 0px;
    top: 0px;
    width: 1000px; /*  모달 가로 크기 */
  	height: 500px; /* 모달 세로크기 */
    width: 100%;
    height: 100%;
    overflow: auto;
    background-color: rgba(0,0,0,0.7);
}

#payModalContainer{
    position: fixed;
    background-color: #fefefe;
    border: 1px solid #999;
    width: 50%;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    padding: 20px;
    box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.75);
}
	
	}
</style>

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
			<input type="hidden" name="isBook" id="isBook" value="0" />
			
			<input type="hidden" id="currentPoint" value="${point}">
			
			<input type="hidden" id= "point" value="${point - b1.pay}">
		
			
		
			
			
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
			<div class="mt-3" id="placePay" name="placePay">&nbsp;&nbsp;&nbsp;&nbsp;<b>총 금액</b> : ${b1.pay}원</div>
			<div class="mt-3" ><b>보유 포인트</b> : ${point}원</div>
			<div class="mt-3" id=""><b>남은 포인트</b>: ${point - b1.pay}원</div>
<!-- 			<div> -->
<!-- 				<label class="font-weight-bold control-label col-sm-3 mt-3"><b>결제 방법</b></label> -->
<!-- 				<div class="mt-2">					 -->
<!-- 					<input type="button" name="pButton" value="캐쉬사용" id="point" class="btn btn-outline-dark">&nbsp; -->
<!--  					<input type="button" name="pButton" value="가상계좌" id="account" class="btn btn-outline-dark"> -->
<!-- 				</div> -->
<!-- 			</div> -->

			<div class="form-inline col-sm-12">
				<label class="control-label col-sm-12 mt-3" id="userNick" name="userNick"><b>신청자</b>&nbsp;:&nbsp;${sessionScope.nick}</label>
			</div>
			
<!-- 			<div class="col-sm-12 invalid-form-error-message"> -->
<!-- 				<h6 class="mt-4">※ 계좌 정보 안내(문자메시지)가 자동으로 전송 됩니다.</h6> -->
<!-- 			</div> -->

		</div>
		</form>
		
		
		<!-- 모달 창 이동 버튼 -->
		<div class="col-sm-12 text-center mx-auto">
			<button id="payModalOpen" class="btn btn-primary mt-4">예약 하기</button>
		</div>
		
		<!-- 모달 창 view -->
		<div id="payModal" class="text-center mx-auto">
			<div id="payModalContainer" >
				<div><b>예약 버튼을 누르면 최종 예약이 완료됩니다.</b></div>
				<div class="mt-3">
					
					<div style="display: flex; justify-content: space-between;">
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
							<button class="btn btn-primary" id="" type="submit">예 약</button>
						</form>
						<button id="modalClose" class="btn btn-danger">닫기</button>
					</div>
				</div>
			</div>
		</div>
		
		