
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
   <!--Made with love by amal harrak -->
   
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
img {
       width:45%;
       height: 40%;
       margin-top :35% ;
}
.login100-form-title {
   color : white ;
   
}
.nav {
  background-color:#FFD300 ; 
  list-style-type: none;
  text-align: center;
  margin: 0;
  padding: 0;
}

.nav li {
  display: inline-block;
  font-size: 7 px;
  padding: 4px;
}
	
	</style>
</head>
<body>

	<%
		//	  if(session.getAttribute("email")==null){response.sendRedirect("logincredit.jsp");}
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache, no-store, must-revalidate");
		response.setHeader("Expires", "0");
	%>
	
<div class="container">
<div class="btn-group" role="group" aria-label="Basic example">
 <%
					if (session.getAttribute("id") != null) {
				%>
				
				    <i>   <h4 style="  margin-top: 20px; margin-bottom: 49px;
				    color: white ">Bienvenue cher client <b><u>${username } </u></b></h4> </i>
				<form action="DisconnectionServ">
					<button
						style="border-radius: 5px; margin-top: 5px; margin-left: 600px; background-color: #6b7f9e;"
						class=" btn btn-secondary" type="submit" value="logout">
						<i class="fa fa-sign-out fa-spin" aria-hidden="true"></i>
						Log out
					</button>
				</form>
				
				
				
				<%
					} else {
				%>
				<ul class ="nav">
				<li>
					<form action="ConnectionServ">
						<button
							style="margin-top:5px; margin-left: 30px; background-color: #6b7f9e;"
							class=" btn btn-secondary" type="submit" value="login">
							<i class="fa fa-sign-in " aria-hidden="true"></i> Log In
						</button>
					</form>
				</li>
				<li>
					<form action="RegisterServ">
						<button style="margin-top: 5px; margin-left: 200px; background-color: #6b7f9e;"
							class="btn btn-secondary" type="submit" value=" Register">
							<i class="fa fa-user-plus " aria-hidden="true"></i> Sign In
						</button>
					</form>
				</li>
</ul>
				<%
					}
				%>

</div>


<div class="d-flex justify-content-center h-100">
	
			<div class="aaaac js-tilt" data-tilt>
			<a href="index.jsp">	<img src="images/logo.jpg" alt="IMG"> </a>
				</div>
			
			
		<div class="card">
			<div class="card-header">
				
				<div class="wrap-login100">
			      <ul class="nav">
					<span>	<li><center><a href="index.jsp"><i>Annuitée</i></a></center></li></span>
					<span><li><center><a href="capitalcredit.jsp"><i>Capital</i></a></center></li></span>
					<span><li><center><a class="active" href="dureecredit.jsp"><i>Durée</i></a></center></li></span>
				</ul>
				</div>
			</div>
			
			
	<div class="card-body">
		<form class="login100-form validate-form"  method="post" action="DureServ" >
			 <span class="login100-form-title"><center><b> <i>Calculer Durée  </i></b></center> </span>
			 <br/>
				<div class="input-group form-group" data-validate="annuite is required">
				<div class="input-group-prepend">
	<span class="input-group-text"> <i class="fa fa-usd"  aria-hidden="true"></i>
						</span></div>
						<input class="form-control" type="number" step="any" min="0" required  name="annuitedur" placeholder="annuite" value=${annuitedur}>
					</div>
					
			
				<div class="input-group form-group" data-validate="Capital is required">
				<div class="input-group-prepend">
				<span class="input-group-text"> <i class="fa fa-usd" aria-hidden="true"></i>
						</span></div>
		     	<input class="form-control" type="number"  required step="any" min="0" name="capitaldur" placeholder="Capital" value=${capitaldur}> 
					</div>
			

			<div class="input-group form-group" data-validate="Taux is required">
			<div class="input-group-prepend">
	     <span class="input-group-text"> <i class="fa fa-percent" aria-hidden="true"></i>
						</span> </div>
			<input class="form-control" type="number" required  step="any" min="0" name="tauxdur" placeholder="taux annuel " value= ${tauxdur}>
					</div>
		
				
					<div class="form-group">
						<input type="submit" value="Calculer"  name="calculd" class="btn float-center login_btn">
					</div>
					
	

					<%
						if (session.getAttribute("id") != null) {
					%>
					<div class="container-login100-form-btn">
						<button style="background-color: #ff7069;"
							class="login100-form-btn" type="submit" name="saveduree">
							<b>sauvgarder</b></button>
					</div>
					<%
						}
					%>
					<%
						if (session.getAttribute("dureedur") != null) {
					%>
					<div class="text-center p-t-12">
						<span class="txt1"> </span> <a class="txt2" href="#">
						Dureé égale à  : <h2>  ${dureedur} </h2>
						</a>
					</div>
					<%
						}
					%>
					
					
						
				</form>
			</div>
			
			
			
			
		</div>
	</div>
</div>

	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script>
		$('.js-tilt').tilt({
			scale : 1.1
		})
	</script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>
</body>
</html>