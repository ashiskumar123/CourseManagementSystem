$(document).ready(function(){
	$(".btn-edit-student").click(function(){
		postNavigate('editCurrentStudent',{"userId":$(this).data("user-id")});
	});
});