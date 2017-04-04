

//$(document).ready(function(){
	/*var val = document.getElementById("tsStatus").value;
	if(val == "APPROVED"){*/
		//$("#btnApprove").attr("disabled","disabled");
	//}
//});

//$(document).ready(function(){
//	$("#btnApprove").attr("disabled","disabled");
//});
		
$(document).ready(function(){
	$(".btn-approve-request").click(function(){
	postNavigate('approveRequest',{"requestId":$(this).data("request-id")});
   });

});