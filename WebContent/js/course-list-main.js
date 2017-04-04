$(document).ready(function(){
	$(".btn-edit-course").click(function(){
		postNavigate('editCurrentCourse',{"courseId":$(this).data("course-id")});
	});
	$(".btn-add-prereq").click(function(){
		postNavigate('addPrerequisite',{"courseId":$(this).data("course-id")});
	});
});