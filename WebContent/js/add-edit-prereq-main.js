$(document).ready(function(){
	$("#selectPrereqType").change(function(){
		$("#prereqType").val($(this).find(":selected").val());
	});
})