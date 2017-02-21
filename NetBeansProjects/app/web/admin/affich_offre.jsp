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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Afficher l'offre</title>
        <link href="./affiche.css" rel="stylesheet"> 

    </head>
    <body  >
       
        <%String ido=request.getParameter("ido");
           if(ido!=null)  {                                                         
           String sqlo="select * from offres where id='"+ido+"'";
          ResultSet rs=Conx.getConnexion().createStatement().executeQuery(sqlo);
           
           if(rs.next()){               %>
           <br>
           <div class="col-md-2"></div>
           <div  >
               <div class=" aff col-md-8" >
                   <br>
                  <label class="col-md-3" > <b> Auteur d'offre :</b> </label>
                   <p><%out.print(rs.getString(5));%></p>
                   <hr><br>
                   <label class="col-md-3"><b> Titre d'offre :</b></label>
                   <p><%out.print(rs.getString(2));%></p>
                   <hr><br>
                   <label class="col-md-3"><b> Type d'offre :</b></label>
                   <p><%out.print(rs.getString(3));%></p>
                   <hr><br>
                   <label class="col-md-3"><b> Description d'offre :</b></label>
                   <p><%out.print(rs.getString(4));%></p>
                   <hr><br>
                   <label class="col-md-3"><b> prix d'offre :</b></label>
                   <p><%out.print("Entre "+rs.getString(6)+" Dt et "+rs.getString(7)+" Dt .");%></p>
                   <hr><br>
                   <label class="col-md-3"><b> Attachement:</b></label>
                   <p><%out.print(rs.getString(8));%></p>
                   <hr>
                   <a href="./offres.jsp?id=<%=rs.getString(1)%>"><button type="button" class="btn btn-primary">Confirmer</button></a>
                    <a href="./offres.jsp" class="btn btn-default">Retour</button></a>
                    <br><br>

                   <%}}else{out.print("allah 8aleb 3alina w 3alik");}%>
               </div></div>
               <div class="col-md-1"></div>
                     
    </body>
</html>
