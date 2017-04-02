$(document).ready(function(){
	$("#selectDeptId").change(function(){
		$("#deptId").val($(this).find(":selected").val());
	})
})