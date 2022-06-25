<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact us</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Secular+One&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Merriweather&family=Roboto+Slab&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Merriweather&family=Roboto+Slab&family=Vujahday+Script&display=swap" rel="stylesheet">
<style>
	*{
		margin:0;
		padding:0;
		box-sizing:border-box;
	}
	body{
	font-family: 'Secular One', sans-serif;
	}
	body::before{
    content:"";
    background:url("res/contact2.jpg")no-repeat center center/cover;
   
    width:100%;
    height:100%;
    position:absolute;
    top:10;
    left:0;
    z-index:-1;
    opacity:0.9;
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
	    .box{
       height: 500px;
       margin-top: 20px;
       
    }
    .left{
        width:60%;
        position:absolute;
        float:left;
    }
    .form{
    	background:rgba(0,0,0,0.2);
    	border-radius:20px;	
    	margin-top:20px;
    	
    }
    .m-auto{
            margin: 36px auto !important;
    }
   
  
	
</style>
</head>
<body >
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
			<li><a href="home.jsp">HOME</a></li>
			<li><a href="product.jsp">PRODUCT</a></li>
			<li><a href="contact.jsp" class="current">CONTACT US</a></li>
			<li><a href="cart.jsp">CART</a></li>
			<li><a href="index.jsp">LOGOUT</a></li>
		</ul>
	</nav>	
	</div>
	
   </div>
   </div>
		<div class="box">
	     	<div class="left">
	     	
		     	<form class="form col-lg-10 col-sm-12 shadow-lg rounded m-auto text-light" style="background:#1b4848; width:70%;" action="notify.jsp" method="post">
		          <h1 style="text-align:center; font-family:merithwater; font-size:40px;">Contact us</h1>
		          <div class="form-group m-3">
		              <label for="name">Name:</label>
		              <input type="text" name="name" placeholder="Enter your name" class="form-control mt-1">
		          </div>
		          <div class="form-group m-3">
								<label for="email">Email:</label>
								<input type="email" name="email" class="form-control mt-1" placeholder="Enter your Email-id">
							</div>
							<div class="form-group m-3">
								<label for="contact">Contact:</label>
								<input type="tel" name="contact" class="form-control mt-1" placeholder="Contact Number">
							</div>
							<div class="form-group m-3">
								<label for="text">Message:</label>
								<textarea  name="text" class="form-control mt-1" placeholder="Enter your message..."></textarea>
							</div>
		
							<div class="mt-4 row justify-content-center   m-3">
								<button type="submit" class="col-4 btn btn-outline-info m-3">Submit</button>
								<button type="reset" class="col-4 btn btn-outline-light m-3">Clear</button>
							</div>
							
		         
							<%
							
							String mess=(String)session.getAttribute("mess");
							System.out.println(mess);
							if(mess!=null){
						
		                      out.print("<p style='color:white;text-align:center;font-size:20px;'>"+mess+" </p>");
		                    } 
		                    
		                    %>
		         </form>
	     	</div>
	     </div>
	 <%
         }else{
        	 response.sendRedirect("index.jsp");
         }
	%>
 </body>
 </html>  



