$(document).ready(function(){
	$(".btn-edit-student").click(function(){
		postNavigate('editCurrentStudent',{"userId":$(this).data("user-id")});
	});
	$(".btn-enter-grades").click(function(){
		postNavigate('enterGrades',{"userId":$(this).data("user-id")});
	});
	
});