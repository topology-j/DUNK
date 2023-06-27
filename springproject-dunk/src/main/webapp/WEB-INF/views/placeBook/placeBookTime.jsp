<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Time"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/monthCal.css">
<style>
    .Calendar {
        border: 1px solid black;
    }

</style>
<script src="resources/js/placeBookingCal.js"></script>
<script type="text/javascript">
var buttons = document.getElementsByClassName("timeBtnClass");
for (var i = 0; i < buttons.length; i++) {
  buttons[i].addEventListener("click", function() {
    // 다른 버튼들의 선택 상태 제거
    for (var j = 0; j < buttons.length; j++) {
      buttons[j].classList.remove("selected");
    }
    // 클릭한 버튼에 선택 상태 추가
    this.classList.add("selected");
  });
}
</script>

<script src="resources/js/formcheck-ch.js"></script> 
<title>달력</title>
</head>
	<form name="placeCheckForm" id="placeCheckForm">
			<input type="hidden" name="no" id="no" value="${b1.no}" />
			<input type="hidden" name="selectedDate" id="selectedDate" />
			<input type="hidden" name="selectedTime" id="selectedTime" />
	</form>
<body>
	<form id="placeBookTime" name="placeBookTime" action="placeBookTimeProcess">
	</form>
	
	<h2 class="text-center mx-auto mt-5"><b>시간 선택</b></h2>
	
	<div class="text-center mx-auto mt-5"><b>(날짜를 선택하시면 예약 가능 시간이 출력됩니다.)</b></div>
	
	<table class="Calendar mt-3">
		<thead>
			<tr>
				<td onClick="prevCalendar();" style="cursor:pointer;">&#60;</td>
				<td colspan="5">
					<span id="calYear"></span>년
					<span id="calMonth"></span>월
				</td>
				<td onClick="nextCalendar();" style="cursor:pointer;">&#62;</td>
			</tr>
			<tr>
				<td>일</td>
				<td>월</td>
				<td>화</td>
				<td>수</td>
				<td>목</td>
				<td>금</td>
				<td>토</td>
			</tr>
		</thead>
		<tbody>		
		</tbody>
	</table>
		<!-- 선택된 날짜 -->
		
		<!-- 캘린더 날짜 클릭하면 시간 나옴 -->
		
		<!-- 달력에  -->
		<div id="selectedDate" class="text-center mt-3"><span id="formattedDate"></span></div>
	
<!-- 		<div id="timeList" class="d-flex justify-content-center mt-4"> -->
<%-- 			<c:forEach var="time" items="${placeBookingList}" varStatus="status" begin="0" end="4" >					 --%>
<%-- 					<c:if test='${ time == "10:00~12:00"}'>  --%>
<!-- 						<button id="timeBtn1"  class= "timeBtnClass" value="10:00~12:00">10:00~12:00</button>&nbsp;&nbsp; -->
<%-- 					</c:if> --%>
<%-- 					<c:if test='${ time == "12:00~14:00"}'>  --%>
<!-- 						<button id="timeBtn2"  class= "timeBtnClass" value="12:00~14:00">12:00~14:00</button>&nbsp;&nbsp; -->
<%-- 					</c:if> --%>
<%-- 					<c:if test='${ time == "14:00~16:00"}'>  --%>
<!-- 						<button id="timeBtn3"  class= "timeBtnClass" value="14:00~16:00">14:00~16:00</button>&nbsp;&nbsp; -->
<%-- 					</c:if> --%>
<%-- 					<c:if test='${ time == "16:00~18:00"}'>  --%>
<!-- 						<button id="timeBtn4"  class= "timeBtnClass" value="16:00~18:00">16:00~18:00</button>&nbsp;&nbsp; -->
<%-- 					</c:if> --%>
<%-- 					<c:if test='${ time == "18:00~20:00"}'>  --%>
<!-- 						<button id="timeBtn5"  class= "timeBtnClass" value="18:00~20:00">18:00~20:00</button>&nbsp;&nbsp; -->
<%-- 					</c:if> --%>
<%-- 					<c:if test='${ time == "20:00~22:00"}'>  --%>
<!-- 						<button id="timeBtn6"  class= "timeBtnClass" value="20:00~22:00">20:00~22:00</button>&nbsp;&nbsp; -->
<%-- 					</c:if> --%>
<%-- 				</c:forEach>		 --%>
<!-- 		</div> -->

		
		<!-- 캘린더 날짜 클릭하면 시간 나옴 -->
		<div id="timeList" class="d-flex justify-content-center mt-4">
			<button id="timeBtn1"  class= "btn btn-outline-dark timeBtnClass"  value="10:00~12:00">10:00~12:00</button>&nbsp;&nbsp;
			<button id="timeBtn2"  class= "btn btn-outline-dark timeBtnClass"  value="12:00~14:00">12:00~14:00</button>&nbsp;&nbsp;
			<button id="timeBtn3"  class= "btn btn-outline-dark timeBtnClass"  value="14:00~16:00">14:00~16:00</button>&nbsp;&nbsp;
			<button id="timeBtn4"  class= "btn btn-outline-dark timeBtnClass"  value="16:00~18:00">16:00~18:00</button>&nbsp;&nbsp;
			<button id="timeBtn5"  class= "btn btn-outline-dark timeBtnClass"  value="18:00~20:00">18:00~20:00</button>&nbsp;&nbsp;
			<button id="timeBtn6"  class= "btn btn-outline-dark timeBtnClass"  value="20:00~22:00">20:00~22:00</button>&nbsp;&nbsp;
		</div>

	<br><br>
	<div class="d-flex justify-content-center">
	<input type="button" class="btn btn-primary" id="placeBookBtn" style="display: none" value="장소 예약"/>&nbsp;&nbsp;
	<button type="button" class="btn btn-primary" onclick="location.href='basic'">basic</button>
	</div>
</body>
</html>