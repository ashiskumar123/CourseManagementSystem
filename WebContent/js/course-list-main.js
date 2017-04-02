$(document).ready(function(){
	$(".btn-edit-course").click(function(){
		postNavigate('editCurrentCourse',{"courseId":$(this).data("course-id")});
	});
});