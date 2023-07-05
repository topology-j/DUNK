<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<script src="resources/js/myCalender.js" ></script>
<link rel="stylesheet" href="resources/css/myCalender.css">   

<div class="row">
	<div class="col p-4">
	<div id="myCalender">
	        <table class="Calendar">
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
	    </div>
	</div>
	<div class="col p-4">
		<div class="row">
			<h3 class="text-center">매칭정보</h3>
		</div>
		<div class="row">
			<c:if test="${not empty myApplyList }">
				<c:forEach var="mal" items="${myApplyList}">
					<ul class="list-group list-group-flush pb-3">
						<a href="myApplyDetail?no=${mal.no}" class="text-decoration-none">
							<li class="list-group-item">
								${mal.date},${mal.time},${mal.name}
							</li>
						</a>
					</ul>
				</c:forEach>
			</c:if>
			<c:if test="${ empty myApplyList }">
				<p>아직 경기가 없습니다!</p>
			</c:if>
		
		</div>
	</div>
</div>
