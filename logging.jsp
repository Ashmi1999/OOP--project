<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"  type="text/css"  href="loggin.css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Login</title>



</head>
<table width="1503" border="0" align="center"  bgcolor="#000000 ">
		<tbody>
				<tr>
						<td><img class = "logo" src = "car.jpg" width = "100px" height = "81px"><br></td>
						<td width="895" align="center"><p class="nam12">PK AUTO MIRAJ</p></td>
						<td width="96" align="center" ><input type="button" class="ButtonC" name="button" id="button" value="Login"></td>
						<td width="108" align="center" ><p class="nam3">
								<input type="button" class="ButtonC" name="button2" id="button2" value="Signup">
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
							
									 
	<div class="search-container">
										  
		    <form action="/action_page.php">
		      <input type="text" placeholder="Search.." name="search">
		      <button type="submit"><i class="fa fa-search"></i></button>
		    </form>
</div> </ul>

<br></br>
<div class="container">
      <h1 class="label"> Login with your account</h1>
   <form action="login" method="post" class="login_form">
   <br><br><br>
   
    <div class="uu">User Name</div>
  <input type="text" name="un" placeholder="username">
  <div class="pp"> Password</div>
   <input type="password" name ="pw" placeholder="password"> 
    <br></br>
    <input type="checkbox" id="checkbox">
    <label for="check">Show Password</label>
		  <br></br>
   <button type="submit" name="submit" value="login">LOGIN</button><br><br>
    <input type="reset" value="reset"><br><br>
    
    <label>Don't have an account</label>
    <a href="custinsert.jsp">Sign up here</a>
   
   </form>
   </div>
  
  <br></br>		
   
   
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