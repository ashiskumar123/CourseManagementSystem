<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Course</title>
<jsp:include page="common-include.jsp" />
<link rel="stylesheet" type="text/css" href="css/register-course-main.css"/>
</head>
<body>

	<jsp:include page="common-header.jsp" />
	<h2 class="page-title">Register Course</h2>
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
				<s:iterator value="courseOfferingList">
				<div class="row course-header">
					<div class="col-md-4"><s:property value="courseId"/></div>
					<div class="col-md-4"><s:property value="courseName"/></div>
					<div class="col-md-4">Credits: <s:property value="creditCount"/></div>
				</div>
				<div class="row course-offering offering-header">
					<div class="col-md-2">Offering Id</div>
					<div class="col-md-2">Days</div>
					<div class="col-md-2">Timings</div>
					<div class="col-md-2">Location</div>
					<div class="col-md-3">Faculty</div>
				</div>
				<div class="row course-offering offering-body">
					<div class="col-md-2"><s:property value="offeringId"/></div>
					<div class="col-md-2"><s:property value="days"/></div>
					<div class="col-md-2"><s:property value="fromTime"/> - <s:property value="toTime"/></div>
					<div class="col-md-2"><s:property value="roomNo"/> <s:property value="building"/></div>
					<div class="col-md-3">
						<s:iterator value="facultyList">
							<s:property value="lastName"/>,
							<s:property value="firstName"/>;
						</s:iterator>
					</div>
					<div class="col-md-1">
						<input type="button" value="ENROLL" class="btn btn-default btn-enroll" data-courseId='<s:property value="courseId"/>'/>
					</div>
				</div>
				</s:iterator>
		  </div>
		</div>
	
	</div>
	<jsp:include page="common-footer.jsp" />

</body>
</html>