<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 예약리스트가 있는 경우 -->
	<c:if test="${not empty getUserPlaceList}">
	<c:forEach items="${getUserPlaceList}" var="u">
		<ul class="list-group">
	  		<li class="list-group-item">
	  		<div>${u.no}</div>
	  		<div>${u.userId}</div>
	  		<div>${u.placeName}</div>
	  		<span>${u.dates}</span>
	  		<span>${u.timeBook}</span>
	  		</li>
		</ul>
	</c:forEach>
	</c:if>
	
	<!-- 예약리스트가 없는 경우 -->
	<c:if test="${ empty getUserPlaceList}">
	<c:forEach items="${getUserPlaceList}" var="uPlaceList">
		 <div>예약 리스트가 없습니다</div>
	</c:forEach>
	</c:if>

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