<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home - Course Management System</title>

<jsp:include page="common-include.jsp" />
<script type='text/javascript' src='js/student-home-main.js'></script>

<style>
    .inter-row{
    	margin-top : 10px;
    }
    /*table,th,td{
	    border: 1px solid black;
	    padding-top: 5px;
	    padding-bottom: 5px;
	}*/
	th{
		text-align: center;
	}
	td{
		padding-left: 13px;
	}
</style>  
</head>
<body>
  
	<jsp:include page="common-header.jsp" />
	<jsp:include page="common-menu.jsp" />
	<div id ="studentinfo" class="container">
	  <div class="maincontent">
		<div>
	      <h2>Student Information</h2>
	    </div>
		
	    <br/>
	    
	      <form id="frmStudentDetails" method="post" action = "editStudent">
	        <div class="row inter-row" id="sinfo">
		        <div class= "col-xs-3">
			        First Name: 
			        <label for="fname">
			        	<s:property value="%{studentDetails.firstName}"/>
			        </label>
		        </div>
		        <div class="col-xs-3">
		        	Last Name: 
			        <label for="lname">
			        	<s:property value="%{studentDetails.lastName}"/>
			        </label>
				</div>	        
	        </div>
	        
	        
	        <div class="row inter-row" id="phno1">
	           <div class="col-xs-3">
	             Phone Number: 
			        <label for="phno">
			        	<s:property value="%{studentDetails.phoneNumber}"/>
			        </label>
	           </div>
	           <div class="col-xs-3">
	             Email: 
			        <label for="email">
			        	<s:property value="%{studentDetails.email}"/>
			        </label>
	          </div>
	          
	        </div>
	        
	        <div class="row inter-row" id="adr1" >
	          <div class="col-xs-12">
				 Address: 
			        <label for="address">
			        	<s:property value="%{studentDetails.address}"/>
			        </label>
	          </div>
	        </div>
	              
	       <div class="row inter-row">
	           <div class="col-xs-3">
	             Department:
	             	<label for="dept">
			        	<s:property value="%{studentDetails.departmentName}"/>
			        </label>
	          </div>
	          <div class="col-xs-3">
	             GPA:
	             	<label for="gpa">
			        	<s:property value="%{studentDetails.gpa}"/>
			        </label>
	          </div>	                   
	        </div>
	        <div class="row inter-row">
	        	<div class="col-xs-3">
	             Level Classification:
	             	<label for="email">
			        	<s:property value="%{studentDetails.levelClassification}"/>
			        </label>
	          </div>
	          <div class="col-xs-3">
	             Residency Classification:
	             	<label for="email">
			        	<s:property value="%{studentDetails.residencyClassification}"/>
			        </label>	        
	          </div>
	        </div>
	        	        
	        <div class="row inter-row" id="btndiv">
	          <input type ="submit" class="btn btn-primary" id ="edit" value ="Edit" />
	        </div>
	        
	      </form>
	    </div>
	</div>
    <%-- <div id ="currentCourses" style="margin-top: 20px" class="container">
      <div class="maincontent">
		 <div>
		   <h2>Current Courses</h2>
		 </div>
		 <div style="margin-top: 20px">
		   <table style="width:70%;">
		      <col width="5">
		      <col width="20">
		      <col width="60">
		      <tr>
                <th>Department</th>
                <th>Course ID</th>
                <th>Title</th>
              </tr>
              	<s:iterator value="currentCoursesList">
              		<tr>
              			<td><s:property value="departmentName"/></td>
              			<td><s:property value="courseId"/></td>
              			<td><s:property value="courseName"/></td>
              		</tr>
				</s:iterator>
           </table>
		 </div>
	  </div>	 
	</div> --%>
	
	<div id ="courseSchedule" style="margin-top: 20px" class="container">
      <div class="maincontent">
		 <div>
		   <h2>Current Courses</h2>
		 </div>
		 <div style="margin-top: 20px">
		   <table class="table" style="width:70%;">
		      <col width="5">
		      <col width="20">
		      <col width="20">
		      <col width="60">
		      <col width="60">
		      <col width="60">
		      <thead class="thead-default">
			      <tr>
	                <th>Department</th>
	                <th>Course ID</th>
	                <th>Course Name</th>
	                <th>Schedule</th>            
	                <th>Location</th>
	                <th>List of Faculty</th>
	              </tr>
              </thead>
              <tbody>
              <s:iterator value="currentCoursesList">
              		<tr>              		    
              			<td><s:property value="departmentName"/></td>
              			<td><s:property value="courseId"/></td>
              			<td><s:property value="courseName"/></td>
              			<td>
              				<s:iterator value="scheduleList">
              					<s:property value="day"/>
              					From <s:property value="fromTime"/>
              					To <s:property value="toTime"/>
              					<br>
              				</s:iterator>
              			</td>
              			<td>
              				Room No: <s:property value="%{location.roomNo}"/>, 
              				<s:property value="%{location.building}"/>
              			</td>
              			<td>
              				<s:iterator value="facultyList">
              					<s:property value="firstName"/>
              					<s:property value="lastName"/>,
              				</s:iterator>
              			</td>
                    </tr>
              </s:iterator>
              </tbody>
           </table>
           
		 </div>
	  </div>
	  <form id="frmRegister" method="POST" action="registerCourse">    		
		   <input type ="submit" class="btn btn-primary" id ="btnReg" value ="Register for Courses" />    		   		
	   </form>	 
	</div>
	
	<div id ="completedCourses" style="margin-top: 20px" class="container">
      <div class="maincontent">
		 <div>
		   <h2>Completed Courses</h2>
		 </div>
		 <div style="margin-top: 20px">
		   <table class="table" style="width:70%;">
		      <col width="5">
		      <col width="20">
		      <col width="60">
		      <col width="60">
		      <thead class="thead-default">
			      <tr>
	                <th>Department</th>
	                <th>Course ID</th>
	                <th>Title</th>
	                <th>Grade</th>
	              </tr>
              </thead>
              <tbody>
              	<s:iterator value="completedCoursesList">
              		<tr>
              			<td><s:property value="departmentName"/></td>
              			<td><s:property value="courseId"/></td>
              			<td><s:property value="courseName"/></td>
              			<td><s:property value="grade"/></td>
              		</tr>
				</s:iterator>
			  
           </table>
		 </div>
	  </div>	 
	  <form id="frmBillr" method="get" action="viewBill" style = "margin-top:15px">    		
		  <input type ="submit" class="btn btn-primary" id ="btnBill" value ="View Bill" />   		   		
	  </form>
	</div>
	
	
	
    <div class="container" style="margin-top: 15px" >
    	<div class="row">
	    	
	    	
    	</div>
    </div>
	<jsp:include page="common-footer.jsp" />
</body>
</html>