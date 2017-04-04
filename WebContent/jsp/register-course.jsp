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
<script type='text/javascript' src='js/register-course-main.js'></script>
</head>
<body>

	<jsp:include page="common-header.jsp" />
	<h2 class="page-title">Register Course</h2>
	<div class="container-fluid">
		
		<ol class="breadcrumb">
		  <li><a href="#" onclick="postNavigate('home')">Home</a></li>
		  <li class="active">Register Course</li>
		</ol>
		<div class="row">
			<div class="col-md-6">
				<div class="row" id="alertInfo">
					<s:if test="%{errorData.errorCode==0}">
					    <div class="alert alert-success" role="alert">
						  <span class="glyphicon glyphicon glyphicon-info-sign" aria-hidden="true"></span>
						  <span class="sr-only">Error:</span>
						  <s:property value="%{errorData.errorMessage}"/>
						</div>
					</s:if>
					<s:elseif test="%{errorData.errorCode<0}">
					    <s:if test="%{errorData.errorCode==-5}">
							<div class="alert alert-info" role="alert">
							  <span class="glyphicon glyphicon glyphicon-info-sign" aria-hidden="true"></span>
							  <s:property value="%{errorData.errorMessage}"/>
								<input type="button" value="Request Permission" 
								class="btn btn-success btn-spperm"
								data-course-id='<s:property value="courseId"/>'
								/>
							</div>
						</s:if>
						<s:elseif test="%{errorData.errorCode==-7}">
						    <div class="alert alert-info" role="alert">
							  <span class="glyphicon glyphicon glyphicon-info-sign" aria-hidden="true"></span>
							  <s:property value="%{errorData.errorMessage}"/>
								<input type="button" value="Request Permission" 
								class="btn btn-success btn-spperm"
								data-course-id='<s:property value="courseId"/>'
								/>
							</div>
						</s:elseif>
						<s:else>
						    <div class="alert alert-danger" role="alert">
							  <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
							  <span class="sr-only">Error:</span>
							  <s:property value="%{errorData.errorMessage}"/>
							</div>
						</s:else>
					</s:elseif>
				</div>
				
				<div class="row">
					<div class="panel panel-default">
					  <div class="panel-heading">
					    <h3 class="panel-title">List of Course Offerings</h3>
					  </div>
					  <div class="panel-body">
							<s:iterator value="courseOfferingList">
							<div class="row course-header">
								<div class="col-md-2"><s:property value="courseId"/></div>
								<div class="col-md-4"><s:property value="courseName"/></div>
								<div class="col-md-4">Credits: <s:property value="creditCount"/></div>
							</div>
							<div class="row course-offering offering-header">
								<div class="col-md-1" style="width: 11.4%;">Offering Id</div>
								<div class="col-md-1">Days</div>
								<div class="col-md-2">Timings</div>
								<div class="col-md-1">Location</div>
								<div class="col-md-3">Faculty</div>
								<div class="col-md-2">Availability</div>
							</div>
							<div class="row course-offering offering-body">
								<div class="col-md-1" style="width: 11.4%;"><s:property value="offeringId"/></div>
								<div class="col-md-1"><s:property value="days"/></div>
								<div class="col-md-2"><s:property value="fromTime"/> - <s:property value="toTime"/></div>
								<div class="col-md-1"><s:property value="roomNo"/> <s:property value="building"/></div>
								<div class="col-md-3">
									<s:iterator value="facultyList">
										<s:property value="lastName"/>,
										<s:property value="firstName"/>;
									</s:iterator>
								</div>
								<div class="col-md-2">
									<s:property value="availability"/>
								</div>
								<div class="col-md-1">
									<input type="button" value="ENROLL" 
									class="btn btn-success btn-enroll"
									data-toggle="modal"
									data-target="#ajaxModal"
									data-offering-id='<s:property value="offeringId"/>'
									data-course-type='<s:property value="courseType"/>'
									data-credit-count='<s:property value="creditCount"/>'
									/>
								</div>
							</div>
							</s:iterator>
					  </div>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="panel panel-default">
				  <div class="panel-heading">
				    <h3 class="panel-title">My Enrolled Courses</h3>
				  </div>
				  <div class="panel-body">
						<s:iterator value="studentCourseOfferingList">
						<div class="row enrolled-course-header">
							<div class="col-md-2"><s:property value="courseId"/></div>
							<div class="col-md-4"><s:property value="courseName"/></div>
							<div class="col-md-4">Credits: <s:property value="creditCount"/></div>
						</div>
						<div class="row course-offering offering-header">
							<div class="col-md-1" style="width: 11.4%;">Offering Id</div>
							<div class="col-md-1">Days</div>
							<div class="col-md-2">Timings</div>
							<div class="col-md-1">Location</div>
							<div class="col-md-3">Faculty</div>
							<div class="col-md-2">Status</div>
						</div>
						<div class="row course-offering offering-body">
							<div class="col-md-1" style="width: 11.4%;"><s:property value="offeringId"/></div>
							<div class="col-md-1"><s:property value="days"/></div>
							<div class="col-md-2"><s:property value="fromTime"/> - <s:property value="toTime"/></div>
							<div class="col-md-1"><s:property value="roomNo"/> <s:property value="building"/></div>
							<div class="col-md-3">
								<s:iterator value="facultyList">
									<s:property value="lastName"/>,
									<s:property value="firstName"/>;
								</s:iterator>
							</div>
							<div class="col-md-2">
								<s:property value="enrollmentStatus"/>
							</div>
							<div class="col-md-1">
								<input type="button" value="DROP" 
								class="btn btn-warning btn-drop"
								data-toggle="modal"
								data-target="#ajaxModal"
								data-offering-id='<s:property value="offeringId"/>'
								/>
							</div>
						</div>
						</s:iterator>
				  </div>
			  	</div>
				<div class="panel panel-default">
				  <div class="panel-heading">
				    <h3 class="panel-title">Special Permissions</h3>
				  </div>
				  <div class="panel-body">
						<s:iterator value="sppermRequestList">
							<div class="row enrolled-course-header">
								<div class="col-md-2">Request Id</div>
								<div class="col-md-2">Course Id</div>
								<div class="col-md-2">Offering Id</div>
								<div class="col-md-4">Request Date</div>
								<div class="col-md-2">Status</div>
							</div>
							
							<div class="row">
								<div class="col-md-2"><s:property value="requestId"/></div>
								<div class="col-md-2"><s:property value="courseId"/></div>
								<div class="col-md-2"><s:property value="OfferingId"/></div>
								<div class="col-md-4"><s:property value="requestDate"/></div>
								<div class="col-md-2"><s:property value="status"/></div>
							</div>
						</s:iterator>
				  </div>
			  	</div>
			</div>
		</div>
		
	</div>
	<input type="hidden" id="dropOfferingId" value='<s:property value="dropOfferingId" />'>
	<input type="hidden" id="creditCount" value='<s:property value="creditCount" />'>
	<input type="hidden" id="offeringId" value='<s:property value="offeringId" />'>
	<%-- <div class="modal fade" id="ajaxModal" tabindex="-1" role="dialog">
	  <div class="modal-dialog">
	    <div class="modal-content">
			<div class="panel panel-default">
				<div class="panel-heading">
		        	<button type="button" class="close" data-dismiss="modal" ><span>&times;</span></button>
					Panel heading without title
				</div>
				<div class="panel-body">
					<div is="waitMessage" class="row">
						<image src="images/wait.gif" width="50px" height="50px"/>
						Processing Enroll Transaction...
					</div>
					<div is="resultSuccessMessage" class="row">
						<image src="images/wait.gif" width="50px" height="50px"/>
						Processing Enroll Transaction...
					</div>
					<div is="resultMessage" class="row">
						<image src="images/wait.gif" width="50px" height="50px"/>
						Processing Enroll Transaction...
					</div>
				</div>
			</div>
	    </div>
	  </div>
	</div> --%>
	<jsp:include page="common-footer.jsp" />

</body>
</html>