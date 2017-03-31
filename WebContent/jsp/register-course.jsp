<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Course</title>
<jsp:include page="common-include.jsp" />
</head>
<body>

	<jsp:include page="common-header.jsp" />
	<h2>Register Course</h2>
	<div class="container">
		
		<ol class="breadcrumb">
		  <li><a href="#" onclick="postNavigate('home')">Home</a></li>
		  <li class="active">Register Course</li>
		</ol>
		<div class="panel panel-default">
		  <div class="panel-heading">
		    <h3 class="panel-title">List of Course Offerings</h3>
		  </div>
		  <div class="panel-body">
		    <table width="100%" style="border: 1px solid">
				<s:iterator value="courseOfferingList">
				<tr>
					<td><s:property value="courseId"/></td>
					<td><s:property value="courseName"/></td>
					<td><s:property value="creditCount"/></td>
				</tr>
				<tr>
					<td colspan="4">
						<table width="100%" style="border: 1px solid">
							<tr>
								<td><s:property value="offeringId"/></td>
								<td><s:property value="days"/></td>
								<td><s:property value="fromTime"/> - <s:property value="toTime"/></td>
								<td><s:property value="roomNo"/> <s:property value="building"/></td>
								<td>
									<s:iterator value="facultyList">
										<s:property value="lastName"/>,
										<s:property value="firstName"/>;
									</s:iterator>
								</td>
								<td>
									<input type="button" value="ENROLL" class="btn btn-primary btn-enroll" data-courseId='<s:property value="courseId"/>'/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				</s:iterator>
			</table>
		  </div>
		</div>
	
	</div>
	<jsp:include page="common-footer.jsp" />

</body>
</html>