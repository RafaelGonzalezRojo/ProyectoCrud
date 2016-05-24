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
      <title>Modificacion de Nave </title>
  </head>
  <body>
    <% request.setCharacterEncoding("UTF-8"); %>
    <div class="container">
      <br><br>
      
      <div id="cabecera">
               
            <h1>Gestor de Naves Intergalacticas</h1>
              
                
      </div>  
       <div id="imagencabecera">
                    
                    
       </div>
      <br>
      <br>
      <div class="panel panel-info">
          <div class="panel-heading text-center"><h2>Modificación de Nave</h2></div>
          <form method="get" action="grabaNaveModificado.jsp">
            <div class="form-group"> 
              <label>&nbsp;&nbsp;Nº de Nave:&nbsp;</label><input type="text" size="5" name="IdNave" value="<%= request.getParameter("IdNave") %>" readonly>
            </div>
            <div class="form-group">
            <label>&nbsp;&nbsp;Nombre:&nbsp;</label><input type="text" size="35" name="modelo" value="<%= request.getParameter("modelo") %>">
            </div>
            <div class="form-group">
             <label>&nbsp;&nbsp;Longitud (en m):&nbsp;</label><input type="text" size="5" name="longitud" value="<%= request.getParameter("longitud") %>">
             <label>&nbsp;&nbsp;Daño:&nbsp;</label><input type="text" size="5" name="daño" value="<%= request.getParameter("daño") %>">
            </div>
            <div class="form-group">
             <label>&nbsp;&nbsp;Escudo:&nbsp;</label><input type="text" name="escudo" size="20" value="<%= request.getParameter("escudo") %>">
            </div>
            <div class="form-group">
             <label>&nbsp;&nbsp;Combustible:&nbsp;</label><select type="text" name="combustible">
                 <option  value="<%= request.getParameter("combustible") %>"><%= request.getParameter("combustible") %></option>
                <option  value="Plutonio">Plutonio</option>
                <option  value="Plasma">Plasma</option>
                <option  value="Gasolina">Gasolina</option>
                <option  value="Diesel">Diesel</option>
                <option  value="Gemas">Gemas</option>
                <option  value="Electricidad">Electricidad</option>
                <option  value="Ionico">Ionico</option>
                <option  value="Fotonico">Fotonico</option>                        
            </select>
            </div>
            <div class="form-group">
             <label>&nbsp;&nbsp;Arma Equipada:&nbsp;</label><input type="text" name="arma" size="20" value="<%= request.getParameter("arma") %>">
            </div>
            
            <hr>
            &nbsp;&nbsp;<a href="index.jsp" class="btn btn-danger"><span class="glyphicon glyphicon-chevron-left"></span>Cancelar</a>
            <button type="submit" class="btn btn-success">Aceptar<span class="glyphicon glyphicon-chevron-right"></span></button><br><br>
          </form>

      </div>
      <div class="footer">&copy; Rafael Gonzalez Rojo</div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
