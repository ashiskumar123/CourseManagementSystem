<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Course List</title>'
<jsp:include page="common-include.jsp" />
</head>
<body>

	<jsp:include page="common-header.jsp" />
	<jsp:include page="common-menu.jsp" />
	<div class="container">
		<a href="#" onclick="javascript: postNavigate('home')">Go Back</a>
	</div>
	<div id ="courseTable" style="margin-top: 20px" class="container">
      <div class="maincontent">
		 <div>
		   <h2>Course List</h2>
		 </div>
		 <div style="margin-top: 20px">
		   <table class="table" style="width:70%;">

		      <thead class="thead-default">
			      <tr>
	                <th>Course ID</th>
	                <th>Course Name</th>
	                <th>Department ID</th>
	                <th>Credit Count</th>
	                <th>Course type</th>
	                <th>Classification Level</th>
	              </tr>
              </thead>
              <tbody>
              	<s:iterator value="courseList">
              		<tr>
              			<td><s:property value="courseId"/></td>
              			<td><s:property value="courseName"/></td>
              			<td><s:property value="deptId"/></td>
              			<td><s:property value="creditCount"/></td>
              			<td><s:property value="courseType"/></td>
              			<td><s:property value="classificationLevel"/></td>
              		</tr>
				</s:iterator>
			  
           </table>
		 </div>
	  </div>	 
	  <form id="frmBillr" method="get" action="addCourse" style = "margin-top:15px">    		
		  <input type ="submit" class="btn btn-primary" id ="btnAddCourse" value ="Add Course" />   		   		
	  </form>
	</div>

	<jsp:include page="common-footer.jsp" />

</body>
</html>