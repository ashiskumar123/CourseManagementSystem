<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login - Course Management System</title>

<jsp:include page="common-include.jsp" />
<link rel="stylesheet" type="text/css" href="css/login.css"/>

<script type="text/javascript" src="js/login-main.js"></script>

</head>
<body>
	<jsp:include page="common-header.jsp" />
	<div class="maincontent">
		<div class="main-login main-center">
			<label class="login-title cols-sm-2 control-label left">Enter Username and Password</label>
		
			<form class="form-horizontal" method="post" action="#">
	
				<div class="form-group">
					<label for="userName" class="cols-sm-2 control-label">Username</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span>
							<input type="text" class="form-control" name="userName" id="userName"  placeholder="Enter your Username"/>
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
					<button id="btnLogin" type="button" class="btn btn-danger btn-lg btn-block login-button">Login</button>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="common-footer.jsp" />
</body>
</html>