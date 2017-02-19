<%-- 
    Document   : affich_cv
    Created on : 13 févr. 2017, 02:01:27
    Author     : SAIF
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="util.Conx"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Afficher l'offre</title>
        <link href="./affiche.css" rel="stylesheet"> 

    </head>
    <body  >
       
        <%String ido=request.getParameter("ido");
           if(ido!=null)  {                                                         
           String sqlo="select * from cv where id='"+ido+"'";
          ResultSet rs=Conx.getConnexion().createStatement().executeQuery(sqlo);
           
           if(rs.next()){               %>
           <br>
           <div class="col-md-2"></div>
           <div  >
               <div class=" aff col-md-8" >
                   <br>
                  <label class="col-md-3" > <b> CV de:</b> </label>
                   <p><%out.print(rs.getString(2));%></p>
                   <hr><br>
                   <label class="col-md-3"><b> Spécialité  :</b></label>
                   <p><%out.print(rs.getString(3));%></p>
                   <hr><br>
                   
                   <label class="col-md-3"><b> Description de CV :</b></label>
                   <p><%out.print(rs.getString(4));%></p>
                   <hr><br>
                   
                   <label class="col-md-3"><b> Attachement:</b></label>
                   <p><%out.print(rs.getString(5));%></p>
                   <hr>
                   
                    <a href="./cv.jsp" class="btn btn-default">Retour</button></a>
                    <br><br>

                   <%}}else{out.print("Retourner à la page précedente ");}%>
               </div></div>
               <div class="col-md-1"></div>
                     
    </body>
</html>
