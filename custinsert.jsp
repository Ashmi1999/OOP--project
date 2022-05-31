<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"  type="text/css"  href="sginup.css" >

<title>Register</title>
</head>
<body>


<div class="cont">
<h1> Sign Up Here</h1>
       <form action="insert" method="post">
       User Name <input type="text" name="uid"> <br><br>
       Password <input type="password" name="pwd"> <br><br>
       Name <input type="text" name="name"> <br><br>
       Address <input type="text" name="adress" ><br><br>
       Phone Number <input type="text" name="phn"> <br><br>
       Email <input type="text" name="email"> <br><br>
       
      
       <input type="submit" name="submit" value="Register">
       
       
       </form>
</div>

</body>
</html>