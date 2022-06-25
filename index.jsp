<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Secular+One&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css">
<style>
	*{
		margin:0;
		padding:0;
		box-sizing:border-box;
	}
	body{
	font-family: 'Secular One', sans-serif;
	}
	
	.navbar{
	display:flex;
	align-items:center;
	padding:20px;
	}
	nav{
		flex:1;
		text-align:right;
		}
	nav ul{
	display:inline-block;
	list-style-tyep:none;
	}
	nav ul li{
	display:inline-block;
	margin-right:20px;
	}
	a{
	text-decoration:none;
	color:black;
	}
	p{
	color:#555;
	}
	.container{
	max-width:1300px;
	margin:auto;
	padding-left:25px;
	padding-right:25px;
	}
	.row{
	display:flex;
	align-items:center;
	flex-wrap:wrap;
	justify-content:space-around;
	}
	.col-2{
	flex-basis:50%;
	min-width:300px;
	}
	.col-2 img{
	max-width:100%;
	padding:50px 0;
	}
	.col-2 h1{
	font-size:50px;
	line-height:60px;
	margin:25px 0;
	}
	.header{
	background:black;
	}
	.header .row{
	margin-top:70px;
	}
	.categories{
	margin:70px;
	}
	.col-3{
	flex-basis:30%;
	min-width:250px;
	margin-bottom:30px;
	}
	.col-3 img{
	width:100%
	}
	.small-container{
	max-width:1080px;
	margin:auto;
	padding-left:25px;
	padding-right:25px;
	}
	.col-4{
	flex-basis:50%;
	padding:40px;
	min-width:150px;
	margin-bottom:30px;
	transition:transform 0.5s;
	}
	.col-4 img{
	width:100%;
	}
	.title{
	text-align:center;
	margin:0 auto 80px;
	position:relative;
	line-height:60px;
	color:black;
	}
	.title::after{
	content:'';
	background:#ff523b;
	width:80px;
	height:5px;
	border-radius:5px;
	position:absolute;
	bottom:0;
	left:50%;
	transform:translateX(-50%);
	}
	.h4{
	color:black;
	font-weight:normal;
	}
	.col-4 p{
	font-size:14px;
	}
	.rating .fa{
	color:orange;
	}
	.col-4:hover{
	transform:translateY(-8px);
	}

	/*---footer---*/
	
	ul{
	list-style-type:none;
	}
	.app-logo{
	margin-top:20px;
	}
	.app-logo img{
	width:140px;
	}
	.footer hr{
	border:none;
	background:#b5b5b5;
	height:1px;
	margin:20px 0;
	}
	.copyright{
	text-align:center;
	}
	<!---all products--->
	.row-2{
	justify-contents:space-between;
	margin:100px auto 50px;
	}
	.page-btn{
	margin:0 auto 80px;
	}
	.page-btn span{
	display:inline-block;
	border:0.5px solid black;
	margin-left:10px;
	width:30px;
	height:30px;
	text-align:center;
	line-height:30px;
	cursor:pointer;
	}
	.page-btn span:hover{
	background:#ff523b;
	color:#fff;
		}
	.btn{
	display:inline-block;
	background:#ff523b;
	color:white;
	padding:4px 15px;
	margin:25px 0;
	border-radius:30px;
	}
	.account-page{
	padding:50px 0;
	background: radial-gradient(#fff,#ffd6d6);
	}
	.form-container{
	background:#fff;
	width:300px;
	height:400px;
	position:relative;
	text-align:center;
	padding:20px 0;
	margin:auto;
	box-shadow:0 0 20px 0px rgba(0,0,0,1);
	overflow:hidden;
	}
	.form-container span{
	font-weight:bold;
	padding:0 10px;
	color:#555px;
	cursor:pointer;
	width:100px;
	display:inline-block;
	}
	.form-btn{
	display:inline-block;
	}
	.form-container form{
	max-width:300px;
	padding:0 20px;
	position:absolute;
	top:110px;
	transition:transform 1s;
	}
	form input{
	width:100%;
	height:30px;
	margin:10px 0;
	padding:0 10px;
	border:1px solid #ccc;
	}
	form .btn{
	width:100%;
	border:none;
	cursor:pointer;
	margin:10px 0;
	}
	form .btn:focus{
	outline:none;
	}
	#LoginForm{
	left:-300px;
	}
	#RegForm{
	left:0;
	}
	form a{
	font-size:12px;
	}
	#Indicator{
	width:100px;
	border:none;
	background:#ff523b;
	height:3px;
	margin-top:8px;
	transform:translateX(100px);
	transition:transform 1s;
	}
	
	
</style>
</head>
<body>
	
<!--account-page -->
<div class="account-page" style="height:100vh;">
 <h1 style="text-align:center;">Furniture store</h1>
	<div class="container">
		<div class="row" >
			<div class="col-2" >
				<img src="res/account1.png" width="100%" height="500px">
			</div>
			<div class="col-2">
				<div class="form-container">
					<div class="form-btn">
						<span onclick="login()">Login</span>
						<span onclick="register()">Register</span>
						<hr id="Indicator">
					</div>
					<form id="RegForm" action="SignupServlet" method="post">
						<input type="text" name="name" placeholder="Username">
						<input type="email" name="email" placeholder="Email">
						<input type="password" name="pass" placeholder="Password">
						<input type="password" name="conpass" placeholder="Confirm Password">
						<button type="submit"  class="btn">Register</button>
					</form>
						
					<form id="LoginForm" action="userLogin" method="post">
						<input type="text" name="email" placeholder="Email">
						<input type="password" name="password" placeholder="Password">
						<button type="submit" class="btn">Login</button>
					
						 <br><a href="index.jsp">Don't have an account already?</a>
						 
					</form>
					
					
				</div>
			<%String mess=(String)request.getAttribute("mess1");
						   if(mess!=null){
					    %>
					       <p style="color:red; text-align:center; margin-top:20px;"><%=mess %></p>
					    <%		   
						   }
						%>
				<%String mess1=(String)request.getAttribute("mess0");
						   if(mess1!=null){
					    %>
					       <p style="color:red; text-align:center; margin-top:20px;"><%=mess1 %></p>
					    <%		   
						   }
						%>
			</div>
		</div>
	</div>
</div>	
<!-- footer -->

<!-- js for toggle Form -->
<script>
	var LoginForm=document.getElementById("LoginForm");
	var RegForm=document.getElementById("RegForm");
	var Indicator=document.getElementById("Indicator");
	function login(){
		RegForm.style.transform="translateX(300px)";
		LoginForm.style.transform="translateX(300px)";
		Indicator.style.transform="translateX(0px)";
	}
		function register(){
			RegForm.style.transform="translateX(0px)";
			LoginForm.style.transform="translateX(0px)";
			Indicator.style.transform="translateX(100px)";
		}
		
</script>


</body>
</html>