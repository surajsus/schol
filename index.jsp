<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Online Project Management Software</title>

<!-- Google Fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="/OPMS/WebSites/Index/css/animate.css">
<!-- Custom Stylesheet -->
<link rel="stylesheet" href="/OPMS/WebSites/Index/css/style.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
	
</head>


<body>
	<div class="container">
		<div class="top">
			<a href="home"><h1 id="title" class="hidden">
					<span id="logo">We do the work <span>for you.</span></span>
				</h1></a>
		</div>
		<div
			class="login-box animated fadeInDown">
			<div class="box-header">
				<h2>Log In</h2>
			</div>
			<form name="login" action="<%request.getContextPath();%>/OPMS/webl" method="post">
				<label for="username">Username</label> <br /> <input type="text"
					id="username" name="username" required> <br /> <label
					for="password">Password</label> <br /> <input type="password"
					id="password" name="password" required> <br /> <input
					type="hidden" name="handler" value="login" /> <input type="hidden"
					name="lastlogon"
					value="<%out.println(System.currentTimeMillis());%>" />
				<button type="submit" class="submit">Sign In</button>
			</form>
			<br />
			<%
			 try {if (request.getAttribute("wrong").equals("yes")) {%>
			<p class="smallred">Wrong Credentials</p>
			<%}
			else if(request.getAttribute("register").equals("success"))
			{%>
			<p class="smallred">Check your email for directions.</p>
			<%}
			 }catch(NullPointerException e1){} %>
			<%
			 try {if (request.getAttribute("recovery").equals("success")) {%>
			<p class="smallred">Check your email for directions.</p>
			<%}} catch(NullPointerException e1){} %>
			<a href="forgotpassword"><p class="small">Forgot your
					password?</p></a> <a href="contactus"><p class="small">New
					to here? Contact Us</p></a>
		</div>
	</div>
</body>

<script>
	$(document).ready(function () {
    	$('#logo').addClass('animated fadeInDown');
    	$("input:text:visible:first").focus();
	});
	$('#username').focus(function() {
		$('label[for="username"]').addClass('selected');
	});
	$('#username').blur(function() {
		$('label[for="username"]').removeClass('selected');
	});
	$('#password').focus(function() {
		$('label[for="password"]').addClass('selected');
	});
	$('#password').blur(function() {
		$('label[for="password"]').removeClass('selected');
	});
</script>

</html>