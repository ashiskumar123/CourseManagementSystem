	$(document).ready(function() {
		$("#firstname").val("Prashant");
		$("#lastname").val("Tanksali");
		$("#username").val("prtanksa");
		$("#password").val("prt_NC94");

		$("#phone").val("919-527-3556");

		$("#addr1").val("2516 Avent Ferry Rd");

		$("#addr2").val("Apt 204");
		$("#level").val("UG");
		$("#residency").val("India");
		$("#gpa").val("4.0");
	});
	function editButton(){
		document.getElementById("firstname").removeAttribute("disabled");
		document.getElementById("lastname").removeAttribute("disabled");
		document.getElementById("username").removeAttribute("disabled");
		document.getElementById("password").removeAttribute("disabled");
		document.getElementById("addr1").removeAttribute("disabled");
		document.getElementById("addr2").removeAttribute("disabled");
		document.getElementById("phone").removeAttribute("disabled");
		$("#edit").remove();
		
		var $save = $('<div  class="col-xs-1"><button class="btn btn-default" id ="save" onclick="saveButton()">Save</button></div>');
		
		btdiv = document.getElementById("btndiv");
		$save.appendTo(btdiv);
		
		var $clear = $('<div class="col-xs-1"><button class="btn btn-default" id ="clear" onclick="clearButton()">Clear</button></div>');
		
		$clear.appendTo(btdiv);
}
   function saveButton(){
   document.getElementById("firstname").setAttribute("disabled");
  document.getElementById("lastname").setAttribute("disabled");
  document.getElementById("username").setAttribute("disabled");
  document.getElementById("password").setAttribute("disabled");
  document.getElementById("addr1").setAttribute("disabled");
  document.getElementById("addr2").setAttribute("disabled");
  document.getElementById("phone").setAttribute("disabled");
   
   
   
   
   }
   
   function clearButton(){
    
	document.getElementById("firstname").value = "";
  document.getElementById("lastname").value = "";
  document.getElementById("username").value = "";
  document.getElementById("password").value = "";
  document.getElementById("addr1").value = "";
  document.getElementById("addr2").value = "";
  document.getElementById("phone").value = "";
 
   }
