<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Faculty</title>'
<jsp:include page="common-include.jsp" />
<script>
$(document).ready(function(){

	$("#selFacultyId").change(function(){
		$("#facultyId").val($(this).find(":selected").val());
	
})
});



</script>
<style>
    .inter-row{
    margin-top : 15px;
    }
    @import url('https://fonts.googleapis.com/css?family=Lilita+One');
</style>
</head>
<body>

	<jsp:include page="common-header.jsp" />
	<div class="container">
		<div class ="maincontent">
		    <div>
		      <h2>Edit Faculty</h2>
		    </div>
		    
			<ol class="breadcrumb">
			  <li><a href="#" onclick="postNavigate('home')">Home</a></li>
			  <li><a href="#" onclick="postNavigate('showCourseOfferingList')">Manage Course Offerings</a></li>
			  <li class="active">Edit Faculty</li>
			</ol>
			
		  
		    
		   <div class="col-md-6">
		   		<form id="frmEditFaculty" method="post" action="deleteSelectedFaculty">
				    <div class="row inter-row" >
					   	<div class="col-md-6">
				         	<label>Current Faculty in Offering id <s:property value="%{courseOfferingId}"/>: </label>
							<s:select name="facultyId" id="facultyIdList" size="%{facultyList.size()}" value='<s:property value="facultyId"/>' cssClass="form-control"  
							           		list="facultyList" listKey="facultyId" listValue="%{firstName + ' ' + lastName}"/>
				        </div>
				        <input type="hidden" name="courseOfferingId" id="courseOfferingId" value='<s:property value="%{courseOfferingId}"/>'/>
					   	<div class="col-md-6">
					   		<input type ="submit" class="btn btn-warning" id ="deleteFaculty" value ="Delete Selected" />
					   	</div>
					</div>
				</form>
				
				<form id="frmEditFaculty" method="post" action="addSelectedFaculty">
				   <div class="row inter-row" >
				   	<div class="col-md-6">
				   		<s:select value='<s:property value="facultyId"/>' cssClass="form-control" id="selFacultyId" 
					           		list="listOfFaculty" listKey="facultyFullName" listValue="facultyId"/>
					     
				   	</div>
				   	<div class="col-md-6">
				   		<input type ="submit" class="btn btn-primary" id ="addFaculty" value ="Add Faculty" />
				   	</div>
					
	        		</div>	  
        		
	      		</form>
	            
	        </div>
	                  	
		    <input type="hidden" name="facultyId" id="facultyId"  /> 
		    
	        
	        <div class="row inter-row">
	                   
	        </div>
	        <div class="row inter-row">
	        	<p style="color: red; font-family: 'New Century Schoolbook', serif; font-style: oblique; font-size:20px;">
	        	<s:property value="%{errorMessage}"/></p>
	        </div>
	        
	        <div class="row inter-row">
	        	<p style="color:green; font-family:'Lilita One', cursive; font-size:20px;"><s:property value="%{resetSuccess}"/></p>
	        </div>
	        

	    </div>
    </div>
	<jsp:include page="common-footer.jsp" />

</body>
</html>