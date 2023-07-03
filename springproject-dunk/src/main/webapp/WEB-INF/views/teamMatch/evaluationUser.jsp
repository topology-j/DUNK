<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row my-5">
	<div class="col-6 offset-2">
		<div class="row border rounded-5 border-2 border-warning">
			<div class="col">
				<div class="row mt-4 mb-5 px-3">
					<div class="col">
						<span class="fw-bold fs-4">${u.nickname}</span>님은 어떠셨나요?
					</div>
				</div>
				<form action="evaluationUserProcess" method="post">
					<input type="hidden" name="userId" value="${userId}">
					<input type="hidden" name="partnerId" value="${partnerId}">	
					<input type="hidden" name="bookNo" value="${bookNo}">
					<input type="hidden" name="teamName" value="${teamName}">
					<input type="hidden" name="partnerTeamName" value="${partnerTeamName}">				
				<div class="row border-bottom mx-3 py-2">
					<div class="col-6">
						실력
					</div>
					<div class="col-6">
						<input type="radio" class="btn-check" name="skillEval1" id="option1" value="3" autocomplete="off" checked>&nbsp;&nbsp;
						<label class="btn btn-outline-warning" for="option1"><i class="bi bi-emoji-smile fs-5"></i></label>	
						<input type="radio" class="btn-check" name="skillEval1" id="option2" value="2" autocomplete="off">&nbsp;&nbsp;
						<label class="btn btn-outline-success" for="option2"><i class="bi bi-emoji-expressionless fs-5"></i></label>
						<input type="radio" class="btn-check" name="skillEval1" id="option3" value="1" autocomplete="off">&nbsp;&nbsp;
						<label class="btn btn-outline-danger" for="option3"><i class="bi bi-emoji-frown fs-5"></i></label>					
					</div>
				</div>
				<div class="row border-bottom mx-3 py-2">
					<div class="col-6">
						매너
					</div>
					<div class="col-6">
						<input type="radio" class="btn-check" name="mannerEval1" id="option4" value="3" autocomplete="off" checked>&nbsp;&nbsp;
						<label class="btn btn-outline-warning" for="option4"><i class="bi bi-emoji-smile fs-5"></i></label>	
						<input type="radio" class="btn-check" name="mannerEval1" id="option5" value="2" autocomplete="off">&nbsp;&nbsp;
						<label class="btn btn-outline-success" for="option5"><i class="bi bi-emoji-expressionless fs-5"></i></label>
						<input type="radio" class="btn-check" name="mannerEval1" id="option6" value="1" autocomplete="off">&nbsp;&nbsp;
						<label class="btn btn-outline-danger" for="option6"><i class="bi bi-emoji-frown fs-5"></i></label>					
					</div>
				</div>
				<div class="row border-bottom mx-3 py-2">
					<div class="col-6">
						경기 준비
					</div>
					<div class="col-6">
						<input type="radio" class="btn-check" name="preManner1" id="option7" value="3" autocomplete="off" checked>&nbsp;&nbsp;
						<label class="btn btn-outline-warning" for="option7"><i class="bi bi-emoji-smile fs-5"></i></label>	
						<input type="radio" class="btn-check" name="preManner1" id="option8" value="2" autocomplete="off">&nbsp;&nbsp;
						<label class="btn btn-outline-success" for="option8"><i class="bi bi-emoji-expressionless fs-5"></i></label>
						<input type="radio" class="btn-check" name="preManner1" id="option9" value="1" autocomplete="off">&nbsp;&nbsp;
						<label class="btn btn-outline-danger" for="option9"><i class="bi bi-emoji-frown fs-5"></i></label>					
					</div>
				</div>
				<div class="row border-bottom mx-3 py-2">
					<div class="col-6">
						시간 준수
					</div>
					<div class="col-6">
						<input type="radio" class="btn-check" name="timeManner1" id="option10" value="3" autocomplete="off" checked>&nbsp;&nbsp;
						<label class="btn btn-outline-warning" for="option10"><i class="bi bi-emoji-smile fs-5"></i></label>	
						<input type="radio" class="btn-check" name="timeManner1" id="option11" value="2" autocomplete="off">&nbsp;&nbsp;
						<label class="btn btn-outline-success" for="option11"><i class="bi bi-emoji-expressionless fs-5"></i></label>
						<input type="radio" class="btn-check" name="timeManner1" id="option12" value="1" autocomplete="off">&nbsp;&nbsp;
						<label class="btn btn-outline-danger" for="option12"><i class="bi bi-emoji-frown fs-5"></i></label>					
					</div>
				</div>
				<div class="row mt-5 mb-3 text-center">
					<div class="col">
						<input type="submit" class="btn btn-dark" value="평가완료">
					</div>
				</div>
				</form>
			</div>
		</div>
	</div>
</div>