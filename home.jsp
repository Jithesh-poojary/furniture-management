<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ROYALWOOD</title>
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
	.current{
	    background: #000000;
    color: white;
    padding: 4px 15px;
    border: 1px solid #a10000;
    border-radius: 18px;
    outline: none;
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
	nav ul li a:hover{
	   color:blue;
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
	background:radial-gradient(#fff,#ffd6d6);
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
	.offer{
	background:radial-gradient(#fff,#ffd6d6);
	margin-top:80px;
	padding:30px 0;
	}
	.col-2 .offer-img{
	padding:50px;
	}
	small{
	color:black;
	}
	.btn{
	display:inline-block;
	background:#ff523b;
	color:white;
	padding:8px 30px;
	margin:30px 0;
	border-radius:30px;
	}
	<!--brands-->
	.brands{
	margin:100px auto;
	}
	.col-5{
	width:160px;
	}
	.col-5 img{
	width:100%;
	cursor:pointer;
	}
	.col-5 img:hover{
	transform:translateX(-5px);
	}
	/*---footer---*/
	.footer{
	background:#000;
	color:#8a8a8a;
	font-size:14px;
	padding:60px 0 20px;
	}
	.footer p{
	color:#8a8a8a;
	}
	.footer h3{
	color:white;
	margin-bottom:10px;
	}
	.footer-col-1, .footer-col-2, .footer-col-3, .footer-col-4{
	min-width:250px;
	margin-bottom:20px;
	}
	.footer-col-1{
	flex-basis:30%;
	}
	.footer-col-2{
	flex:1;
	text-align:center;
	}
	.footer-col-2 img{
	width:75px;
	margin-bottom:10px;
	}
	.footer-col-3,.footer-col-4{
	flex-basis:12%;
	text-align:center;
	}
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
	.user_profile{
			         color: white;
			    display: flex;
			    justify-content: center;
			    align-items: center;
			    position: absolute;
			    margin: 18px 10px 10px 10px;
			 
			    border-radius:20px;
			        position: absolute;
    			top: 119px;
			         
			    }
				.user_profile img{
		     	 width:50px;
		     	 height:50px;
		     	 border:2px solid black;
		     	 border-radius:100%;
		     	 transition:all 0.2s ease-in-out;
		     	 
		    }
		    .user_profile .name{
		            margin: 3px;
				    font-family: merithwater;
				    font-weight: bold;
				    font-size: 29px;
				    padding: 5px 10px;
				    color: black;
		       
		    }
		    .user_profile:hover{
		       
		        background-color:#6a6a6a66;
		        color:black;
		    }
		    .user_profile img:hover{
		    	transform:scale(1.2);
		    }
</style>
</head>
<body>
<%    
         String name=(String)session.getAttribute("user");
	  
         if(name!=null&&name.length()!=0){{
        	 session.setAttribute("username",name);
         }
     %>
	<div class="header">
	<div class="container">
	<div class="navbar">
		<div class="logo">
			<img src="res/logo.png" width="95px">
	</div>
	<nav>
		<ul>
			<li><a href="home.jsp" class="current">HOME</a></li>
			<li><a href="product.jsp">PRODUCT</a></li>
			<li><a href="contact.jsp">CONTACT US</a></li>
			<li><a href="cart.jsp">CART</a></li>
			<li><a href="index.jsp">LOGOUT</a></li>
		</ul>
	</nav>
	
	</div>
	
     <div class="user_profile">
     	     <div class="logo">
     	        
     	        <img alt="user" src="res/user2.png" >
     	     </div>
     	     <div class="name">
     	         <%=name %>
     	     </div>
    </div>
	<div class="row">
	<div class="col-2">
	<h1 style="font-size:30px;">Furniture that creates difference!</h1>
	<p style="font-size:15px;">You can apply various design innovations and spatial planning<br>strategies to solve problems in minimalist 
	home interior design,<br>either with your own creativity.</p>
	</div>
	<div class="col-2" style="float:right;">
		<img src="res/home page.png" width="550px">
	</div>
	</div>
	</div>
	</div>
<!-- --featured categories -->
<div class="categories">
	<div class="small-container">
	<div class="row">
		<div class="col-3">
		 <img src="res/image1.png"width="250px"height="300px">
		</div>
		 <div class="col-3">
		 <img src="res/image2.png"width="250px"height="300px">
		 </div>
		<div class="col-3">
		<img src="res/images3.png"width="250px"height="300px">
		</div>
	</div>
</div>
</div>

        
<!-- --featured products-->
<div class="small-container">
	<h2 class="title">FEATURED PRODUCTS</h2>
	<div class="row">
		<div class="col-4">
			<img src="res/fp1.png"width="250px"height="300px">
			<h4>Three seater sofa grey color</h4>
			<div class="rating">
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star-half-o"></i>
			</div>
			<p>$86,450.00</p>
		</div>
		<div class="col-4">
			<img src="res/fp2.png"width="150px"height="300px">
			<h4>Elegant Designer Gaming Chair In Grey Colour</h4>
			<div class="rating">
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star-half-o"></i>
			</div>
			<p>$10,911.00</p>
		</div>
	
		<div class="col-4">
			<img src="res/fp3.png"width="250px"height="300px">
			<h4>Jordan LHS Sectional Sofa In Blue Colour</h4>
			<div class="rating">
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star-half-o"></i>
			</div>
			<p>$26,040.00</p>
		</div>
	</div>
	<h2 class="title">LATEST PRODUCTS</h2>
	<div class="row">
		<div class="col-4">
			<img src="res/lp1.png"width="150px"height="300px">
			<h4>Zoey Wing Chair In Red Colour with Footrest</h4>
			<div class="rating">
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star-half-o"></i>
			</div>
			<p>$28,062.00</p>
		</div>
		<div class="col-4">
			<img src="res/lp2.png"width="150px"height="300px">
			<h4>Nariko 2 Door Wardrobe with 2 Drawers in Wenge Finish</h4>
			<div class="rating">
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star-half-o"></i>
			</div>
			<p>$10,099.00</p>
		</div>
	
		<div class="col-4">
			<img src="res/lp3.png"width="150px"height="300px">
			<h4>Amanda LHS Sectional Sofa in Steel Grey Colour</h4>
			<div class="rating">
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star-half-o"></i>
			</div>
			<p>$55,130.00</p>
		</div>
		<div class="col-4">
			<img src="res/lp4.png"width="150px"height="300px">
			<h4>McKevin Baby Crib with Chest of Drawers in Satin White & Pink Finish</h4>
			<div class="rating">
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star-half-o"></i>
			</div>
			<p>$17,599.00</p>
		</div>
		<div class="col-4">
			<img src="res/lp5.png"width="150px"height="300px">
			<h4>Santiago 3 Seater RHS Sectional Sofa in Chestnut Brown Colour</h4>
			<div class="rating">
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star-half-o"></i>
			</div>
			<p>$60,723.00</p>
		</div>
		<div class="col-4">
			<img src="res/lp6.png"width="150px"height="300px">
			<h4>Zenyatta Dressing Table in Columbia Walnut Finish</h4>
			<div class="rating">
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star-half-o"></i>
			</div>
			<p>$7,899.00</p>
		</div>
	</div>
</div>
<!--offer -->
<div class="offer">
	<div class="small-container">
	
		<div class="row">
			<div class="col-2">
				<img src="res/epro.png" class="offer-img">
			</div>
			<div class="col-2">
			<p style="font-size:18px">Exclusive Available on WoodStore</p>
			<h1>Alvarez Wing Chair In Blush Pink Colour</h1>
			<small style="font-size:15px;">Sit with Comfort on our brand new Wing Chair 
			from Alvarez</small><br>
			<form action="add_to_cart" method="post">
			   <button type="submit" name="id" value="15" class="btn" style="box-sizing:border-box; font-size:1em;">Add to cart</button>
			</form>
			</div>
		</div>
	</div>
</div>
<!--brands-->
<div class="brands">
	<div class="small-contianer">
		<div class="row">
			<div class="col-5">
				<img src="res/brand1.png"width="200px"height="80px">
			</div>
			<div class="col-5">
				<img src="res/brandl1.png"width="200px"height="100px">
			</div>
			<div class="col-5">
				<img src="res/brandl3.png"width="200px"height="100px">
			</div>
			<div class="col-5">
				<img src="res/brandl4.png"width="200px"height="100px">
			</div>
		</div>
	</div>
</div>
<!-- footer -->
<div class="footer">
	<div class="container">
		<div class="row">
			<div class="footer-col-1">
				<h3>Download our App</h3>
				<p>Download App for Andriod and ios mobile phones.</p>
					<div class="app-logo">
					<img src="res/play-store.png">
					<img src="res/app-store.png">
					</div>
			</div>
			<div class="footer-col-2">
				<img src="res/logo.png">
				<p>Our Purpose Is To Sustainably Make the Pleasure and Comfort of Furniture Accessible to the Many .</p>
			</div>
			<div class="footer-col-3">
				<h3>Useful Links</h3>
				<ul>
				<li>Coupons</li>
				<li>Blog Post</li>
				<li>Return Policy</li>
				<li>Join Affiliate</li>
				</ul>
			</div>
			<div class="footer-col-4">
				<h3>Follow us</h3>
				<ul>
				<li>Facebook</li>
				<li>Twitter</li>
				<li>Instagram</li>
				<li>Youtube</li>
				</ul>
			</div>
		</div>
		<hr>
		<p class="copyright">Copyright 2020-ROYAL WOOD</p>
	</div>
</div>
  <%
         }else{
        	 response.sendRedirect("index.jsp");
         }
	%>
</body>
</html>

	
	


