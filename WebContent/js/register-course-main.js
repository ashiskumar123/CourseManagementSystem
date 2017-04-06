$(document).ready(function(){
	$("#dropOfferingId").val($("#selDropCourse").find("option:first-child").val());

	$("#selDropCourse").change(function(){
		$("#dropOfferingId").val($(this).find(":selected").val());
	});
	
	$(".btn-enroll").click(function(){
		console.log("offering-id="+$(this).data("offering-id"));
		var credits;
		if($(this).data("course-type")=="1") //Fixed Credit
			creditCount = $(this).data("credit-count");
		else
		{
			var creditCount = prompt("Please enter the number of credits for this course", 
										$(this).data("credit-count"));
		    
		    if (creditCount < 1 || creditCount > parseInt($(this).data("credit-count"))) {
		        alert("Invalid Credits Entered!");
		        return;
		    }
		}
		console.log("offering-id="+$(this).data("offering-id"));
		postNavigate("enrollStudent", {
			"offeringId": $(this).data("offering-id"),
			"creditCount": creditCount,
			"dropOfferingId": $("#dropOfferingId").val()
		})
	});
	
	$(".btn-drop-course-enroll").click(function(){
		postNavigate("enrollStudent", {
			"offeringId": $("#offeringId").val(),
			"creditCount": $("#creditCount").val(),
			"dropOfferingId": $("#dropOfferingId").val()
		})
	});
	
	$(".btn-drop").click(function(){
		postNavigate("dropStudentCourse", {
			offeringId: $(this).data("offering-id")
		});
	})
	$(".btn-spperm").click(function(){
		postNavigate("requestSpecialPermission", {
			"offeringId": $("#offeringId").val(),
			"creditCount": $("#creditCount").val()
		});
	})
})