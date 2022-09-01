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



<div><!--code eka me div eka athulata daanna. Table eka delete karanna. <style> tag eka delete karanna-->
<!-- body ****-->
<div class = "container">
		<h1 style = "color:white; font-size:35px;">Be a Tour Guide with Infinity Tours</h1>
		
	
		<table class = "box"><tr>
		<td style = "padding:30px;">
			<form action = "insert" method = "post">
			
			<div class = "leftdiv">
			<label>Name</label><br>
			<input class = "insertbtn" type = "text" name = "name" required placeholder = "Enter your full name"><br>
			
			<label>Age</label><br>
			<input class = "insertbtn" type = "text" name = "age" pattern="[0-9]{2}" required><br>
			
			<label>Gender</label><br>	
			<input class = "insertbtn" type = "text" name = "gen"><br>
			
			
			<label>NIC number</label><br>
			<input class = "insertbtn" type = "text" name = "nic" required><br>
			
			
			
			<label>Home town</label><br>
			<input  class = "insertbtn"type = "text" name = "town"><br>
			</div>
			
			<div class = "leftdiv">
			<label>Language</label><br>
		    <input class = "insertbtn" type = "text" name = "lang"><br>
			
			<label>Telephone</label><br>
			<input class = "insertbtn" type = "text" name = "tel" pattern="[0-9]{10}" required><br>
			
			<label>Email</label><br>
			<input class = "insertbtn" type = "text" name = "email"><br>
			
			<label>Create a user name</label><br>
			<input class = "insertbtn" type = "text" name = "usn" required><br>
		
			<label>Create a password</label><br>
			<input class = "insertbtn" type = "password" name = "psw" required pattern=".{8,}" title="Must include 8 or more characters"><br>
			</div>
				
				<div>
				<input type = "submit" name = "submit" value = "Create Account" class = "Sbtnx">
				</div>
				
				</form>
				</td>
				
				
		<td style = "text-align:left; padding:15px;">	
		
		Already have an account?
		<br>
		Login to modify your details.
		<br><br>
		<a class = "Sbtnx" href = "loginguide.jsp">Log in</a>
		<br><br><br><br><br><br>	
		Meet our Guide team
		<br>
		
	<form action = "view" method = "post" style = "margin-top:5px;">
		<input class = "Sbtnx" type = "submit" name = "view" id = "view" value = "View all">
	</form>
	
		
		
		
		
		</td>
				
		</tr>		
			</table>	
	

		
		</div><!-- container -->
<!-- body ********-->

</div>


<div class="footer">
  Copyright 2021 © INFINITY_TOURS. All Rights Reserved.
</div>


</body>
</html>