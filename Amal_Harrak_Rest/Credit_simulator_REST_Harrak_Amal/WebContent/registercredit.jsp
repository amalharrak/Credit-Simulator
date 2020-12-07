
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
   <!--Made with love by amal harrak  -->
   
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="styles.css">
	<style>
	/* Made with love by Mutiullah Samim*/

@import url('https://fonts.googleapis.com/css?family=Numans');

html,body{
background-image: url('http://getwallpapers.com/wallpaper/full/a/5/d/544750.jpg');
background-size: cover;
background-repeat: no-repeat;
height: 100%;
font-family: 'Numans', sans-serif;
}

.container{
height: 100%;
align-content: center;
}

.card{
height: 370px;
margin-top: auto;
margin-bottom: auto;
width: 400px;
background-color: rgba(0,0,0,0.5) !important;
}

.social_icon span{
font-size: 60px;
margin-left: 10px;
color: #FFC312;
}

.social_icon span:hover{
color: white;
cursor: pointer;
}

.card-header h3{
color: white;
}

.social_icon{
position: absolute;
right: 20px;
top: -45px;
}

.input-group-prepend span{
width: 50px;
background-color: #FFC312;
color: black;
border:0 !important;
}

input:focus{
outline: 0 0 0 0  !important;
box-shadow: 0 0 0 0 !important;

}

.remember{
color: white;
}

.remember input
{
width: 20px;
height: 20px;
margin-left: 15px;
margin-right: 5px;
}

.login_btn{
color: black;
background-color: #FFC312;
width: 100px;
}

.login_btn:hover{
color: black;
background-color: white;
}

.links{
color: white;
}

.links a{
margin-left: 4px;
}
	
	.login100-form-title {
 
  color:white;
  margin-top :70% ;
  margin-bottom :40% ;
   margin-left: 68%;
}
img {
       width:45%;
       height: 40%;
       margin-top :45% ;
}


	</style>
</head>
<body>
 <%
			
	//	  if(session.getAttribute("email")==null){response.sendRedirect("logincredit.jsp");}
		 response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
		response.setHeader("Pragma","no-cache, no-store, must-revalidate");
		response.setHeader("Expires","0");
		
		%> 
	
<div class="container">
	 <span class="login100-form-title">
					<i class="fa fa-user-plus " aria-hidden="true" ></i>  Sign Up
					</span> 
	<div class="d-flex justify-content-center h-100">
	
	       
			<div class="aaaac js-tilt" data-tilt>
					<a href="index.jsp">	<img src="images/logo.jpg" alt="IMG"> </a>
				</div>
					
		<div class="card">
		<div class="card-header">
			</div>
			
			
			<div class="card-body">
			
				<form class="login100-form validate-form"  method="post" action="RegisterServ">
				
					      
                <div class="input-group form-group"  data-validate = "name is required: amal" >
                <div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-user " aria-hidden="true"></i></span>
							</div>
						<input class="form-control" type="text" name="name" required placeholder="Nom d'utilisateur">
				</div>
				
				
				<div class="input-group form-group" data-validate = "Valid email is required: ex@abc.xyz">
						<div class="input-group-prepend">
						<span class="input-group-text"><i class="fa fa-envelope" aria-hidden="true"></i></span>
						</div>
						<input type="text" class="form-control"  name="email"  required placeholder="Email">
					</div>

										
					
				<div  class="input-group form-group"  data-validate = "Telis required: XXXXXXXXXX">
				   <div class="input-group-prepend">
				   <span class="input-group-text">
							<i class=" fa fa-phone-square " aria-hidden="true"></i>
						</span></div>
						<input class="form-control"  type="tel"  pattern="0[6-7]{1}[0-9]{8}" required name="tel" placeholder="Tel">
						
						
					</div>
					
					<div  class="input-group form-group"  data-validate = "Adress is required: XX Rue ibe XXX">
					<div class="input-group-prepend">
					<span class="input-group-text">
							<i class="fa fa-location-arrow " aria-hidden="true"></i>
						</span></div>
						<input class="form-control" type="text" name="adresse" required placeholder="Adress">
						
					</div>
				
				
				
				
				<div class="input-group form-group" data-validate = "City is required: Rabat">
				   <div class="input-group-prepend">
				   	<span class="input-group-text">
							<i class="fa fa-street-view " aria-hidden="true"></i>
						</span></div>
						<input class="form-control" type="text" name="city" required  placeholder="Ville">
					</div>
				
			<div class="input-group form-group" data-validate = "Password is required">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key" aria-hidden="true"></i></span>
						</div>
						<input type="password" class="form-control" name="pass" required  placeholder="password">
					</div>
					
					
					<div class="form-group">
						<input type="submit" value="Sign Up"  name="login" class="btn float-left login_btn">
					</div>
		
					
					
					<div class="text-center p-t-12">
						<span class="txt1">
							
						</span>
						<a class="btn float-right signup_btn" href="logincredit.jsp">
							<h3><u>Login</u></h3>
						</a>
					</div>
						
				</form>
			</div>
			
			
				
					
			
			
			
			
			
		</div>
	</div>
</div>
	
 <%
session.setMaxInactiveInterval(2);
%>


<script type="text/javascript">
var Msgg ='<%=session.getAttribute("valid")%>';
    if (Msgg != "null") {
 function alertNamee(){
 alert(" vous avez bien enregistré");
 } 
 }
 </script> 
 
 
 <script type="text/javascript"> window.onload = alertNamee; </script>
	
	
 <script type="text/javascript">
var Msg ='<%=session.getAttribute("error")%>';
    if (Msg != "null") {
 function alertName(){
 alert("Email is exist");
 } 
 }
 </script> 
 
 <script type="text/javascript"> window.onload = alertName; </script>
	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>