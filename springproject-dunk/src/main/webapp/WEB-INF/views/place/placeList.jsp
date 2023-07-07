<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<html>
<head>
<script src="resources/js/formcheck-ms.js"></script>
<link rel="stylesheet" href="resources/css/place.css">   
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<style>
 .carousel-item img {
	    transition: transform 0.5s ease-in-out; /* 더 부드러운 애니메이션 효과를 위해 ease-in-out 사용 */
	  }
.carousel-item img:hover {
	    transform: scale(1.05); /* 이미지를 약간 확대 */
	  }
select {
  -moz-appearance: none;
  -webkit-appearance: none;
  appearance: none;
  
  font-family: "Noto Sansf KR", sans-serif;
  font-size: 1rem;
  font-weight: 400;
  line-height: 1.5;
  
  color: #444;
  background-color: #fff;
  
  padding: .6em 1.4em .5em .8em;
  margin: 0;
  
  border: 1px solid #aaa;
  border-radius: .5em;
  box-shadow: 0 1px 0 1px rgba(0,0,0,.04);
}

select:hover {
  border-color: #888;
}

select:focus {
  border-color: #aaa;
  box-shadow: 0 0 1px 3px rgba(59, 153, 252, .7);
  box-shadow: 0 0 0 3px -moz-mac-focusring;
  color: #222;
  outline: none;
}

select:disabled {
  opacity: 0.5;
}

label {
  font-family: "Noto Sans KR", sans-serif;
  font-size: 1rem;
  font-weight: 600;
  line-height: 1.3;
  
  color: #444;
  
  margin-right: 0.5em;
}

	</style>
