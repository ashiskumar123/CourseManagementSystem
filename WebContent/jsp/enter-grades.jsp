<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enter Grades</title>'
<jsp:include page="common-include.jsp" />

<script type='text/javascript' src='js/student-list-main.js'></script>
<script type='text/javascript' src='js/enter-grades-main.js'></script>
</head>



<body>

	<jsp:include page="common-header.jsp" />
	<jsp:include page="common-menu.jsp" />
	<div class="container">
		<a href="#" onclick="javascript: postNavigate('home')">Go Back</a>
	</div>
	<div id ="studentTable" style="margin-top: 20px" class="container">
      <div class="maincontent">
		 <div>
		   <h2>Enter Grades</h2>
		 </div>
		 <div style="margin-top: 20px">
		   <table class="table" style="width:70%;">

		      <thead class="thead-default">
			      <tr>
	                <th>Offering ID</th>
	                <th>Credit Count</th>
	                <th>Grade</th>
	                <th>Save</th>
	              </tr>
              </thead>
              <tbody>
              	<s:iterator value="enrolledList">
              		<tr>
              			<td ><s:property value="offeringId"/></td>
              			<td ><s:property value="creditCount"/></td>
              			<td>
           					<input type ="text" id="gradeId" value =<s:property value="grade"/> placeholder="Enter Grades"/>
              			</td>
              			<td>
           					<input type ="button" data-user-id='<s:property value="userId"/>' 
           							data-grade='<s:property value="grade"/>'
           							class="btn btn-primary btn-save-grade"
									value ="Save"/>  
              			</td>
              		</tr>
				</s:iterator>
			  
           </table>
		 </div>


	<jsp:include page="common-footer.jsp" />

</body>
</html>