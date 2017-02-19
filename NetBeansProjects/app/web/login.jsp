<%-- 
    Document   : login
    Created on : 22 janv. 2017, 03:24:28
    Author     : SAIF
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Login | Job Masters</title>
        <meta name="description" content="company is a free job board template">
        <meta name="author" content="Ohidul">
        <meta name="keyword" content="html, css, bootstrap, job-board">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/fontello.css">
        <link rel="stylesheet" href="css/animate.css">        
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/owl.theme.css">
        <link rel="stylesheet" href="css/owl.transitions.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="responsive.css">
        <script src="js/vendor/modernizr-2.6.2.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-default">
          <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="index.jsp"><img src="img/logo.png" alt=""></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <div class="button navbar-right">
                  <a href="inscription.jsp"><button class="navbar-btn nav-button wow fadeInRight" data-wow-delay="0.6s">Inscription</button></a>
              </div>
             <ul class="main-nav nav navbar-nav navbar-right">
                <li class="wow fadeInDown" data-wow-delay="0s"><a class="active" href="index.jsp">Acceuil</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.1s"><a href="#">Programmeurs</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.2s"><a href="#">Offres</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.3s"><a href="#">A propos</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="#">Blog</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.5s"><a href="#">Contact</a></li>
              </ul>
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>
<div class="col-md-3 "></div>
    <div class="col-md-4 ">
        <div class="form" >
            <form action="./verif" method="post" align="center" class="saif">
		<div class="form-group"  >
                     <div align="center"> <a  href="#" ><img src="img/logo_1.png" alt=""></a></div>
                 <br> <input  type="text"   class="form-control input-text" name="username" id="name" placeholder="Votre nom d'utilisateur" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                 <br> <input type="password" class="form-control input-text" name="password" id="password" placeholder="Votre mot de passe" data-rule="minlen:4" data-msg="Please enter at least 8 chars of password" />
                            
                  <br> <div align="left" class="col-md-10">       
                           <input type="checkbox" id="checkbox" />
                           <label for="checkbox"><font size=4 >Rappeler moi</font></label>
                       </div>   
                           <button type="submit" class="btn btn_5 btn-lg btn-primary">&nbsp; Se Connecter &nbsp;</button>
                 
                </div>
	    </form>             		
	</div>
    </div>   
           <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')</script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/wow.js"></script>
        <script src="js/main.js"></script>       
</body>
</html>