<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/bootstrap/bootstrap.min.css" rel="stylesheet" >
	<script src="resources/js/jquery-3.2.1.min.js"></script>
	<script src="resources/js/user.js"></script>
</head>
<body>
	<c:choose>
		<c:when test="${overlap}">
			<div class="row text-center my-5">
				<div class="col">
					<span><span class="text-danger">${nickname}</span>는 이미 사용중인 닉네임입니다.</span>
				</div>
			</div>
			<div class="row text-center my-2">
				<div class="col">
					<input type="button" class="btn btn-secondary" id="btnNickCheckClose2" value="닫기">
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<div class="row text-center my-5">
				<div class="col">
					<span><span class="text-danger">${nickname}</span>는 사용할 수 있는 닉네임입니다.</span>
				</div>
			</div>
			<div class="row text-center my-2">
				<div class="col">
					<input type="button" class="btn btn-secondary" id="btnNickCheckClose" data-nick-value="${nickname}" value="${nickname}을(를) 닉네임으로 사용하기">
				</div>
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>