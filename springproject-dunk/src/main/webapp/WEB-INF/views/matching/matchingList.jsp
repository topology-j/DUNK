<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="resources/js/weekC5.js" ></script>
<script src="resources/js/formcheck-mj.js"></script>
<form id="matchingForm" >
	<input type="hidden" name="selectedDate" id="selectedDate">
</form>

<!-- content -->
<div class="row">
	<!-- 캐러셀이미지 시작  -->
	<div class="row my-5">
		<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
		  <div class="carousel-indicators">
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
		  </div>
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img src="resources/main_img/dunk_event.jpg" class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item">
		      <img src="resources/main_img/dunk_event.jpg" class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item">
		      <img src="resources/main_img/dunk_event.jpg" class="d-block w-100" alt="...">
		    </div>
		  </div>
		  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Previous</span>
		  </button>
		  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Next</span>
		  </button>
		</div>
	</div>
	<!-- 매칭리스트 시작 -->
	<div class="main-matching-container">
		<div class="row">
			<div class="col text-center">
				<p class="fs-3 fw-bold">매칭리스트</p>
			</div>
		</div>
		<!-- 매칭글쓰기 -->
			<div class="row">
				<div class="col text-center">
					<a href="matchingWriteForm" class="btn" style="border-color: #fa9300">NEW 매칭글쓰기</a>
				</div>
			</div>
			
			<!-- 달력선택부분 -->
				
			<div class="row p-3">
				<div id="calendar">
				</div>
			</div>
			  	
			
        <!-- 매칭리스트 시작 -->
			<div class="row" id="mList">
				<div class="col">
					<div class="row m-3">
					<h2>총 : ${listCount}매치</h2>
							<c:if test="${not empty matchingItemList }">
								<c:forEach var="m" items="${matchingItemList}">
								
									<ul class="list-group list-group-flush pb-3">
										<a href="matchingDetail?no=${m.no}&pageNum=${currentPage}&selectedDate=${selectedDate}" class="text-decoration-none">
											<li class="list-group-item">
											
												<div class="row align-items-center">
													<div class="col">
														<p class="text-center">${m.time}</p>
													</div>
													<div class="col-6">
														<div class="row">
															<div class="col">
																<div class="row">
																	<h3>${m.title}</h3>
																</div>	
																<div class="row">
																	<p>${m.date}</p>
																	<p>${ m.name}</p>
																</div>
															</div>
															<div class="col-4 d-flex align-items-center justify-content-center">
																<h5>${m.matchingApplyCount}/${m.inwon}</h5>
															</div>
														</div>
													</div>
													<div class="col-4">
														<c:if test="${m.inwon > m.matchingApplyCount and m.inwon - m.matchingApplyCount gt 1 }">
														<div class="text-center rounded-pill p-2" style="background-color: #fa9300">
															<p class="text-white">신청가능</p>
														</div>
														</c:if>
														<c:if test="${m.inwon > m.matchingApplyCount and m.inwon - m.matchingApplyCount eq 1 }">
															<div class="bg-danger text-center rounded-pill p-2">
																<p class="text-white">마감임박</p>
															</div>															
														</c:if>
														<c:if test="${m.inwon <= m.matchingApplyCount}">
														<div class="text-center rounded-pill p-2" style="background-color: #B9B9B9">
															<p class="text-white">모집마감</p>															
														</div>
														</c:if>
													</div>
												</div>	
											</li>
										</a>
									</ul>
								</c:forEach>
								</c:if>
									
							<c:if test="${empty matchingItemList }">
								<div>
									<p class="text-center">해당 날짜의 매칭이 존재하지 않습니다!</p>
								</div>
							</c:if>
					</div>
				</div>
			</div>
			<!-- 페이지네이션 -->
			
<c:if test="${not empty matchingItemList}">
    <div class="row">
        <div class="col">
            <nav aria-label="Page navigation" >
                <ul class="pagination justify-content-center" style="color:#fa9300;">
                    <c:if test="${ startPage > pageGroup }">
                        <li class="page-item">
                            <a class="page-link"
                               href="?pageNum=${ startPage - pageGroup }&selectedDate=${selectedDate}">Pre</a>
                        </li>
                    </c:if>
                    <c:forEach var="i" begin="${startPage}" end="${endPage}">
                        <c:if test="${i == currentPage }">
                            <li class="page-item active" aria-current="page">
                                <span class="page-link">${i}</span>
                            </li>
                        </c:if>
                        <c:if test="${i != currentPage }">
                            <li class="page-item">
                                <a class="page-link" href="?pageNum=${ i }&selectedDate=${selectedDate}">${i}</a>
                            </li>
                        </c:if>
                    </c:forEach>
                    <c:if test="${ endPage < pageCount }">
                        <li class="page-item">
                            <a class="page-link"
                               href="?pageNum=${ startPage+ pageGroup }&selectedDate=${selectedDate}">Next</a>
                        </li>
                    </c:if>
                </ul>
            </nav>
        </div>
    </div>
</c:if> 

		</div>
	</div>
