$(document).ready(function(){
	$("#btnLogin").bind("click", function(){ validateUser(); });
	
	$("input[name='userName'], input[name='password']").keypress(function(e) {
	    if(e.which == 13) {
	    	$("#btnLogin").click();
	    }
	});
})
function validateUser(){
	var postData = "jsonString="+encodeURI(formToJSON('.form-horizontal'));
	$.ajax({
		url: "AJAXValidateLogin",
		data: postData
	})
	.done(function(data){
		resultData = JSON.parse(data);
		console.log(resultData);
		
		loginResult = resultData.loginResult;
		
		if(loginResult.errorData.errorCode=="0"){
			postNavigate("home",{"userRole" : loginResult.role});
		}
		else
		{
			//Handle Error
		}
	});
}