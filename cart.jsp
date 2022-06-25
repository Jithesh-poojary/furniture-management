<%@page import="java.sql.*" %>
<%@ page import = "java.io.*,java.util.*" %>
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
	.current{
	    background: #000000;
    color: white;
    padding: 4px 15px;
    border: 1px solid #a10000;
    border-radius: 18px;
    outline: none;
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
	.rows{
	 display:grid;
	 grid-template-columns:repeat(2,1fr);
	 gap:2em;
	 
	
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
	min-height:300px;
	}
	.col-4{
	flex-basis:50%;
	padding:40px;
	min-width:150px;
	margin-bottom:10px;
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
	.page-btn{
	margin:0 auto 80px;
	}
	nav ul li a:hover{
	   color:blue;
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
	    display: inline-block;
    background: #ff0023;
    color: white;
    padding: 4px 15px;
    margin: 10px 0;
    border-radius: 30px;
	}
	.small-container .col-4{
	  position:relative;
	  box-shadow: 0px -1px 8px -2px black;
	}
	.small-container button{
	      display: inline;
    float: right;
    position: absolute;
    right: 55px;
    bottom: 33px;
	}
	.container#blur.active{
	  filter:blur(2px);
	  pointer-events:none;
	  user-select:none;
	}
	#pop_up{
		position:fixed;
		top:40%;
		left:50%;
		transform:translate(-50%,-50%);
	    width:400px;
	    padding:35px;
	    box-shadow:0px 5px 30px rgba(0,0,0,.4);
	    border-radius:10px;
	    background:#ffc6c6;		
	    visibility:hidden;
	    opacity:0;
	    transition:0.4s ease-out;
	}
	#pop_up.active{
	     top:15%;
	     visibility:visible;
	    opacity:1;
	    transition:0.4s ease-out;
	}
	.modal-header h5{
	   font-size:20px;
	       text-align: center;
	}
	.modal-body{
	    display: flex;
    justify-content: center;
    align-items: center;
	}
	.modal-body .form-group{
	      display:inline-block;
	      margin:10px;
	}
	.modal-body .form-group input{
	         outline: none;
		    width: 302px;
		    height: 34px;
		    margin: 5px 0px;
		    padding: 3px 2px;
		    font-size: 0.9em;
		    border-radius;10px
	}
	.btns{
	    display: flex;
    justify-content: center;
    align-items: center;
    /* position: relative; */
        gap: 10px;
       margin-right: 4px;
	}
	.pop_btn{
	display: inline-block;
    background: #ff0023;
    color: white;
    padding: 4px 15px;
    border-radius: 8px;
    outline: none;
	}
	.order-btn{
	        display: inline-block;
    background: #5aff5a;
    color: black;
    padding: 8px;
    /* border: 2px solid green; */
    border-radius: 12px;
    font-size: 17px;
    font-family: merithwater;
    font-weight: bold;
    margin-left: 550px;
    margin-top:20px;
	}
	.order-btn:hover{
	    background:green;
	    color:white;
	}
	#order{
		position:fixed;
		top:40%;
		left:50%;
		transform:translate(-50%,-50%);
	    width:400px;
	    padding:35px;
	    box-shadow:0px 5px 30px rgba(0,0,0,.4);
	    border-radius:10px;
	    background:#fff7ce;		
	    visibility:hidden;
	    opacity:0;
	    transition:0.4s ease-out;
	}
	#order.active{
	     top:40%%;
	     visibility:visible;
	    opacity:1;
	    transition:0.4s ease-out;
	}
	
	#order .form-group textarea{
	     display: block;
		    width: 300px;
		    height: 57px;
		    padding: 3px 3px;
    		font-size: 15px;
	}
	#your_order{
	    position:fixed;
		top:40%;
		left:50%;
		transform:translate(-50%,-50%);
	    width:500px;
	    padding:24px;
	    box-shadow:0px 5px 30px rgba(0,0,0,.4);
	    border-radius:10px;
	    background:#f5deff;		
	    visibility:hidden;
	    opacity:0;
	    transition:0.4s ease-out;
	}
	#your_order.active{
	     top:35%;
	     visibility:visible;
	    opacity:1;
	    transition:0.4s ease-out;
	}
	#your_order .modal-body{
	        display: flex;
		    flex-direction: column;
		    justify-content: center;
		    align-items: center;
		    margin: 16px;
	}
	#your_order .modal-footer{
	          display: flex;
           justify-content: center;
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
	<div class="container" id="blur">
	<div class="navbar">
		<div class="logo">
			<img src="res/logo.png" width="95px">
	</div>
	<nav>
		<ul>
			<li><a href="home.jsp">HOME</a></li>
			<li><a href="product.jsp">PRODUCT</a></li>
			<li><a href="contact.jsp">CONTACT US</a></li>
			<li><a href="cart.jsp" class="current">CART</a></li>
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
     
	<!-- Content of the cart -->
	
			<div class=" row-2">
				<h1 style="text-align:center; margin-bottom:30px;">Cart</h1>
			</div>
			
	<div class="your_order">
    	<button type="button" class="order-btn" style="position: absolute;right: 35px;top:135px;" onclick="toggle3()">Your orders</button>
    </div>
    
	<div class="small-container">
	<%
           String mess1=(String)request.getAttribute("delmess");
           
           if(mess1!=null){
        %>
           <p style="color:red; margin-top:2px; font-size:15px;text-align:center;font-weight:bold;    margin-bottom: 10px;"><%=mess1%></p>
        <%
           }
        %>
	<%
           String mess2=(String)request.getAttribute("cart_mess");
           
           if(mess2!=null){
        %>
           <p style="color:green; margin-top:2px; font-size:15px;text-align:center;font-weight:bold;margin-bottom: 10px;"><%=mess2%></p>
        <%
           }
        %>
	<%
           String mess3=(String)request.getAttribute("cart_mess_exp");
           
           if(mess3!=null){
        %>
           <p style="color:red; margin-top:2px; font-size:15px;text-align:center;font-weight:bold;    margin-bottom: 10px;"><%=mess3%></p>
        <%
           }
        %>
        <%
           String ordermess=(String)request.getAttribute("ordermess");
           if(ordermess!=null){
        %>
        <p style="color:green; margin-top:2px; font-size:15px;text-align:center;font-weight:bold;    margin-bottom: 10px;"><%=ordermess%></p>
       <%
           }
        %>
        
			
			  <%
     	  				// String pin=request.getParameter("search");
     	  				// System.out.println(pin);
     	  				 
     	  				
     	  				 Statement st=null;
     	  				 ResultSet rs=null;
     	  				
     	  				
     	  				 try{
     	  					Class.forName("com.mysql.cj.jdbc.Driver");
     	  					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/furniture","root","");
     	  					st=con.createStatement();
     	  					
     	  					 String qry="select * from cart";
     	  					 rs=st.executeQuery(qry);
     	  					if(rs.next()==false){
     	  	     	 %>
     	  	     	       	  	<tr><p style="color:green; text-align:center;  font-size: 25px;">No items in the cart.</p></tr>
     	  	     	 <%
     	  	     	       	 }else{
     	  	     	  %>     <div class="rows">
     	  	     	  <%
     	  	     	       	  	do{
	     	  	     	       	 
	     	  	                 String N=rs.getString(4);
     	  			 %>
     	  			            
									<div class="col-4">
										<img src="res/<%=N%>"width="200px"height="250px">
										<h4><%=rs.getString(2) %></h4>
										<p>Product id: <%=rs.getInt(1) %></p>
										<div class="rating">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star-half-o"></i>
										</div>
										<p style="display:inline;">$<%=rs.getDouble(3)%></p>
										
										   <button type="button" name="id"class="btn" onclick="toggle()">remove</button>
										
								</div>
								
     				<%
     	  	     	       	  	}while(rs.next());
     	  	     	  %>
     	  	     	     </div>
     	  	     	     
     	  	     	  <%
     	      	     	  		     }
     	  				  }catch(Exception ex){}
     	  				
     				%>
		
   </div>
                <button type='button' class='order-btn' onclick="toggle2()">Place your order</button>

