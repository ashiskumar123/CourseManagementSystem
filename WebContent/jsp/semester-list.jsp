<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Semester List</title>
<jsp:include page="common-include.jsp" />

<script type='text/javascript' src='js/semester-list-main.js'></script>
</head>



<body>

	<jsp:include page="common-header.jsp" />
	<div id ="semesterTable" style="margin-top: 20px" class="container">
		<ol class="breadcrumb">
		  	<li><a href="#" onclick="postNavigate('home')">Home</a></li>
		  	<li class="active">Semester List</li>
		</ol>
      <div class="maincontent">
		 <div>
		   <h2>Semester List</h2>
		 </div>
		 <div style="margin-top: 20px">
		   <table class="table" style="width:70%;">

		      <thead class="thead-default">
			      <tr>
	                <th>Semester ID</th>
	                <th>Semester Type</th>
	                <th>Start Date</th>
	                <th>End Date</th>
	                <th>Course Add Deadline</th>
	                <th>Course Drop Deadline</th>
	                <th>Edit Semester</th>
	              </tr>
              </thead>
              <tbody>
              	<s:iterator value="semesterList">
              		<tr>
              			<td><s:property value="semesterId"/></td>
              			<td><s:property value="semesterType"/></td>
              			<td><s:property value="startDate"/></td>
              			<td><s:property value="endDate"/></td>
              			<td><s:property value="courseAddDeadline"/></td>
              			<td><s:property value="courseDropDeadline"/></td>
              			<td>
           					<input type ="button" data-semester-id='<s:property value="semesterId"/>' 
           							class="btn btn-primary btn-edit-semester"
									value ="Edit Semester"/>
              			</td>
              		</tr>
				</s:iterator>
			  
           </table>
		 </div>
	  </div>	 
	  <form id="frmBillr" method="get" action="addSemester" style = "margin-top:15px">    		
		  <input type ="submit" class="btn btn-primary" id ="btnBill" value ="Add Semester" />   		   		
	  </form>
	</div>

	<jsp:include page="common-footer.jsp" />

</body>
</html>