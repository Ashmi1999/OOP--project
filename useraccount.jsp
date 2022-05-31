<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewpoint" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"  type="text/css"  href="profile.css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert here</title>
</head>
<table width="1503" border="0" align="center"  bgcolor="#000000 ">
		<tbody>
				<tr>
						<td><img class = "logo" src = "car.jpg" width = "100px" height = "81px"><br></td>
						<td width="895" align="center"><p class="nam12">PK AUTO MIRAJ</p></td>
						
					
								
						</p></td>
						<td width="192" align="center" ><span class="nam3">Opening Hours : 24hours</span></td>
				</tr>
		</tbody>
</table>

			<ul class="topnav">
			<li><a class="active" href="#home">Home</a></li>
									  <li><a href="#news">About</a></li>
									  <li><a href="#contact">Services</a></li>
									  <li><a href="#contact">Fuel Stock</a></li>
									  <li><a href="#contact">#</a></li>
									  <li><a href="#contact">FAQ</a></li>
									  <li><a href="#contact">Contact Us</a></li>
							
		</ul>							 
	

  <div class="ti">
     <h1 class="my">My Profile </h1>
   <table class="tabl">
    <c:forEach  var="cust"  items="${custDetails}">
    
    <c:set var="id" value="${cust.id}"/>
    <c:set var="username" value="${cust.username}"/>
    <c:set var="password" value="${cust.password}"/> 
    <c:set var="name" value="${cust.name}"/>
    <c:set var="adress" value="${cust.adress}"/>
    <c:set var="phone" value="${cust.phone}"/>
    <c:set var="email" value="${cust.email}"/>
        
          <tr><tr> 
          <td class="a"> ID </td>
          <td>${cust.id}</td>
        </tr>
        <tr>
        <tr>
        <tr>
         <tr>
         <tr> 
          <td class="b"> User Name </td>
          <td>${cust.username}</td>
        </tr>
        <tr>
        <tr>
        <tr>
        <tr>
         <tr> 
          <td class="c"> Password </td>
          <td>${cust.password}</td>
        </tr>
        <tr>
        <tr>
         <tr>
          <tr>
        <tr>
          <td class="e"> Name </td>
          <td>${cust.name}</td>
        </tr>
        <tr>
        <tr>
        <tr>
        <tr>
        <tr>
         <tr> 
          <td class="f"> Address </td>
          <td>${cust.adress}</td>
        </tr>
        <tr>
        <tr>
        <tr>
        <tr>
         <tr> 
          <td class="g"> Phone No </td>
          <td>${cust.phone}</td>
        </tr>
        <tr>
        <tr>
        <tr>
        <tr>
         <tr> 
          <td class="h">Email </td>
          <td>${cust.email}</td>
        </tr>
 
          </c:forEach>
           </table> 
           
           
           <c:url value="Update.jsp" var="custupdate">
                <c:param name="id" value="${id}"/>
                <c:param name="username" value="${username}"/>
                <c:param name="password" value="${password}"/>
                <c:param name="name" value="${name}"/>
                <c:param name="adress" value="${adress}"/>
                <c:param name="phone" value="${phone}"/>
                <c:param name="email" value="${email}"/>
                
           </c:url>
           <br>
           <a href="${custupdate}">
           <input type="button" name="update" value="Update profile">
       
         </a>
         <c:url value="delete.jsp" var="custdelete">
         
         <c:param name="id" value="${id}"/>
                <c:param name="username" value="${username}"/>
                <c:param name="password" value="${password}"/>
                <c:param name="name" value="${name}"/>
                <c:param name="adress" value="${adress}"/>
                <c:param name="phone" value="${phone}"/>
                <c:param name="email" value="${email}"/>
                
         </c:url>
          <a href="${custdelete}">
          
            <input type="button" name="delete" value="Delete profile">
         </a>
         
         
         
         
         
</div>       
         
       <table width="1503" height="200" border="0" align="center" bgcolor="#000000">
	<tr >
		<td align="center" ><table width="1400"  border="0">
			<tbody>
				<tr >
					<td width="500" align="center"><div class="footerText">Social media</div></td>
					<td width="500" align="center"><div class="footerText">Contact No</div></td>
					<td width="500" align="center"><div class="footerText">Address</div></td>
				</tr>
				<tr>
					<td width="500" align="center"><a href="#" class="fa fa-facebook"></a>
						<a href="#" class="fa fa-twitter"></a>
						<a href="#" class="fa fa-google"></a>
						<a href="#" class="fa fa-instagram"></a>
					</td>
					<td width="500" align="center"><div class="footerCon">(203)432-2600</div></td>
					<td width="500" align="center"><div class="footerCon">Tours depart from the Visitor Center (149 Elm Street),<br> cover the central campus area.</div></td>								
					<!-- <td align="center"><a href="#"><i class="fa fa-facebook-official" aria-hidden="true"></i> &nbsp;&nbsp; Facebook</a><br>
					<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a><br>
					<a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i><br>
					<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></td>  -->
				</tr>
			</tbody>
		</table>
		</td>
	</tr>
	<tr>
		<td align="center"><table width="355" border="0">
			<tbody>
				<tr>
					<td  ><img class = "logo" src = "car.jpg" width = "40px" height = "40px"></td>
					<td width="196" class="footerb">PK Auto Miraj 2021</td>
				</tr>
			</tbody>
		</table></td>
	</tr>
</table>

   	
         
          
</body>

</html>