<!-- footer -->
	<div class="footer" style="margin-top:20px;">
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
		</div>
		
		<div id="pop_up">
			 <div class="modal-header">
		        <h5 class="modal-title" id="staticBackdropLabel">Confirm remove?</h5>
		      </div>
		      <hr>
		      <div class="modal-body" >
		        <form class="form col-lg-8 col-sm-12 shadow-lg  " action="remove_cart" method="post">
					          
					          <div class="form-group">
					              <label for="product_id">Product id:</label><br>
					              <input type="number" name="product_id" placeholder="Enter product id" style="outline:none;"class="form-control mt-1">
					          </div>
								
								<div class=" btns">
									<button type="submit" class="pop_btn  ">remove </button>
									<button type="reset" class=" pop_btn " onclick="toggle()">Close</button>
								</div>
      				 </form>
		      </div>
		
		</div>
		
		<!-- order model -->
		<div class="modal fade " id="order" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="staticBackdropLabel">Place your Order</h5>
		      </div>
		      <hr>
		      <div class="modal-body">
		        <form class="form col-lg-8 col-sm-12 shadow-lg  m-auto " action="order" method="post">
					          
					          <div class="form-group m-2">
					              <label for="name">Name:</label>
					              <input type="text" name="name" placeholder="Enter your person" class="form-control mt-1">
					          </div>
					          <div class="form-group m-2">
									<label for="phone">Phone:</label>
									<input type="number" name="phone" class="form-control mt-1" placeholder="Enter your phone">
								</div>
			          	      <div class="form-group m-2">
									<label for="phone">Order date:</label>
									<input type="date" name="date" class="form-control mt-1" placeholder="Enter order date">
								</div>
								<div class="form-group m-2">
									<label for="address">Address:</label>
									<textarea  name="address" class="form-control mt-1" placeholder="Enter your Address"></textarea>
								</div>
								
								
								<div class="form-group m-2">
									<label for="pincode">Pincode:</label>
									<input type="number" name="pincode" class="form-control mt-1" placeholder="Enter pincode">
								</div>
								
								<div class="btns">
									<button type="submit" class="pop_btn" style="background:#028d00;">Order</button>
									<button type="reset"  class="pop_btn" onclick="toggle2()">Close</button>
								</div>
      				 </form>
		      </div>
		      
		    </div>
		  </div>
		</div>
		
		<!-- Your orders modal --
			<!-- Modal -->
			<div class="modal fade" id="your_order" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h4 class="modal-title" id="staticBackdropLabel" style="text-align: center;font-size: 2rem;">Order details</h4>
			      </div>
			      <hr>
			      <div class="modal-body">
			      <%
			          
			         
					  if(ordermess!=null){
						 	      

     	  				 try{
     	  					Class.forName("com.mysql.cj.jdbc.Driver");
     	  					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/furniture","root","");
     	  					Statement st1=con.createStatement();
     	  					
     	  					// String qry1="select concat(product_name,',') from cart";
     	  					   // ResultSet rs1=st1.executeQuery(qry1);
     	  					    
     	  					    
     	  					 String qry2="select price from cart";
     	  					    ResultSet rs2=st1.executeQuery(qry2);
     	  					   
     	  					   double sum=0;
     	  					  while(rs2.next()){
     	  						  sum=sum+rs2.getDouble("price");
     	  					  }
     	  					
     	  					 String NAME=(String)session.getAttribute("name");
     	  					String PHONE=(String)session.getAttribute("phone");
     	  					String DATE=(String)session.getAttribute("date");
     	  					String ADDRESS=(String)session.getAttribute("address");
     	  					String PINCODE=(String)session.getAttribute("pincode");
     	  					
     	  			%>
     	  			
     	  			    <div class="order">
			              <div class="name">
			                 <p>Name: <%=NAME %></p>
			              </div>
			              <div class="phone">
			                 <p>Phone no: <%=PHONE %></p>
			              </div>
			              
			              <div class="address">
			              		<p>Address: <%=ADDRESS %></p>
			              </div>
			              <div class="pincode">
			              		<p>Pincode: <%=PINCODE %></p>
			              </div>
			              <div class="phone">
			                 <p>Order date: <%=DATE %></p>
			              </div>
			              <div class="order_type">
			                     <p>Order type: Cash on delivery</p>
			              </div>
			              <!-- 
			              <div class="ordered-items">
			                      <p>Ordered items: </p>   
			              </div>
			               
			              
			               -->

			              
     					  <div class="amount">
			                      <p>Total amount: $<%=sum %></p>
			              
			              </div>
			              <hr style="margin-top:20px; margin-bottom:2px;">
			          </div>
     	  			<%	     
     	  				  }catch(Exception ex){}
     				%>
     				
			          
			          <p style="color:green; text-align:center; margin:0px;">Your items will be delivered within 3 days.</p>
			      </div>
			      <%}else{
			    	   out.println("<h5 style='text-align:center;color:red;'>No orders have been placed.</h5>");
			      }
			      
			      %>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" onclick="toggle3()">Close</button>
			      </div>
			    </div>
			  </div>
			</div>
		<%
         }else{
        	 response.sendRedirect("index.jsp");
         }
	%>
		
<script>
 let carts=document.querySelectorAll('.btn');
 for(let i=0;i<cart.length;i++);{
	 carts[i].addEventListener('click',()=>{
		 console.log("running");
	 })
	 
 }
 function toggle(){
	 var blur=document.getElementById('blur');
	 blur.classList.toggle('active');
	 var pop_up=document.getElementById('pop_up');
	 pop_up.classList.toggle('active');
	 
	
 }
 function toggle2(){
	 var blur=document.getElementById('blur');
	 blur.classList.toggle('active');
	 
	 var order=document.getElementById('order');
	 order.classList.toggle('active');
 }
 function toggle3(){
	 var blur=document.getElementById('blur');
	 blur.classList.toggle('active');
	 
	 var order=document.getElementById('your_order');
	 order.classList.toggle('active');
 }
</script>




</body>
</html>