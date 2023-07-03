/**
 * 
 */
 $(function() {
 
 	$("#generateTeamForm").on("submit", function() {
 	
 		var teamname=$("#generateTeamName").val();
 		
 		if(teamname.length==0) { 		
 			alert("팀 이름을 입력해 주세요.");
 			$("#generateTeamName").focus();
 			return false;
 		} 	
 		
 		var teamexplanation=$("#generateTeamExplanation").val();
 		
 		if(teamexplanation.length==0) { 		
 			alert("팀 소개를 입력해 주세요.");
 			$("#generateTeamExplanation").focus();
 			return false;
 		}
 	
 	});
 	
 
 });