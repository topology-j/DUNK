$(function() {
	
	//매칭 게시 글 상세보기에서 게시 글 삭제 요청 처리
	$("#mDelete").on("click", function() {
	
		 if (confirm("삭제시 내용은 복구되지않습니다 정말 삭제하시겠습니까?")) {
		 
		$("#checkForm2").attr("action", "matchingDelete");
		$("#checkForm2").attr("method", "post");
		$("#checkForm2").submit();
		
		}
		
	});
	
	// 매칭 게시 글쓰기 폼 유효성 검사
	$("#matchingWriteForm").on("submit", function() {
		
		// 변수 초기값 설정
	    var placeNo = $("#placeNo").val();      
	    var title = $("#title").val();
	    var date = $("#date").val();
	    var time = $("#time").val();
	    var gender = $("input[name='gender']:checked").val();
	    var level = $("input[name='level']:checked").val();
	    var inwon = $("#inwon").val();
	    var laws = $("input[name='laws']:checked").val();
	    var pay = $("#pay").val();
		var placeNo = $("#placeNo").val();
       
        // 유효성 검사 (변수 대신 값 비교 구문 사용)
	    if (!placeNo) {
	        alert("장소가 입력되지 않았습니다. 장소를 입력해주세요");
	        return false;
	    }
	    
	    if (!title) {
	        alert("매칭타이틀이 입력되지 않았습니다. 매칭타이틀을 입력해주세요");
	        return false;
	    }
	    
	    if (!date) {
	        alert("날짜가 입력되지 않았습니다. 날짜를 입력해주세요");
	        return false;
	    }
	    
	    if (!time) {
	        alert("시간이 입력되지 않았습니다. 시간을 입력해주세요");
	        return false;
	    }
	    
	    if (!gender) {
	        alert("매칭성별이 입력되지 않았습니다. 매칭성별을 입력해주세요");
	        return false;
	    }
	    
	    if (!level) {
	        alert("희망 레벨이 입력되지 않았습니다. 레벨을 입력해주세요");
	        return false;
	    }
	    
	    if (!inwon) {
	        alert("모집인원이 입력되지 않았습니다. 인원을 입력해주세요");
	        return false;
	    }
	    
	    if (!laws) {
	        alert("매칭방식이 입력되지 않았습니다. 매칭방식을 입력해주세요");
	        return false;
	    }
	    
	    if (!pay) {
	        alert("인원당 참가비가 입력되지 않았습니다. 참가비를 입력해주세요");
	        return false;
	    }
        
         if (confirm("게시된 글은 공식매치게시글이므로 수정이 불가합니다.저장하시겠습니까?")) {
         
	        $(this).attr("action", "writeMatchingProcess");
	        $(this).attr("method", "post");
	        this.submit();
	        
		}
		
	});

});