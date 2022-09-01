<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<div class = "container3">
	<c:forEach var="guide" items="${guideDet}"> 
	
	<c:set var = "name" value = "${guide.name}"/>
	<c:set var = "nic" value = "${guide.nic}"/>
	<c:set var = "gen" value = "${guide.gender}"/>
	<c:set var = "age" value = "${guide.age}"/>
	<c:set var = "lang" value = "${guide.language}"/>
	<c:set var = "tel" value = "${guide.telephone}"/>
	
	<c:set var = "email" value = "${guide.email}"/>
	
	   


	
	<div class = "guide">
	<img src="images/pp.png" alt="Profile picture" height = "75" width = "75">

	<h2 style = "color:#0099cc;">${guide.name}</h2>
	
	<b>Age :  </b>${guide.age}<br>
	<b>Gender :  </b>${guide.gender}<br>
	<b>ID :  </b>${guide.nic}<br>
	<b>Language :  </b>${guide.language}<br>
	<b>Telephone :  </b>${guide.telephone}<br>
	<b>Email :  </b>${guide.email}<br>
	
	</div>
	

	</c:forEach>
	<br><a href = insertguide.jsp>Back</a>
	</div>
<!-- body ********-->

</div>


<div class="footer">
  Copyright 2021 © INFINITY_TOURS. All Rights Reserved.
</div>


</body>
</html>