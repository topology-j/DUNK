<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="resources/js/team.js"></script>

<div class="row my-5">
	<div class="col-6 offset-3 border rounded-5 border-2 border-warning">		
		<div class="row my-5 text-center">
			<div class="col">
				<div class="fw-bold fs-4">나의 팀 만들기</div>
			</div>
		</div> 
		<div class="row m-5">
			<div class="col">
				<form action="myteamList" method="post" id="generateTeamForm">
					<input type="hidden" name="leaderId" value="${id}">
					<input type="hidden" name="id" value="${id}">
					<input type="hidden" name="leaderNick" value="${nick}">					
					<label>* 팀 이름 : </label>
					<div class="row my-3">
						<div class="col-6">					
							<input class="form-control" name="name" id="generateTeamName">
						</div>
					</div>
					<label>* 정원 : </label>
					<div class="row my-3">
						<div class="col-3">					
							<select class="form-select" name="peopleNum">								
								<option>5</option>
								<option>6</option>
								<option>7</option>
								<option>8</option>
								<option>9</option>
								<option>10</option>
								<option>11</option>
								<option>12</option>
								<option>13</option>
								<option>14</option>
								<option>15</option>
								<option>16</option>
								<option>17</option>
								<option>18</option>
								<option>19</option>
								<option>20</option>
							</select>
						</div>
					</div>
					<label>* 팀 소개 : </label>
					<div class="row my-3">
						<div class="col">					
							<textarea class="form-control" rows="4" name="explanation" id="generateTeamExplanation"></textarea>
						</div>
					</div>
					<div class="row text-center mt-5">
						<div class="col">
							<input type="submit" class="btn btn-success" value="팀생성">&nbsp;&nbsp;&nbsp;
							<input type="button" class="btn btn-dark" value="취소" onclick="location.href='mypage?id=${id}'">
						</div>
					</div>
				</form>
			</div>
		</div>		
	</div>
	<div class="col-3">
	</div>
</div>