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
<div class = "container2">

<img src="images/pp.png" alt="Profile picture" height = "100" width = "100" style = "align:center;" >
<br><br>

<table class = "prof">
	<c:forEach var="guide" items="${guideDet}"> 
	
	<c:set var = "id" value = "${guide.id}"/>
	<c:set var = "name" value = "${guide.name}"/>
	<c:set var = "nic" value = "${guide.nic}"/>
	<c:set var = "gen" value = "${guide.gender}"/>
	<c:set var = "age" value = "${guide.age}"/>
	<c:set var = "lang" value = "${guide.language}"/>
	<c:set var = "tel" value = "${guide.telephone}"/>
	<c:set var = "town" value = "${guide.hometown}"/>
	<c:set var = "email" value = "${guide.email}"/>
	<c:set var = "usn" value = "${guide.username}"/>
	<c:set var = "pwd" value = "${guide.password}"/>        
	
	
	<!-- for login -->
	
		<tr>	
		<td class = "text1">Name</td><td class = "text">${guide.name}</td>
	</tr>
	
	<tr>
		<td class = "text1">Guide ID</td><td class = "text">${guide.id}</td>
	</tr>
	

	
	<tr>
		<td class = "text1">NIC</td><td class = "text">${guide.nic}</td>
	</tr>
	
	<tr>
		<td class = "text1">Age</td><td class = "text">${guide.age}</td>
	</tr>	
		
	<tr>
		<td class = "text1">Gender</td><td class = "text">${guide.gender}</td>
	</tr>
		

	
	<tr>
		<td class = "text1">Language</td><td class = "text">${guide.language}</td>
	</tr>
		
	<tr>
		<td class = "text1">Home town</td><td class = "text">${guide.hometown}</td>
	</tr>	
	
		<tr>
		<td class = "text1">Telephone</td><td class = "text">${guide.telephone}</td>
	</tr>
	
	<tr>
		<td class = "text1">Email</td><td class = "text">${guide.email}</td>
	</tr>	
		
	<tr>
		<td class = "text1">User name</td><td class = "text">${guide.username}</td>
	</tr>	
	</c:forEach>
	</table>

	
	<c:url value = "updateguide.jsp" var = "guideupdate">
		<c:param name = "id" value = "${id}"/>  
		<c:param name = "name" value = "${name}"/>
		<c:param name = "nic" value = "${nic}"/>
		<c:param name = "gen" value = "${gen}"/>
		<c:param name = "age" value = "${age}"/>
		<c:param name = "language" value = "${lang}"/>
		<c:param name = "phone" value = "${tel}"/>
		<c:param name = "home" value = "${town}"/>
		<c:param name = "email" value = "${email}"/>
		<c:param name = "un" value = "${usn}"/>
		<c:param name = "pw" value = "${pwd}"/>
	</c:url>
	
	<a href = "${guideupdate}">
	<input type = "button" name = "update" value = "Update Profile" class = "btn" >
	</a>
	
	
	
	
	

	<c:url value = "deleteguide.jsp" var = "guidedelete">
		<c:param name = "id" value = "${id}"/>  
		<c:param name = "name" value = "${name}"/>
		<c:param name = "nic" value = "${nic}"/>
		<c:param name = "gen" value = "${gen}"/>
		<c:param name = "age" value = "${age}"/>
		<c:param name = "language" value = "${lang}"/>
		<c:param name = "phone" value = "${tel}"/>
		<c:param name = "home" value = "${town}"/>
		<c:param name = "email" value = "${email}"/>
		<c:param name = "un" value = "${usn}"/>
		<c:param name = "pw" value = "${pwd}"/>
	</c:url>
	
	<a href = "${guidedelete}">
	<input type = "button" name = "delete" value = "Delete Profile" class = "btn">
	</a>
<br><a href = insertguide.jsp>Back</a>
</div>


<!-- body ********-->

</div>


<div class="footer">
  Copyright 2021 © INFINITY_TOURS. All Rights Reserved.
</div>


</body>
</html>