<title></title>
</head>
<body>
	<form id="placeSearchForm" name="placeSearchForm">
		<input type="hidden" name="area" id="formArea">
		<input type="hidden" name="orderBy" id="formOrderBy">
    </form>
    
	<div class="row" style="padding: 10px; margin: 10px;">
    	<div class="col-3">
    		<!-- 지역구만 뽑기 -->
			<select id="area" class="placeListSelect" name="area">
				<option value="all" ${ area eq "All" ? "selected" : ""}>전체</option>
				<option value="Gangseo" ${ area eq "Gangseo" ? "selected" : ""}>강서구</option>
				<option value="Gangnam" ${ area eq "Gangnam" ? "selected" : ""}>강남구</option>
				<option value="Gwanak" ${ area eq "Gwanak" ? "selected" : ""}>관악구</option>
				<option value="Gwangjin" ${ area eq "Gwangjin" ? "selected" : ""}>광진구</option>
				<option value="Nowon" ${ area eq "Nowon" ? "selected" : ""}>노원구</option>
				<option value="Dobong" ${ area eq "Dobong" ? "selected" : ""}>도봉구</option>
				<option value="Dongdaemun" ${ area eq "Dongdaemun" ? "selected" : ""}>동대문구</option>
				<option value="Mapo" ${ area eq "Mapo" ? "selected" : ""}>마포구</option>
				<option value="Yangcheon" ${ area eq "Yangcheon" ? "selected" : ""}>양천구</option>
				<option value="Jungnang" ${ area eq "Jungnang" ? "selected" : ""}>중랑구</option>	
			</select>
			<!-- 순서정렬 -->
			<select id="orderBy"  class="placeListSelect" name="orderBy">
				<option value="no"  ${ orderBy eq "no" ? "selected" : ""}>등록일순</option>
				<option value="popularity"  ${ orderBy eq "popularity" ? "selected" : ""}>인기순</option>				
				<option value="highPay"  ${ orderBy eq "highPay" ? "selected" : ""}>높은가격순</option>
				<option value="rowPay"  ${ orderBy eq "rowPay" ? "selected" : ""}>낮은가격순</option>
			</select>
   		</div>
   		<div class="col-4">
   			<form id="placeKeywordForm" name="placeKeywordForm">
	     		<input type="text" name="keyword" class="form-control me-2" placeholder="Search" aria-label="Search" value="${keyword}" >
		</div>
		<div class="col-2">
				<button class="btn btn-outline-success" type="submit">검색</button>	
     		</form>
        </div>
        <div class="col-3">
        	<c:if test="${grade eq '200'}">	
	          	  <button type="button" class="btn btn-outline-warning"  onclick="location.href='placeWriteForm'">장소등록</button>
			</c:if>
		</div>    
	</div>
  
  
							
	<%-- 검색이 아니고 게시물이 있는 경우 --%>
	<c:if test="${ not searchOption and not empty placeList }">
		<div class="row">
			<c:forEach items="${placeList}" var="p" varStatus="status">
				<div class="col-md-3">
					<div class="card" style="width: 18rem;">
						<a href="placeDetail?no=${p.no}&pageNum=${currentPage}" >
							<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
								<div class="carousel-inner">
									<div class="carousel-item active">
										<img src="${pageContext.request.contextPath}/resources/placeimg/${p.image1}" class="d-block w-100" >
									</div>
									<div class="carousel-item">
										<img src="${pageContext.request.contextPath}/resources/placeimg/${p.image2}"  class="d-block w-100" >
									</div>
									<div class="carousel-item">
										<img src="${pageContext.request.contextPath}/resources/placeimg/${p.image3}"  class="d-block w-100">
									</div>
								</div>
							</div>
						</a>
						<div class="card-body"><!-- card body 시작 -->
							<ul class="list-group list-group-flush">
							    <li class="list-group-item">이름 : ${p.name}</li>
							    <li class="list-group-item">지역 : ${p.area}</li>
							    <li class="list-group-item">가격 : ${p.pay}</li>
							    <li class="list-group-item">조회수 : ${p.readCount}</li>
							</ul>		
						</div><!-- end card-body -->
					</div>
				</div>
				<%-- <c:if test="${status.index % 4 == 3}">
				</c:if>	 --%>
			</c:forEach>
		</div>
	</c:if>
	
	<!-- 검색이 아니고 게시물이 없는 경우 -->
	<c:if test="${not searchOption and empty placeList }">
		<div>게시물이 없습니다</div>
	</c:if>
			
	<!-- 일반 리스트 페이지네이션 -->
	<c:if test="${not searchOption and not empty placeList }">
	<div class="row" style="padding: 10px; margin: 10px;" >
		<div class="col">
			<nav aria-label="Page navigation">
			  <ul class="pagination justify-content-center">
			  	<%-- pre --%>
			  	<c:if test="${ startPage > pageGroup }">
				    <li class="page-item">
				      <a class="page-link" href="placeList?pageNum=${ startPage - pageGroup }">Pre</a>
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
				    	<li class="page-item"><a class="page-link" href="placeList?pageNum=${ i }">${i}</a></li>
				    </c:if>
				</c:forEach>	
				<%--next--%>
				<c:if test="${ endPage < pageCount }">
				    <li class="page-item">
				      <a class="page-link" href="placeList?pageNum=${ startPage + pageGroup }">Next</a>
				    </li>
			  	</c:if>
			  </ul>
			</nav>
		</div>
	</div>
	</c:if>
	<!--일반리스트 페이지 네이션 끝 -->	

	
	<!--검색이면서 리스트가 존재할 경우 + 카드리스트 시작 -->
	<c:if test="${ searchOption and not empty placeList}">
		<div class="row">
			<c:forEach items="${placeList}" var="p" varStatus="status">
				<div class="col-md-3">
					<div class="card" style="width: 18rem;">
						<a href="placeDetail?no=${p.no}&area=${area}&orderBy=${orderBy}">
							<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
								<div class="carousel-inner">
									<div class="carousel-item active">
										<img src="${pageContext.request.contextPath}/resources/placeimg/${p.image1}" class="d-block w-100" >
									</div>
									<div class="carousel-item">
										<img src="${pageContext.request.contextPath}/resources/placeimg/${p.image1}"  class="d-block w-100" >
									</div>
									<div class="carousel-item">
										<img src="${pageContext.request.contextPath}/resources/placeimg/${p.image1}"  class="d-block w-100">
									</div>
								</div>
							</div>
						</a>
						<div class="card-body">
							<ul class="list-group list-group-flush">
							    <li class="list-group-item">${p.name}</li>
							    <li class="list-group-item">${p.area}</li>
							    <li class="list-group-item">${p.availNum}</li>
							</ul>
						</div><!-- end card-body -->
					</div>
				</div>
				<%-- <c:if test="${status.index % 4 == 3}">
				</c:if>	 --%>
			</c:forEach>
		</div>
	</c:if>
	<!-- 검색이면서 리스트가 없는경우 -->
	<c:if test="${searchOption and empty placeList }">
		<div>"${keyword }" 가 포함된 게시물이 없습니다</div>
	</c:if>
	
	<!-- 검색시  -->
	<div style="text-align: center; padding: 10px; margin: 10px;">
		<c:if test="${searchOption }">
			<div>"${keyword }"검색결과</div>
		</c:if>
	</div>
	<!--검색요청 리스트 페이지네이션 -->
	<c:if test="${searchOption and not empty placeList }">
	<div class="row" style="padding: 10px; margin: 10px;">
		<div class="col">
			<nav aria-label="Page navigation">
			  <ul class="pagination justify-content-center">
			  	<%-- pre --%>
			  	<c:if test="${ startPage > pageGroup }">
				    <li class="page-item">
				      <a class="page-link" href="placeList?pageNum=${ startPage - pageGroup }&type=${type }&keyword=${keyword }&area=${area}&orderBy=${orderBy}">Pre</a>
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
				    	<li class="page-item"><a class="page-link" href="placeList?pageNum=${i}&type=${type }&keyword=${keyword }&area=${area}&orderBy=${orderBy}">${i}</a></li>
				    </c:if>					    
			    </c:forEach> 
			    <%--next--%>
				<c:if test="${ endPage < pageCount }">
				    <li class="page-item">
				      <a class="page-link" href="placeList?pageNum=${ startPage + pageGroup }&type=${type }&keyword=${keyword }&area=${area}&orderBy=${orderBy}">Next</a>
				    </li>
			  	</c:if>
			  </ul>
			</nav>
		</div>
	</div>
	</c:if>
	<!--검색요청 리스트  페이지 네이션 끝 -->	
	<!-- 마이페이지내에 장소버튼 -->
	<%-- <div class="row my-3">
		<div class="col">
			<a href="" class="text-decoration-none link-dark">나의 장소</a>
			<!--장소관리자가 모든 예약리스트를 볼때 onclick="location.href='userPlaceList?id=${sessionScope.id}'">  -->
			<button type="button" id="userPlaceListBtn"class="btn btn-primary" onclick="location.href='userPlaceList'">userPlaceList</button>
			<!-- 사용자가 예약한리스트를 볼때 ?-->
			<button type="button" id="userPlaceBtn" class="btn btn-primary" onclick="location.href='userPlace?userId=${id }'">userPlace</button>
		</div>
	</div> --%>
</body>
</html>