<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="resources/js/formcheck-mj.js"></script>
<!-- content -->
<div class="row my-5" id="global-content">
	<div class="col">
		<div class="row text-center">
			<div class="col">
				<h2 class="fs-3 fw-bold">매칭 등록</h2>
			</div>
		</div>  
		<form name="matchingWriteForm" action="matchingWriteProcess" id="matchingWriteForm" 
			class="row g-3 border-primary" method="post">
			<div class="col-8 offset-md-2">
			    <label for="placeNo" class="form-label">매칭 장소</label>
			    <input type="number" class="form-control" name="placeNo"  id="placeNo" >
	  		</div>
	  		<div class="col-8 offset-md-2">
			    <label for="title" class="form-label">매칭 제 목</label>
			    <input type="text" class="form-control" name="title"  id="title" >
	  		</div>
	  		<div class="col-4 offset-md-2">
			    <label for="date" class="form-label">매칭날짜</label>
			    <input type="date" class="form-control" name="date"  id="date" >
	  		</div>
	  		<div class="col-4">
			    <label for="time" class="form-label">시간</label>
			    <select class="form-control" name="time" id="time">
			    	<option>10:00</option>
			    	<option>11:00</option>
			    	<option>12:00</option>
			    	<option>13:00</option>
			    	<option>14:00</option>
			    	<option>15:00</option>
			    	<option>16:00</option>
			    	<option>17:00</option>
			    	<option>18:00</option>
			    	<option>19:00</option>
			    	<option>20:00</option>
			    	<option>21:00</option>
			    </select>
	  		</div>
	  		
	  		<div class="form-group">
		  		<div class="col-8 offset-md-2">
		  			<label class="form-label">성별</label>
		  			<div class="form-row">
					    <div class="col">
					    	<div class="form-check">
						        <input type="radio" class="form-check-input" name="gender" id="female" value="여자매치">
						        <label class="form-check-label" for="female">여자매치</label>
					        </div>
					    </div>
					    <div class="col">
					    	<div class="form-check">
						        <input type="radio" class="form-check-input" name="gender" id="male" value="남자매치">
						        <label class="form-check-label" for="male">남자매치</label>
					        </div>
					    </div>
					    <div class="col">
					    	<div class="form-check">
						        <input type="radio" class="form-check-input" name="gender" id="all" value="혼성/무관">
						        <label class="form-check-label" for="all">혼성/무관</label>
					        </div>
					    </div>
				    </div>
		  		</div>
	  		</div>
	  		
	  		<div class="col-8 offset-md-2">
			    <label for="level" class="form-label">레벨</label>
			    <div class="form-check">
			        <input type="checkbox" class="form-check-input" name="level" id="level1" value="초보">
			        <label class="form-check-label" for="level1">초보</label>
			    </div>
			    <div class="form-check">
			        <input type="checkbox" class="form-check-input" name="level" id="level2" value="중급">
			        <label class="form-check-label" for="level2">중급</label>
			    </div>
			    <div class="form-check">
			        <input type="checkbox" class="form-check-input" name="level" id="level3" value="고급">
			        <label class="form-check-label" for="level3">고급</label>
			    </div>
	  		</div>
	  		
	  		<div class="col-8 offset-md-2">
			    <label for="inwon" class="form-label">모집인원</label>
			    <input class="number" name="inwon" id="inwon" >
	  		</div>
			<div class="col-8 offset-md-2">
			    <label for="information" class="form-label">매칭내용</label>
			    <textarea class="form-control" name="information" id="information" rows="10"></textarea>
	  		</div>
	  		<div class="col-8 offset-md-2">
			    <label for="pay" class="form-label">참가비</label>
			    <input type="number" class="form-control" name="pay"  id="pay" >
	  		</div>	
	  		<div class="col-8 offset-md-2">
			    <label for="userId" class="form-label">글쓴이아이디</label>
			    <input type="text" class="form-control" name="userId"  id="userId" value="${sessionScope.id}" readonly>
	  		</div>
	  		<div class="col-8 offset-md-2 text-center mt-5">
			   <input type="submit" value="등록하기" class="btn btn-primary"/>&nbsp;&nbsp;
			   <input type="button" value="목록보기" onclick="location.href='matchingList'" class="btn btn-primary"/>
	  		</div>	
		</form>
	</div>
</div>    
    
    