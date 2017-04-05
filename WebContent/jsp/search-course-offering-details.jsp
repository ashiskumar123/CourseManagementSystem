<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Course Offering Details</title>'
<jsp:include page="common-include.jsp" />

<script type='text/javascript' src='js/student-list-main.js'></script>
</head>



<body>

	<jsp:include page="common-header.jsp" />
	<jsp:include page="common-menu.jsp" />

		<div id ="courseOfferingSearch" style="margin-top: 20px" class="container">
		  <div class="container">
			<ol class="breadcrumb">
			  <li><a href="#" onclick="postNavigate('home')">Home</a></li>
			  <li class="active">Course List</li>
			</ol>
		</div>
      <div class="maincontent">
		 <div>
		   <h2>Course Offering Details</h2>
		 </div>
		 <div style="margin-top: 20px">
		   <table class="table" style="width:70%;">

		      <thead class="thead-default">
			      <tr>
	                <th>Course Offering ID</th>
	                <th>Course ID</th>
	                <th>Class Size</th>
	                <th>Waitlist Size</th>
	                <th>Semester </th>
	                <th>Location </th>
	              </tr>
              </thead>
              <tbody>
              	<s:iterator value="courseOfferingList">
              		<tr>
              			<td><s:property value="courseOfferingId"/></td>
              			<td><s:property value="courseId"/></td>
              			<td><s:property value="classSize"/></td>
              			<td><s:property value="waitlistSize"/></td>
              			<td><s:property value="semesterId"/></td>
              			<td><s:property value="locationId"/></td>
              		</tr>
				</s:iterator>
			  
           </table>
		 </div>
	  </div>	 
	</div>

	<jsp:include page="common-footer.jsp" />

</body>
</html>