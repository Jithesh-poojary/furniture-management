<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Products-ROYALWOOD</title>
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
	<!---all products--->
	.row-2{
	justify-contents:space-between;
	margin:100px auto 50px;
	}
	select{
	border:1px solid black;
	padding:5px;
	}
	select:focus{
	outline:none;
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
	background:#19a500;
	color:#fff;
	}
	nav ul li a:hover{
	   color:blue;
	}
	.btn{
	display:inline-block;
	background:#19a500;
	color:white;
	padding:4px 15px;
	margin:15px 0;
	border-radius:30px;
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
<div class="container">
	<div class="navbar">
		<div class="logo">
			<img src="res/logo.png" width="95px">
		</div>
		<nav>
			<ul>
				<li><a href="home.jsp">HOME</a></li>
				<li><a href="product.jsp" class="current">PRODUCT</a></li>
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
</div>
<!-- -single product details--->
	
<div class="small-container">
       <div class="row row-2">
		<h1>Products</h1>
	  </div>
       <%
           String mess2=(String)request.getAttribute("cart_mess");
           
           if(mess2!=null){
        %>
           <p style="color:green; margin-top:2px; font-size:15px;text-align:center;font-weight:bold;    margin-bottom: 0px;"><%=mess2%></p>
        <%
           }
        %>
        <%
           String mess3=(String)request.getAttribute("cart_mess_exp");
           
           if(mess3!=null){
        %>
           <p style="color:red; margin-top:2px; font-size:15px;text-align:center;font-weight:bold;    margin-bottom: 0px;"><%=mess3%></p>
        <%
           }
        %>
	<div class="row">
		<div class="col-4">
			<img src="res/proim1.png"width="150px"height="300px">
			<h4>Segur Solid Wood Open TV Shelf in Provincial Teak Finish</h4>
			<div class="rating">
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star-half-o"></i>
			</div>
			<p>$ 27,165.00</p>
			<form action="add_to_cart" method="post">
			   <button type="submit" name="id" value="9" class="btn">Add to cart</button>
			</form>
		</div>
		<div class="col-4">
			<img src="res/proim2.png"width="150px"height="300px">
			<h4>Aciano Sofa Cum Bed in Yellow Colour</h4>
			<div class="rating">
				<i class="fa fa-circle"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star-half-o"></i>
			</div>
			<p>$ 21,504.00</p>
			<form action="add_to_cart" method="post">
			   <button type="submit" name="id" value="10" class="btn">Add to cart</button>
			</form>
		</div>
	
		<div class="col-4">
			<img src="res/proim3.png"width="150px"height="300px">
			<h4>Peaston Chaise Lounger In Peacock Blue Colour</h4>
			<div class="rating">
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star-half-o"></i>
			</div>
			<p>$ 26,353.00</p>
			<form action="add_to_cart" method="post">
			   <button type="submit" name="id" value="11" class="btn">Add to cart</button>
			</form>
		</div>
		<div class="col-4">
			<img src="res/proim4.png"width="150px"height="300px">
			<h4>Alder Tilt Out Shoe Rack in Walnut Colour</h4>
			<div class="rating">
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star-half-o"></i>
			</div>
			<p>$8,540.00</p>
			<form action="add_to_cart" method="post">
			   <button type="submit" name="id" value="12" class="btn">Add to cart</button>
			</form>
		</div>
		<div class="col-4">
			<img src="res/proim5.png"width="150px"height="300px">
			<h4>Navah Poster Bed in American Walnut Finish</h4>
			<div class="rating">
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star-half-o"></i>
			</div>
			<p>$ 1,05,570.00</p>
			<form action="add_to_cart" method="post">
			   <button type="submit" name="id" value="13" class="btn">Add to cart</button>
			</form>
		</div>
		<div class="col-4">
			<img src="res/proim6.png"width="150px"height="300px">
			<h4>Emilia Cafe Chair in White Colour</h4>
			<div class="rating">
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star-half-o"></i>
			</div>
			<p>$5,823.00</p>
			<form action="add_to_cart" method="post">
			   <button type="submit" name="id" value="14" class="btn">Add to cart</button>
			</form>
		</div>
	</div>
	<div class="page-btn">
		<a href="product.jsp"><span>&#8592;</span></a>
		<a href="product.jsp"><span>1</span></a>
		<a href="product2.jsp" ><span style="background:#19a500;">2</span></a>
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