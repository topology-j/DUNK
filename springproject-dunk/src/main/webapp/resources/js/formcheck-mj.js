$(function() {
	
	//매칭 게시 글 상세보기에서 게시 글 삭제 요청 처리
	$("#mDelete").on("click", function() {
		
		$("#checkForm2").attr("action", "matchingDelete");
		$("#checkForm2").attr("method", "post");
		$("#checkForm2").submit();
	});
	
	// 매칭 게시 글쓰기 폼 유효성 검사
	$("#matchingWriteForm").on("submit", function() {
		
	});
		
});