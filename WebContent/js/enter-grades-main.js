$(document).ready(function(){
	$(".btn-save-grade").click(function(){
		postNavigate('saveGrade',{
			"userId" : $(this).data("user-id"),
			"grade" :$("#gradeId").val()
			});
	});
});