<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row my-5">
	<div class="col">
		<div class="fw-bold fs-4 text-center">팀매치 작성</div>
	</div>
</div>
<form action="addTeamMatch" method="post">
	<input type="hidden" name="bookNo" value="${pb.no}">	
	<input type="hidden" name="teamNo" value="${t.no}">
	<input type="hidden" name="writerId" value="${sessionScope.id}">
	<div class="row">
		<div class="col-6 offset-4">
			<label>* 제 목 : </label>
			<div class="row my-3">
				<div class="col-8">
					<input class="form-control" name="title" id="title">
				</div>
			</div>
			<label>* 작성자 : </label>
			<div class="row my-3">
				<div class="col-6">
					<input class="form-control" name="writerNick" id="writerNick" value="${sessionScope.nick}" readonly>
				</div>
			</div>
			<label>* 장 소 : </label>
			<div class="row my-3">
				<div class="col-6">
					<input class="form-control" name="placeName" id="placeName" value="${pb.placeName}" readonly>
				</div>
			</div>
			<label>* 참가비 : </label>
			<div class="row my-3">
				<div class="col-4">
					<input class="form-control" name="pay" id="pay">									
				</div>
			</div>
			<label>* 성 별 : </label>
			<div class="row my-3">
				<div class="col-3">
					<select class="form-select" name="gender">
						<option>남녀모두</option>
						<option>남성만</option>
						<option>여성만</option>
					</select>
				</div>
			</div>
			<label>* 레 벨 : </label>
			<div class="row my-3">
				<div class="col-3">
					<select class="form-select" name="level">
						<option>모든 레벨</option>
						<option>상위 레벨</option>
						<option>중위 레벨</option>
						<option>하위 레벨</option>
					</select>
				</div>
			</div>
			<label>* 설 명 : </label>
			<div class="row my-3">
				<div class="col">
					<textarea class="form-control" rows="4" name="information"></textarea>
				</div>
			</div>
			<div class="row text-center m5-3">
				<div class="col">
					<input type="submit" class="btn btn-dark" value="등록">&nbsp;&nbsp;
					<input type="button" class="btn btn-dark" value="취소" onclick="location.href='teamMatchCandidate?id=${sessionScope.id}'">
				</div>
			</div>
		</div>
	</div>
</form>