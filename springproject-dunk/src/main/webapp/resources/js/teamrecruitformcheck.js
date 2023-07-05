$(function() {

	// 팀 모집 게시글 쓰기
	$("#teamRecruitmentWrite").on("submit", function(){
	
		if($("#title").val().length<=0){
			alert("제목이 입력되지 않았습니다.\n제목을 입력해주세요")
			$("#title").focus();
			return false;
		}
		else if($("#content").val().length<=0){
			alert("내용이 입력되지 않았습니다.\n내용을 입력해주세요")
			$("#content").focus();
			return false;
		}
		
	});
	// 팀 모집 detailUpdate 클릭 이벤트
	$("#teamRecruitmentDetailUpdate").on("click", function() {
		$("#checkForm").attr("action", "teamRecruitmentUpdateProcess");
		$("#checkForm").submit();
	});
	
	// 팀 모집 게시글 수정
	$("#teamRecruitmentUpdate").on("submit", function(){
	
		if($("#title").val().length<=0){
			alert("제목이 입력되지 않았습니다.\n제목을 입력해주세요")
			$("#title").focus();
			return false;
		}
		else if($("#content").val().length<=0){
			alert("내용이 입력되지 않았습니다.\n내용을 입력해주세요")
			$("#content").focus();
			return false;
		}
		
	});
	
	$("#teamRecruitmentDetailDelete").on("click", function() {
		$("#checkForm").attr("action", "delete");
		$("#checkForm").attr("method", "post");
		$("#checkForm").submit();  
	});
	
});

