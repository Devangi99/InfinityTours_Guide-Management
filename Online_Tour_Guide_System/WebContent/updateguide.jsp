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
<% 
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String nic = request.getParameter("nic");
	String gender = request.getParameter("gen");
	String age = request.getParameter("age");
	String language = request.getParameter("language");
	String telephone = request.getParameter("phone");
	String hometown = request.getParameter("home");
	String email = request.getParameter("email");
	String username = request.getParameter("un");
	String password = request.getParameter("pw");
%>
<div class = "container2">
<img src="images/pp.png" alt="Profile picture" height = "100" width = "100">
<br><br>
<form action = "update" method = "post">
	
	<table class = "prof">	
		<tr>	
		<td class = "text1">Name</td><td><input class = "blank" type = "text" name = "name" value = "<%= name%>"></td>
	</tr>
	
	<tr>
		<td class = "text1">Guide ID</td><td><input class = "blank" type = "text" name = "guideid" value = "<%= id%>" readonly></td>
	</tr>
	

	
	<tr>
		<td class = "text1">NIC</td><td><input class = "blank" type = "text" name = "nic" value = "<%= nic%>" required></td>
	</tr>
	
	<tr>
		<td class = "text1">Age</td><td><input class = "blank" type = "text" name = "age" value = "<%= age%>" pattern="[0-9]{2}" required></td>
	</tr>	
		
	<tr>
		<td class = "text1">Gender</td><td><input class = "blank" type = "text" name = "gen" value = "<%= gender%>"></td>
	</tr>
		

	
	<tr>
		<td class = "text1">Language</td><td><input class = "blank" type = "text" name = "lang" value = "<%= language%>"></td>
	</tr>
		

	
		
	<tr>
		<td class = "text1">Home town</td><td><input class = "blank" type = "text" name = "home" value = "<%= hometown%>"></td>
	</tr>	
	
		<tr>
		<td class = "text1">Telephone</td><td><input class = "blank" type = "text" name = "phone" value = "<%= telephone%>" pattern="[0-9]{10}" required></td>
	</tr>
	
	<tr>
		<td class = "text1">Email</td><td><input class = "blank" type = "text" name = "email" value = "<%= email%>"></td>
	</tr>	
		
	<tr>
		<td class = "text1">User name</td><td><input class = "blank" type = "text" name = "uname" value = "<%= username%>"></td>
	</tr>
	
			
	<tr>
		<td class = "text1">Password</td><td><input class = "blank" type = "password" name = "pass" value = "<%= password%>" required pattern=".{8,}" title="Must include 8 or more characters"></td>
	</tr>		
	
	</table>
<input type = "submit" name = "submit" value = "Update profile" class = "btn"><br>
	
</form>
<br><a href = insertguide.jsp>Back</a>
</div>

<!-- body ********-->

</div>


<div class="footer">
  Copyright 2021 © INFINITY_TOURS. All Rights Reserved.
</div>


</body>
</html>