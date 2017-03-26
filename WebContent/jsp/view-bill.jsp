<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student-View Bill</title>'
<jsp:include page="common-include.jsp" />
<style>
    .inter-row{
    margin-top : 15px;
    }
    @import url('https://fonts.googleapis.com/css?family=Lilita+One');
</style>
</head>
<body>

	<jsp:include page="common-header.jsp" />
	<jsp:include page="common-menu.jsp" />
	<div class="container">
		<a href="#" onclick="javascript: postNavigate('home')">Go Back</a>
	</div>
	<div class="container">
		<div class="maincontent">
			<div>
		      <h2>Your Bill</h2>
		    </div>
		    <form id="frmViewAndPayBill" method="post" action="payBill">
		    	<div class="row inter-row" id="sinfo">
			        <div class= "col-xs-3">
				        Bill Amount: 
				        <label for="fname">
				        	<s:property value="%{bill.billAmount}"/>
				        </label>
			        </div>
		        </div>
		        <div class="row inter-row" >
			        <div class= "col-xs-6">
				        <label>Enter Amount to be Paid: </label>
				        <input type ="text" name = "payAmount" id ="payAmount" class="form-control" placeholder="Enter Pay Amount" ></input>
				    </div>   		        
	            </div>
	            <div class="row inter-row">
	            	<input type ="submit" class="btn btn-primary" id ="updatePwd" value ="Pay Bill" />         
	            </div>
		    </form>
		    <div class="row inter-row">
	        	<p style="color: red; font-family: 'New Century Schoolbook', serif; font-style: oblique; font-size:20px;">
	        	<s:property value="%{payError}"/></p>
	        </div>
	        
	        <div class="row inter-row">
	        	<p style="color:green; font-family:'Lilita One', cursive; font-size:20px;">
	        	<s:property value="%{paySuccess}"/></p>
	        </div>
		</div>
	</div>
	<jsp:include page="common-footer.jsp" />

</body>
</html>