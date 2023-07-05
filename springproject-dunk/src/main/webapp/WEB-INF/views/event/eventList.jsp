<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<script src="resources/js/formcheck-hy.js"></script>

<form action="eventList" method="post">
	<input type="hidden" name="type" value="title">
<div class="row mt-5">
	<div class="col-4 offset-4">		
		<input class="form-control" placeholder="제목" name="keyword">
		<c:if test="${searchOption}">
			<div class="mt-3 text-center">
				"${keyword}" 검색 결과
			</div>
		</c:if>			
	</div>
	<div class="col-4">
		<input type="submit" class="btn btn-dark" value="검색">		
	</div>	
</div>
</form>

<c:if test="${not searchOption}">
<div class="row my-3">
	<div class="col-2">		
	</div>
	<div class="col-8 text-end">
		<c:if test="${sessionScope.id=='admin'}">	
			<a href="eventWriteForm" class="btn btn-outline-success">글쓰기</a>	
		</c:if>
	</div>
	<div class="col-2">		
	</div>
</div>
</c:if>
<div class="row text-center">
	<div class="col">
		<c:if test="${not searchOption and empty eList}">
			<p>게시글이 존재하지 않습니다.</p>
		</c:if>
		<c:if test="${searchOption and empty eList}">
			<p>"${keyword}"가 포함된 게시글이 존재하지 않습니다.</p>
		</c:if>
	</div>
</div>		

<div class="row mt-5">			
	<c:if test="${not empty eList}">
		<c:forEach var="e" items="${eList}">
			<div class="col-4">
				<div class="row mx-3 my-3">
					<div class="col">
						<div class="card" style="width: 18rem;">
							<img src="resources/eventimage/${e.titleImg}" class="card-img-top">
							<div class="card-body">
							    <h5 class="card-title my-3">${e.title}</h5>
							    <c:if test="${not searchOption}">				   
							    	<a href="eventDetail?no=${e.no}&pageNum=${pageNum}" class="btn btn-dark">이벤트 자세히 보기</a>
							    </c:if>
							    <c:if test="${searchOption}">
							    	<a href="eventDetail?no=${e.no}&pageNum=${pageNum}&type=${type}&keyword=${keyword}" class="btn btn-dark">이벤트 자세히 보기</a>
							    </c:if>
						  </div>
						</div>
					</div>
				</div>
			</div>		
		</c:forEach>
	</c:if>	
</div>	

<c:if test="${not searchOption}">
<div class="row my-5">
	<div class="col">
		<nav>
		  <ul class="pagination  justify-content-center">
		  	<c:if test="${pageGroup<startPage}">
			    <li class="page-itemd">
			      <a class="page-link" href="eventList?pageNum=${startPage-1}">Pre</a>
			    </li>
		    </c:if>
		 	<c:forEach var="i" begin="${startPage}" end="${endPage}">
		 		<c:if test="${pageNum==i}">
				    <li class="page-item active" aria-current="page">
				      <span class="page-link">${i}</span>
				    </li>
			    </c:if>
			    <c:if test="${pageNum !=i}">
				    <li class="page-item"><a class="page-link" href="eventList?pageNum=${i}">${i}</a></li>
			    </c:if>
		    </c:forEach>
		    <c:if test="${endPage<pageCount}">
			    <li class="page-item">
			      <a class="page-link" href="eventList?pageNum=${endPage+1}">Next</a>
			    </li>
		    </c:if>			   
		  </ul>
		</nav>
	</div>
</div>
</c:if>


<c:if test="${searchOption}">
<div class="row my-5">
	<div class="col">
		<nav>
		  <ul class="pagination  justify-content-center">
		  	<c:if test="${pageGroup<startPage}">
			    <li class="page-itemd">
			      <a class="page-link" href="eventList?pageNum=${startPage-1}&type=${type}&keyword=${keyword}">Pre</a>
			    </li>
		    </c:if>
		 	<c:forEach var="i" begin="${startPage}" end="${endPage}">
		 		<c:if test="${pageNum==i}">
				    <li class="page-item active" aria-current="page">
				      <span class="page-link">${i}</span>
				    </li>
			    </c:if>
			    <c:if test="${pageNum !=i}">
				    <li class="page-item"><a class="page-link" href="eventList?pageNum=${i}&type=${type}&keyword=${keyword}">${i}</a></li>
			    </c:if>
		    </c:forEach>
		    <c:if test="${endPage<pageCount}">		    
			    <li class="page-item">
			      <a class="page-link" href="eventList?pageNum=${endPage+1}&type=${type}&keyword=${keyword}">Next</a>
			    </li>
		    </c:if>
		  </ul>
		</nav>
	</div>
</div>
</c:if>