$(document).ready(function(){
	for(var i=1;i<=4;i++){
		if($("#tdStatus"+i).text() == 'APPROVED'||$("#tdStatus"+i).text() == 'DECLINED'){
			$("#btnApprove"+i).prop("disabled",true);
			$("#btnDecline"+i).prop("disabled",true);
		}
	} 
	
});