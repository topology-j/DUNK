<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="resources/js/formcheck-ms.js"></script>
<script src=
"https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
	<!-- name, zipcode, address1, address2, area, image -->
	<form name="placeUpdateForm" action="placeUpdateProcess" id="placeUpdateProcess" 
		class="row g-3 border-primary" method="post" enctype="multipart/form-data">
			<input type="hidden" name="no" value="${b1.no}">
			<input type="hidden" name="pageNum" value="${ pageNum }" />	
				<c:if test="${searchOption }">
					<input type="hidden" name="pageNum" value="${ type }" />
					<input type="hidden" name="pageNum" value="${ keyword }" />
					<input type="hidden" name="pageNum" value="${ area }" />
					<input type="hidden" name="pageNum" value="${ orderBy }" />
				</c:if>
			<div class="col-4 offset-md-2">
				<label for="name" class="form-label">name</label>
				<input type="text" class="form-control" name="name" id="name" value="${ b1.name }">
			</div>
			<div class="col-4 ">
				<label for="zipcode" class="form-label">zipcode</label>
				<input type="text" class="form-control" name="zipcode"  id="zipcode" value="${ b1.zipcode }">
				<input type="button" class="btn btn-warning" id="btnZipcode" value="우편번호 찾기">
			</div>
			<div class="col-8 offset-md-2">
				<label for="address1" class="form-label">address1</label>
				<input type="text" class="form-control" name="address1" id="address1" value="${b1.address1}">
			</div>
			<div class="col-8 offset-md-2">
				<label for="address2" class="form-label">address2</label>
				<input type="text" class="form-control" name="address2" id="address2" value="${b1.address2}">
			</div>
		<div class="col-8 offset-md-2">
				<label for="area" class="form-label">지역</label>
			    <select name="area" >
				    <option value="${b1.area}">${b1.area}</option>
				    <option value="관악구">관악구</option>
				    <option value="강남구">강남구</option>
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
   		<!-- 버튼 -->	
		 <div class="col-8 offset-md-2 text-center mt-5">
			<input type="submit" value="수정하기" class="btn btn-primary"/>&nbsp;&nbsp;
			<input type="button" value="목록보기"onclick="location.href='listPlacet?pageNum=${pageNum}'"
								class="btn btn-primary"/>
		 </div>
	</form>
	<!-- 목록으로 가기 버튼  -->
	<div>
		<c:if test="${not searchOption}">
			<button type="button" class="btn btn-primary" onclick="location.href='placeList?pageNum=${pageNum}'">listPlace</button>
		</c:if>
		<c:if test="${not searchOption}">
			<button type="button" class="btn btn-primary" onclick="location.href='placeList?pageNum=${pageNum}
				&type=${type}&keyword=${keyword}&area=${area}&orderBy=${orderBy}'">listPlace</button>
		</c:if>
	</div>
	
</body>
</html>