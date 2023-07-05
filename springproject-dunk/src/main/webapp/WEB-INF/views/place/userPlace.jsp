<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="userIdCheckForm" id="userIdCheckForm">
		<input type="hidden" name="userId" id="userId" value="${sessionScope.id}"/>
	</form>
	
	<div>
	<c:if test="${not empty userGetPlace}">
		<c:forEach items="${userGetPlace}" var="u">
		
		<a href="placeDetail?no=${u.placeNo}" id="myPlaceDetailbtn">
			<ul class="list-group">
		  		<li class="list-group-item">
		  		<div>예약번호 : ${u.no}</div>
		  		<div>예약아이디 : ${u.userId}</div>
		  		<div>농구장 번호 : ${u.placeNo}</div>
		  		<div>장소 : ${u.placeName}</div>
		  		<span>날짜 : ${u.dates}</span>
		  		<span>시간 : ${u.timeBook}</span>
		  		</li>
			</ul>
		</a>
		</c:forEach>
	</c:if>
	</div>

	<!-- 페이지네이션 -->
	<div class="row" style="padding: 10px; margin: 10px;">
		<div class="col">
			<nav aria-label="Page navigation">
			  <ul class="pagination justify-content-center">
			  	<%-- pre --%>
			  	<c:if test="${ startPage > pageGroup }">
				    <li class="page-item">
				      <a class="page-link" href="userPlaceList?pageNum=${ startPage - pageGroup }">Pre</a>
				    </li>
			    </c:if>
				<%-- 현재페이지--%>				    
			    <c:forEach var="i" begin="${startPage}" end="${endPage}">
			    	<c:if test="${i == currentPage }">
				    	<li class="page-item active" aria-current="page">
				    		<span class="page-link">${i}</span>
				    	</li>
			    	</c:if>
			    	<c:if test="${i != currentPage }">
				    	<li class="page-item"><a class="page-link" href="userPlaceList?pageNum=${ i }">${i}</a></li>
				    </c:if>
				</c:forEach>	
				<%--next--%>
				<c:if test="${ endPage < pageCount }">
				    <li class="page-item">
				      <a class="page-link" href="userPlaceList?pageNum=${ startPage + pageGroup }">Next</a>
				    </li>
			  	</c:if>
			  </ul>
			</nav>
		</div>
	</div>
	<!-- 페이지네이션 end -->


</body>
</html>