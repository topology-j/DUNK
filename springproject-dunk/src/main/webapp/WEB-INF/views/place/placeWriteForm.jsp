<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="resources/js/formcheck-ms.js"></script>
<script src=
"https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 첨부파일미리보기 -->
<script>
	function previewImage(input) {
		  var preview = document.getElementById('preview');
		  if (input.files && input.files[0]) {
		    var reader = new FileReader();
		    reader.onload = function(e) {
		      preview.src = e.target.result;
		    };
		    reader.readAsDataURL(input.files[0]);
		  } else {
		    preview.src = ""; // 이미지 미리보기 초기화
		  }
		}
</script>
</head>
<body>
	<!-- // name, zipcode, address1, address2, area, image1 -->
	<form name="placeWriteForm"id="placeWriteForm"  enctype="multipart/form-data"
					class="row g-3 border-primary" >
		<div class="col-4 offset-md-2">
		    <label for="name" class="form-label">장소이름</label>
		    <input type="text" class="form-control" name="name"  id="name" placeholder="장소를 입력해 주세요">
		</div>
  		<div class="col-4 ">
		    <label for="zipcode" class="form-label">우편번호</label>
		    <input type="text" class="form-control" name="zipcode"  id="zipcode" >
		    <input type="button" class="btn btn-warning" id="btnZipcode"value="우편번호 찾기">
  		</div>
  		<div class="col-8 offset-md-2">
		    <label for="address1" class="form-label">주소</label>
		     <input type="text" class="form-control" name="address1" id="address1">
  		</div>
  		<div class="col-8 offset-md-2">
		    <label for="address2" class="form-label">상세주소</label>
		     <input type="text"  class="form-control" name="address2" id="address2" >
  		</div>
  		<div class="col-8 offset-md-2">
		    <label for="area" class="form-label">지역</label>
		    <select name="area" id="area" >
			    <option value="">선택</option>
			    <option value="Dongdaemun">동대문구</option>
			    <option value="Yangcheon">양천구</option>
			</select>
  		</div>
  		<!--  이미지 양식 -->
		<div class="col-8 offset-md-2">
			<div>
		    	<img id="preview" src="" alt="미리보기" style="max-width: 100px; margin-top: 10px;">
		    </div><br>
		    <label for="image1" class="form-label">image1</label>
		    <input type="file" class="form-control" name="images"  id="image1" onchange="previewImage(this)">
		    <label for="image2" class="form-label">image2</label>
		    <input type="file" class="form-control" name="images"  id="image2" onchange="previewImage(this)">
		    <label for="image3" class="form-label">image3</label>
		    <input type="file" class="form-control" name="images"  id="image3" onchange="previewImage(this)">
		    <label for="image4" class="form-label">image4</label>
		    <input type="file" class="form-control" name="images"  id="image4" onchange="previewImage(this)">
  		</div>
  		<!--폼버튼  -->
  		<div class="col-8 offset-md-2 text-center mt-5">
		   <input type="submit" value="등록하기" class="btn btn-primary"/>
		   <button type="button" class="btn btn-primary" onclick="location.href='placeList'">placeList</button>
		</div>		
	</form>
	
</body>
</html>