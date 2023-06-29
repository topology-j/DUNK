<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="resources/js/team.js"></script>

<div class="row my-5">
	<div class="col-6 offset-3 border rounded-5 border-2 border-warning">		
		<div class="row my-5 text-center">
			<div class="col">
				<div class="fw-bold fs-4">팀 정보 수정</div>
			</div>
		</div> 
		<div class="row m-5">
			<div class="col">
				<form action="updateTeamProcess" method="post">
					<input type="hidden" name="leaderId" value="${t.leaderId}">					
					<input type="hidden" name="leaderNick" value="${t.leaderNick}">
					<input type="hidden" name="no" value="${t.no}">					
					<label>* 팀 이름 : </label>
					<div class="row my-3">
						<div class="col-6">					
							<input class="form-control" name="name" value="${t.name}">
						</div>
					</div>
					<label>* 정원 : </label>
					<div class="row my-3">
						<div class="col-3">					
							<select class="form-select" name="peopleNum">								
								<option ${t.peopleNum==5 ? "selected" : ""}>5</option>
								<option ${t.peopleNum==6 ? "selected" : ""}>6</option>
								<option ${t.peopleNum==7 ? "selected" : ""}>7</option>
								<option ${t.peopleNum==8 ? "selected" : ""}>8</option>
								<option ${t.peopleNum==9 ? "selected" : ""}>9</option>
								<option ${t.peopleNum==10 ? "selected" : ""}>10</option>
								<option ${t.peopleNum==11 ? "selected" : ""}>11</option>
								<option ${t.peopleNum==12 ? "selected" : ""}>12</option>
								<option ${t.peopleNum==13 ? "selected" : ""}>13</option>
								<option ${t.peopleNum==14 ? "selected" : ""}>14</option>
								<option ${t.peopleNum==15 ? "selected" : ""}>15</option>
								<option ${t.peopleNum==16 ? "selected" : ""}>16</option>
								<option ${t.peopleNum==17 ? "selected" : ""}>17</option>
								<option ${t.peopleNum==18 ? "selected" : ""}>18</option>
								<option ${t.peopleNum==19 ? "selected" : ""}>19</option>
								<option ${t.peopleNum==20 ? "selected" : ""}>20</option>
							</select>
						</div>
					</div>
					<label>* 팀 소개 : </label>
					<div class="row my-3">
						<div class="col">					
							<textarea class="form-control" rows="4" name="explanation">${t.explanation}</textarea>
						</div>
					</div>
					<div class="row text-center mt-5">
						<div class="col">
							<input type="submit" class="btn btn-success" value="팀정보 수정">&nbsp;&nbsp;&nbsp;
							<input type="button" class="btn btn-dark" value="취소" onclick="location.href='teamDetail?no=${t.no}'">
						</div>
					</div>
				</form>
			</div>
		</div>		
	</div>
	<div class="col-3">
	</div>
</div>