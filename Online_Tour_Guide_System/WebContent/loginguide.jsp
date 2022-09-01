<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "home.css" />
<link rel = "stylesheet" type = "text/css" href = "styles.css" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

<div class = "header">
	<p>Infinity Tours</p>
</div>

<div class="navbar">
  <a href="home.jsp" >Home</a>
  <a href="#">Add Tours</a>
  <a href="#">Book Air Ticket</a>
  <a href="#" class="active">Be a Guide</a>
  
  <a href="#" class = "right">Sign up</a>
  <a href="#" class = "right">Sign in</a>
</div>



<div>
<!-- body ****-->
<div class = "logincon">

<div class = "login">

<h1 style = "font-family:Arial, Helvetica, sans-serif;">Guide Login</h1>

<br>
	<form action = "login" method = "post">
		<input class = "user" type = "text" name = "user" placeholder = "Enter your username"><br>
		<input class = "user" type = "password" name = "pass" placeholder = "Enter your password"><br>
		<input class = "logsub" type = "submit" name = "submit" value = "Login">
	</form>
	</div>

</div>
<!-- body ********-->

</div>


<div class="footer">
  Copyright 2021 © INFINITY_TOURS. All Rights Reserved.
</div>


</body>
</html>