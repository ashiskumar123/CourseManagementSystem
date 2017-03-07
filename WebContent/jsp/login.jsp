<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home - Course Management System</title>

<jsp:include page="common-include.jsp" />
<link rel="stylesheet" type="text/css" href="css/login.css"/>

</head>
<body>
	<div class="header">
		NCSU Course Management Portal
	</div>
	<div class="maincontent">
		<div class="main-login main-center">
			<label class="login-title cols-sm-2 control-label left">Enter Username and Password</label>
		
			<form class="form-horizontal" method="post" action="#">
	
				<div class="form-group">
					<label for="username" class="cols-sm-2 control-label">Username</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span>
							<input type="text" class="form-control" name="username" id="username"  placeholder="Enter your Username"/>
						</div>
					</div>
				</div>
	
				<div class="form-group">
					<label for="password" class="cols-sm-2 control-label">Password</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-lock" aria-hidden="true"></i></span>
							<input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>
						</div>
					</div>
				</div>
	
				<div class="form-group ">
					<button type="button" class="btn btn-danger btn-lg btn-block login-button">Login</button>
				</div>
			</form>
		</div>
	</div>
	<div class="footer navbar navbar-fixed-bottom">
		Copyright 2017 NCSU. Towards submission of DBMS Project 1
	</div>
</body>
</html>