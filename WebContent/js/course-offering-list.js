$(document).ready(function(){
	$(".btn-edit-course-offering").click(function(){
		postNavigate('editCurrentCourseOffering',{"courseOfferingId":$(this).data("course-offering-id")});
	});
});