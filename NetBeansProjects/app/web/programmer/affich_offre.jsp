<%-- 
    Document   : affich_offre
    Created on : 26 janv. 2017, 02:15:11
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
    <body  >
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
        <li> <a href="./moncv.jsp"><i class="fa fa-cog"></i>&nbsp;&nbsp; Mon CV</a> </li> 
	<li> <a href="./profile_prog.jsp"><i class="fa fa-user"></i>&nbsp;&nbsp;Profile</a> </li> 
	<li class="divider"></li>
	<li> <a href="../destroy"><i class="fa fa-sign-out"></i>&nbsp;&nbsp; Logout</a> </li>
  </ul>
 </div> 
                <!--********************************************** -->              </div>
              <ul class="main-nav nav navbar-nav navbar-right">
                <li class="wow fadeInDown" data-wow-delay="0s"><a  href="./programmer.jsp">Acceuil</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.1s"><a href="./les_cv.jsp">Programmeurs</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.2s"><a class="active" href="./les_offres.jsp">Offres</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.3s"><a href="#">A propos</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="#">Blog</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.5s"><a href="#">Contact</a></li>
              </ul>
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>
       
        <%String ido=request.getParameter("ido");
           if(ido!=null)  {                                                         
           String sqlo="select * from offres where id='"+ido+"'";
          ResultSet rs2=Conx.getConnexion().createStatement().executeQuery(sqlo);
           
           if(rs2.next()){ %>
           <br><div class="col-md-12" >
           <div class="col-md-2"></div>
           
               <div class=" aff col-md-8" >
                   <br>
                  <label class="col-md-3" > <b> Auteur d'offre :</b> </label>
                   <p><%out.print(rs2.getString(5));%></p>
                   <hr><br>
                   <label class="col-md-3"><b> Titre d'offre :</b></label>
                   <p><%out.print(rs2.getString(2));%></p>
                   <hr><br>
                   <label class="col-md-3"><b> Type d'offre :</b></label>
                   <p><%out.print(rs2.getString(3));%></p>
                   <hr><br>
                   <label class="col-md-3"><b> Description d'offre :</b></label>
                   <p><%out.print(rs2.getString(4));%></p>
                   <hr><br>
                   <label class="col-md-3"><b> prix d'offre :</b></label>
                   <p><%out.print("Entre "+rs2.getString(6)+" Dt et "+rs2.getString(7)+" Dt .");%></p>
                   <hr><br>
                   <label class="col-md-3"><b> Attachement:</b></label>
                   <p><%out.print(rs2.getString(8));%></p>
                   <hr>
                    <button onclick="javascript:history.back()" class="btn btn-default">Retour</button>
                    <br><br>
                    

                   <%}}else{out.print("page introuvable");}%>
               </div>
               <div class="col-md-2"></div>
                </div>
               <h2>Commentaires :</h2><br><br>
               <% String sqlc="select * from commentaires where offre ='"+ido+"'";
 ResultSet rsc=Conx.getConnexion().createStatement().executeQuery(sqlc);

                while(rsc.next()){
                    String sqli="select * from user where username='"+rsc.getString(2)+"'";
 ResultSet rsi=Conx.getConnexion().createStatement().executeQuery(sqli);
 while(rsi.next()){
 %>
                <div class="col-md-12"><hr>
                    
                    <div class="col-md-2 "><a href="" class="tab-pane fade in active">
                                        <img src="../profile_img/<%=rsi.getString(10)%>" alt="" width="85" height="85">
                                        <div class="overlay"><h3><%=rsc.getString(2)%></h3><p><%=tp%></p></div>
                                    </a></div>
                   <div class="col-md-8"> <label > <b> <%=rsc.getString(2)%> :</b> </label>
                    <p><%out.print(rsc.getString(1));%></p>                        
                   </div>
                   <div class="col-md-2"></div>                        
                </div>
                <br>                   
                  
 <%} }%>
     <div class="col-md-12"><br><br>  
     <form action="../ajout_comment" method="post">
         <hr>
         <input type="hidden" value="<%=ido%>" name="id">
               <div class="col-md-2">
                   <div class="col-md-6"><img src="../profile_img/<%=img%>" name="imge"width="50" height="50" ></div>
                   <div class="col-md-6"><b><%=us%> :</b></div>
               </div>
               <div class="col-md-8"><textarea placeholder="Ajouter un commentaire..." name="com"rows="3" class="form-control input-text"></textarea><br>
                   <div class="col-md-4"><button type="submit" class="btn btn-sm btn-primary">Envoyer</button></div>
               </div>
               </form>
     </div>              
               
               
               
               
               <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="../js/vendor/jquery-1.10.2.min.js"><\/script>')</script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/owl.carousel.min.js"></script>
        <script src="../js/wow.js"></script>
        <script src="../js/main.js"></script>
                     
    </body>
</html>
