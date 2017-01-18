<%-- 
    Document   : inscription
    Created on : Dec 4, 2016, 12:12:46 AM
    Author     : saifr_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="icon" href="favicon.png" type="image/png">
<link rel="shortcut icon" href="favicon.ico" type="img/x-icon">

<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,800italic,700italic,600italic,400italic,300italic,800,700,600' rel='stylesheet' type='text/css'>

<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/font-awesome.css" rel="stylesheet" type="text/css">
<link href="css/responsive.css" rel="stylesheet" type="text/css">
<link href="css/animate.css" rel="stylesheet" type="text/css">

<nav class="main-nav-outer" id="test"><!--main-nav-start-->
	<div class="container">
        <ul class="main-nav">
        	<li><a href="#header">Home</a></li>
            <li><a href="#service">Services</a></li>
            <li><a href="#Portfolio">Portfolio</a></li>
            <li class="small-logo"><a href="#header"><img src="img/small-logo.png" alt=""></a></li>
            <li><a href="#client">Clients</a></li>
            <li><a href="#team">Team</a></li>
            <li><a href="#contact">Contact</a></li>
        </ul>
        <a class="res-nav_click" href="#"><i class="fa-bars"></i></a>
    </div>
</nav><!--main-nav-end-->

<div class="container">
<section class="main-section contact" id="contact">
	
        <div class="row">
        	<div class="col-lg-6 col-sm-7 wow fadeInLeft">
            	<div class="contact-info-box address clearfix">
                	<h3><i class=" icon-map-marker"></i>Address:</h3>
                	<span>308 Negra Arroyo Lane<br>Albuquerque, New Mexico, 87111.</span>
                </div>
                <div class="contact-info-box phone clearfix">
                	<h3><i class="fa-phone"></i>Phone:</h3>
                	<span>1-800-BOO-YAHH</span>
                </div>
                <div class="contact-info-box email clearfix">
                	<h3><i class="fa-pencil"></i>email:</h3>
                	<span>hello@knightstudios.com</span>
                </div>
            	<div class="contact-info-box hours clearfix">
                	<h3><i class="fa-clock-o"></i>Hours:</h3>
                	<span><strong>Monday - Thursday:</strong> 10am - 6pm<br><strong>Friday:</strong> People work on Fridays now?<br><strong>Saturday - Sunday:</strong> Best not to ask.</span>
                </div>
                <ul class="social-link">
                	<li class="twitter"><a href="#"><i class="fa-twitter"></i></a></li>
                    <li class="facebook"><a href="#"><i class="fa-facebook"></i></a></li>
                    <li class="pinterest"><a href="#"><i class="fa-pinterest"></i></a></li>
                    <li class="gplus"><a href="#"><i class="fa-google-plus"></i></a></li>
                    <li class="dribbble"><a href="#"><i class="fa-dribbble"></i></a></li>
                </ul>
            </div>
        	<div class="col-lg-6 col-sm-5 wow fadeInUp delay-05s">
            	<div class="form">
                	
                    <div id="sendmessage">Your message has been sent. Thank you!</div>
                    <div id="errormessage"></div>

        <form action="./ajout" method="post"  class="contactForm">
                        					<div class="form-group">
			<div align="center"> <img src="img/small-logo.png" ><br></div><br>
			<input type="text" name="name" class="form-control input-text" id="name" placeholder="Your real name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                            <div class="validation"></div>
											<br>
                            <input type="text" name="username" class="form-control input-text" id="username" placeholder="Your Username" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                            <div class="validation"></div>
                       <br>
                            <input type="email" class="form-control input-text" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                            <div class="validation"></div>
                       
                        <br>
                            <input type="password" class="form-control input-text" name="password" id="password" placeholder="Your Password" data-rule="minlen:4" data-msg="Please enter at least 8 chars of password" />
                            <div class="validation"></div>
                        
						  
          <br>
						
                            <input type="password" class="form-control input-text" name="password2" id="password" placeholder="Confirm Your Password" data-rule="minlen:4" data-msg="Please enter at least 8 chars of password" />
                            <div class="validation"></div>
                        <br>
						
                    
     

      <div align="right" class="col-md-10">
	  
        <div class="radio-inline">
          <label>
            <input type="radio" name="o" id="optionsRadios1" value="programmer" checked="">
             I'm a Designer
          </label>
        </div>
        <div class="radio-inline">
          <label>
            <input type="radio" name="o" id="optionsRadios2" value="partener">
            I need something designed 
          </label>
		  
        </div>
      </div>
	  <br>
	<div class="text-center"><button type="submit" class="input-btn">Create Account</button></div>
    </div>
         
                        
                        
						
                    </form>
					
               </div>
            </div>
			
        </div>
</section>
</div>


