$(document).ready(function(){
	
	$(".btn-edit-semester").click(function(){
		postNavigate('editCurrentSemester',{"semesterId":$(this).data("semester-id")});
	});
});