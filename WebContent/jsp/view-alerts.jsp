<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Requests-Course Management System</title>'
<jsp:include page="common-include.jsp" />
<script type='text/javascript' src='js/course-list-main.js'></script>
<script type='text/javascript' src='js/approve-request.js'></script>
<script type='text/javascript' src='js/decline-request.js'></script>
<%-- <script type='text/javascript' src='js/disable-button.js'></script> --%>
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
		   <h2>Student Requests</h2>
		 </div>
		 <div style="margin-top: 20px">
		   <table class="table" style="width:70%;">

		      <thead class="thead-default">
			      <tr>
			        <th>Sr No</th>
	                <th>Request ID</th>
	                <th>User ID</th>
	                <th>Student Name</th>
	                <th>Credit Count</th>
	                <th>Admin Name</th>
	                <th>Request Date</th>
	                <th>Update Date</th>
	                <th>Offering ID</th>
	                <th>Status</th>
	              </tr>
              </thead>
              <tbody>
                <% int count = 1,i=1,p=1,q=1;%>
              	<s:iterator value="requestList">
              		<tr>
              		    <td><%out.println(count++); %></td>       			
              			<td><s:property value="requestId"/></td>
              			<td><s:property value="userId"/></td>
              			<td><s:property value="studentName"/></td>
              			<td><s:property value="creditCount"/></td>
              			<td><s:property value="adminName"/></td>
              			<td><s:property value="requestDate"/></td>
              			<td><s:property value="updateDate"/></td>
              			<td><s:property value="offeringId"/></td>
              			<td id="tdStatus<%out.print(i++);%>" class="requestStatus"><s:property value="status"/></td>
              			<td>
              				<input type ="button" id="btnApprove<%out.print(p++);%>" 
		              				<s:if test="%{status.equals('APPROVED') || status.equals('DECLINED')}">
										disabled
									</s:if>
              						data-request-id='<s:property value="requestId"/>' 
           							class="btn btn-primary btn-approve-request"
									value ="Approve Request"/>
              			</td>
              			<td>
              				<input type ="button" id="btnDecline<%out.print(q++);%>"
		              				<s:if test="%{status.equals('APPROVED') || status.equals('DECLINED')}">
										disabled
									</s:if>
              						data-request-id='<s:property value="requestId"/>' 
           							class="btn btn-primary btn-decline-request"
									value ="Decline Request"/>
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