$(document).ready(function(){
	$(".btn-decline-request").click(function(){
	postNavigate('declineRequest',{"requestId":$(this).data("request-id")});
   });

});