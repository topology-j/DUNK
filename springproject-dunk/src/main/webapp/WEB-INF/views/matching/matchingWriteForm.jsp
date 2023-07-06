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
		<form name="matchingWriteForm" action="writeMatchingProcess" id="matchingWriteForm" 
			class="row g-3 border-primary" method="post">
			
			<div class="col-8 offset-md-2">
			    <label for="placeNo" class="form-label">매칭 장소</label>
			    <select class="form-control" name="placeNo" id="placeNo">
			        <option value="">선택하세요</option>
			        <option value="1">동대문 어반 바스켓볼</option>
			        <option value="2">동대문 토모짐</option>
			        <option value="3">동대문구민 체육센터</option>
			        <option value="4">중곡문화체육센터</option>
			        <option value="5">한국외국어대학교 서울캠퍼스 야외시설 농구장</option>
			        <option value="6">서대문 59스포츠</option>
			        <option value="7">강서 커넥트 농구장</option>
			        <option value="8">압구정 스포츠몬스터 야외 농구장</option>
			        <option value="9">플레이존스포츠 C구장</option>
			        <option value="10">피스톤S 체대입시 강남</option>
			        <option value="11">KAPA 스포츠 아카데미</option>
			        <option value="12">광진구민체육센터</option>
			        <option value="13">아차산 배수지 체육공원</option>
			        <option value="14">퍼시픽스포츠그룹강서점</option>
			        <option value="15">서일대학교 실내농구장</option>
			        <option value="16">상아스포츠아카데미</option>
			        <option value="17">현대스포츠실내농구장</option>
			        <option value="18">서울휘트니스목동점</option>
			        <option value="19">서울여자대학교체육관</option>
			        <option value="20">맥스체대입시노원교육원</option>
			        <option value="21">인아우트</option>
			        <option value="22">서울휘트니스 목동본점</option>
			        <option value="23">삼성리틀썬더스 목동점</option>
			        <option value="24">관악구민종합체육센터</option>
			    </select>
			</div>

	  		<div class="col-8 offset-md-2">
			    <label for="title" class="form-label">매칭 제목</label>
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
			    <input type="radio" class="form-check-input" name="level" id="level1" value="초보" checked>
			    <label class="form-check-label" for="level1">초보</label>
			  </div>
			  <div class="form-check">
			    <input type="radio" class="form-check-input" name="level" id="level2" value="중급">
			    <label class="form-check-label" for="level2">중급</label>
			  </div>
			  <div class="form-check">
			    <input type="radio" class="form-check-input" name="level" id="level3" value="고급">
			    <label class="form-check-label" for="level3">고급</label>
			  </div>
			</div>

	  		
	  		<div class="col-8 offset-md-2">
			    <label for="inwon" class="form-label">모집인원</label>
			    <input class="number" name="inwon" id="inwon" >
	  		</div>
	  		
	  		<div class="col-8 offset-md-2">
			  <label for="laws" class="form-label">경기방법</label>
			  <div class="form-check">
			    <input type="radio" class="form-check-input" name="laws" id="laws0" value="0" checked>
			    <label class="form-check-label" for="laws0">3X3</label>
			  </div>
			  <div class="form-check">
			    <input type="radio" class="form-check-input" name="laws" id="laws1" value="1">
			    <label class="form-check-label" for="laws1">5X5</label>
			  </div>
			  <div class="form-check">
			    <input type="radio" class="form-check-input" name="laws" id="laws2" value="2">
			    <label class="form-check-label" for="laws2">자유매칭</label>
			  </div>
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
    
    