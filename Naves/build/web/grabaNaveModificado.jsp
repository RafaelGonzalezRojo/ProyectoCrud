<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <!--css personalizado -->
    <link href='https://fonts.googleapis.com/css?family=Orbitron' rel='stylesheet' type='text/css'>
    <link href="css/personalizado.css" rel="stylesheet" type="text/css">
    
   


    <title>Hangar de Naves</title>
  </head>
  <body>
      <div class="container">
      <div id="cabecera">
               
            <h1>Gestor de Naves Intergalacticas</h1>
              
                
      </div>  
       <div id="imagencabecera">
                    
                    
       </div>
      <br>
      <br>
      <div class="acceso">
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/naves","root", "root");
      Statement s = conexion.createStatement();

      request.setCharacterEncoding("UTF-8");
      
      String actualizacion = "UPDATE hangar SET "
                           + "modelo='" + request.getParameter("modelo")
                           + "', longitud=" + Integer.valueOf(request.getParameter("longitud"))
                           + ", daño=" + Integer.valueOf(request.getParameter("daño"))
                           + ", escudo=" + Integer.valueOf(request.getParameter("escudo"))
                           + ", combustible='" + request.getParameter("combustible")
                           + "', arma='" + request.getParameter("arma")
                           + "' WHERE IdNave=" + Integer.valueOf(request.getParameter("IdNave"));
      s.execute(actualizacion);
   
      out.println("Nave actualizada correctamente.");
      
      conexion.close();
    %>
    <br>
    <a href="index.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-road"></span> Página principal</button></a>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      </div>
      <br><br>
     <div class="footer">&copy;Rafael González Rojo</div>
      </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>