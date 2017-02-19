<%-- 
    Document   : les_offres
    Created on : 13 févr. 2017, 00:16:20
    Author     : SAIF
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="util.Conx"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Jonaki | Job Board Template</title>
        <meta name="description" content="company is a free job board template">
        <meta name="author" content="Ohidul">
        <meta name="keyword" content="html, css, bootstrap, job-board">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <link rel="stylesheet" href="../css/normalize.css">
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <link rel="stylesheet" href="../css/fontello.css">
        <link rel="stylesheet" href="../css/animate.css">        
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/owl.carousel.css">
        <link rel="stylesheet" href="../css/owl.theme.css">
        <link rel="stylesheet" href="../css/owl.transitions.css">
        <link rel="stylesheet" href="../style.css">
        <link rel="stylesheet" href="../responsive.css">
        <script src="../js/vendor/modernizr-2.6.2.min.js"></script>
    </head>
    <body >
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
              <a class="navbar-brand" href="#"><img src="../img/logo_1.png" alt=""></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
         <% HttpSession s=request.getSession();
 String us=(String)s.getAttribute("user");
 String tp=(String)s.getAttribute("type");
 String sql="select * from user where username ='"+us+"'";
 ResultSet rs=Conx.getConnexion().createStatement().executeQuery(sql);
 
 String img="";
 
 while(rs.next()){
 

 img=rs.getString(10);
 }
 %>
 
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <div class="button navbar-right">
                   <div class="button navbar-right">
                <!--********************************************** -->
                
 <div class="btn-group" >
  <a class="btn btn-default" href="#"><img src="../profile_img/<%=img%>" width="40" height="40" ></a>  
  <a class="btn btn-default" href="#" ><i class="fa fa-user fa-fw"></i><%=us%> </a>
  <a class="btn btn-default dropdown-toggle"  data-toggle="dropdown"  href="#">
    <span class="fa fa-caret-down" title="Toggle dropdown menu"></span>
  </a>
  <ul class="dropdown-menu" >
        <li>&nbsp;&nbsp;&nbsp;&nbsp; <i class="fa fa-flag"></i>&nbsp;&nbsp;<%=tp%> </li> 
        <li class="divider"></li>  
        <li> <a href="./ajouter_offre.jsp"><i class="fa fa-cog"></i>&nbsp;&nbsp; Ajouter offre</a> </li> 
	<li> <a href="./profile_part.jsp"><i class="fa fa-user"></i>&nbsp;&nbsp;Profile</a> </li> 
	<li class="divider"></li>
	<li> <a href="../destroy"><i class="fa fa-sign-out"></i>&nbsp;&nbsp; Logout</a> </li>
  </ul>
 </div> 
                <!--********************************************** -->              </div>
              <ul class="main-nav nav navbar-nav navbar-right">
                <li class="wow fadeInDown" data-wow-delay="0s"><a  href="./partener.jsp">Acceuil</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="active" href="./les_cv.jsp">Programmeurs</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.2s"><a href="./les_offres.jsp">Offres</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.3s"><a href="#">A propos</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="#">Blog</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.5s"><a href="#">Contact</a></li>
              </ul>
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>
    <center><h1> La liste des programmeurs</h1></center>
         <%String sqlo="select * from cv"; 
                ResultSet rs2=Conx.getConnexion().createStatement().executeQuery(sqlo);
                %>
                <!-- ******************************** -->
                <div class="row jobs ">
                    <div class="col-md-2"></div>
                    
                   
                        
                    <div class="col-md-8">
                         <div class="white">
                        <div class="job-posts table-responsive">
                            <table class="table"><%while(rs2.next()){%>
                                <tr class="odd wow fadeInUp" data-wow-delay="1s">
                                    <td class="tbl-logo"><img src="../partener/profile_img/<%//********%>" alt=""></td>
                                    <td class="tbl-title"><h4><%out.print(rs2.getString(2));%><br><span class="job-type">full time</span></h4></td>
                                    <td><b><%out.print(rs2.getString(3));%></b></td>
                                   
                                    <td class="tbl-apply"><a href="./cv.jsp?prog=<%=rs2.getString(2)%>">Consulter son CV </a></td><%};%>
                                </tr>
                               
                            </table>
                        </div>
                       
                        
						
						 
                    </div></div>
                   <div class="col-md-2"></div>
                
                       </div>         
            
            <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="../js/vendor/jquery-1.10.2.min.js"><\/script>')</script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/owl.carousel.min.js"></script>
        <script src="../js/wow.js"></script>
        <script src="../js/main.js"></script>
    </body>
</html>