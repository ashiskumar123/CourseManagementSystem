<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student List</title>'
<jsp:include page="common-include.jsp" />

<script type='text/javascript' src='js/student-list-main.js'></script>
</head>

<script>
	 function fetchRowDetails(){
		 var uid = document.getElementById("tduserId").innerHTML;
		 
	 }
	 </script>

<body>

	<jsp:include page="common-header.jsp" />
	<jsp:include page="common-menu.jsp" />
	<div class="container">
		<a href="#" onclick="javascript: postNavigate('home')">Go Back</a>
	</div>
	<div id ="studentTable" style="margin-top: 20px" class="container">
      <div class="maincontent">
		 <div>
		   <h2>Student List</h2>
		 </div>
		 <div style="margin-top: 20px">
		   <table class="table" style="width:70%;">

		      <thead class="thead-default">
			      <tr>
	                <th>User ID</th>
	                <th>Maximum Allowed Credits</th>
	                <th>Phone Number</th>
	                <th>First Name</th>
	                <th>Last Name</th>
	                <th>Department ID</th>
	                <th>GPA</th>
	                <th>Email</th>
	                <th>Residency Type</th>
	                <th>Address</th>
	                <th>Level Classification</th>
	                <th>Edit Course</th>
	              </tr>
              </thead>
              <tbody>
              	<s:iterator value="studentList">
              		<tr>
              			<td id="tduserId"><s:property value="userId"/></td>
              			<td id="tdmaxCredits"><s:property value="maxCredits"/></td>
              			<td id="tdphoneNumber"><s:property value="phoneNumber"/></td>
              			<td id="tdfirstName"><s:property value="firstName"/></td>
              			<td id="tdlastName"><s:property value="lastName"/></td>
              			<td id="tddeptId"><s:property value="deptId"/></td>
              			<td id="tdgpa"><s:property value="gpa"/></td>
              			<td id="tdemail"><s:property value="email"/></td>
              			<td id="tdresidencyType"><s:property value="residencyType"/></td>
              			<td id="tdaddress"><s:property value="address"/></td>
              			<td id="tdlevelClassification"><s:property value="levelClassification"/></td>
              			<td>
           					<input type ="button" data-user-id='<s:property value="userId"/>' 
           							class="btn btn-primary btn-edit-student"
									value ="Edit Student"/>
              			</td>
              		</tr>
				</s:iterator>
			  
           </table>
		 </div>
	  </div>	 
	  <form id="frmBillr" method="get" action="addStudent" style = "margin-top:15px">    		
		  <input type ="submit" class="btn btn-primary" id ="btnBill" value ="Add Student" />   		   		
	  </form>
	</div>

	<jsp:include page="common-footer.jsp" />

</body>
</html>