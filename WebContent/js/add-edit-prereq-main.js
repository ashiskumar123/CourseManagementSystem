$(document).ready(function(){
	$("#selectPrereqType").change(function(){
		$("#prereqType").val($(this).find(":selected").val());
	});
	$('#fromTime').timepicker();
	$('#toTime').timepicker();
})