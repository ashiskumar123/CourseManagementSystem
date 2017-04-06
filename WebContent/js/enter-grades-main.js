$(document).ready(function(){
	$(".btn-save-grade").click(function(){
		postNavigate('saveGrade',{
			"userId" : $(this).data("user-id"),
			"grade" :$("#"+$(this).data("user-id")+$(this).data("offering-id")).val(),
			"courseOfferingId" : $(this).data("offering-id")
			});
	});
});