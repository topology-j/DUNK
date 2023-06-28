/**
 * 
 */
 
 $(function() {
 
 	$("#eventDetailUpdate").on("click", function() {
 		 		
 		$("#eventCheckForm").attr("action", "eventUpdate");
 		$("#eventCheckForm").submit(); 	
 	});
 	
 	$("#eventDetailDelete").on("click", function() {
 		 		
 		$("#eventCheckForm").attr("action", "eventDelete");
 		$("#eventCheckForm").submit(); 	
 	});
 
 	$("#eventRecommend").on("click", function() { 		 		
 		$("#eventCheckForm").attr("action", "eventRecommend");
 		$("#eventCheckForm").submit(); 	 			
 	}); 
 
 });