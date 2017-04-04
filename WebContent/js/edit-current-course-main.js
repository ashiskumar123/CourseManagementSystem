$(document).ready(function(){
	$("#selectDeptId").change(function(){
		$("#deptId").val($(this).find(":selected").val());
	});
	
	$("#selectCourseType").change(function(){
		$("#courseType").val($(this).find(":selected").val());
		$("#courseType").val()==2?$("#minCreditsRow").show():$("#minCreditsRow").hide();
	});
	$("#selectCourseType").val($("#courseType").val()).trigger('change');
	
	$("#selectLevelClassification").val($("#levelClassification").val());
	$("#selectLevelClassification").change(function(){
		$("#levelClassification").val($(this).find(":selected").val());
	})
})