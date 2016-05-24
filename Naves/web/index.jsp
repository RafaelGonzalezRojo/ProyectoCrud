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
                    
                    
			<br><br>			
        <div class="panel panel-success">
        <div class="panel-heading text-center"><h2>Hangar de Naves</h2></div>
        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/naves","root", "root");
          Statement s = conexion.createStatement();

          ResultSet listado = s.executeQuery ("SELECT * FROM hangar");
        %>

        <table class="table table-striped">
            <tr><th>Nº de Nave</th><th>Modelo</th><th>Longitud(m)</th><th>Daño(max 100)</th><th>Escudo(max 100)</th><th>Combustible</th><th>Arma</th><th></th><th></th></tr>
        <form method="get" action="grabaNave.jsp">
          <tr><td><input type="text" name="IdNave" size="5"></td>
              <td><input type="text" name="modelo" size="10"></td>
              <td><input type="number" name="longitud" size="1" min="1" max="500" style="width: 40%;"></td>
              <td><input type="number" name="daño" size="1"min="1" maxlength="1" max="100" style="width: 40%;" ></td>
              <td><input type="number" name="escudo" size="1" min="0" max="100" value="0" style="width: 40%;"></td>
              <td> <select type="text" name="combustible">
                <option  value="Plutonio">Plutonio</option>
                <option  value="Plasma">Plasma</option>
                <option  value="Gasolina">Gasolina</option>
                <option  value="Diesel">Diesel</option>
                <option  value="Gemas">Gemas</option>
                <option  value="Electricidad">Electricidad</option>
                <option  value="Ionico">Ionico</option>
                <option  value="Fotonico">Fotonico</option>
            </select></td>
              <td><input type="text" name="arma" size="10"></td>
              <td><button type="submit" value="Añadir" class="btn btn-primary"><span class="glyphicon glyphicon-plane"></span> Añadir</button></td><td></td></tr>           
        </form>
        <%
          while (listado.next()) {
            out.println("<tr><td>");
            out.println(listado.getString("IdNave") + "</td>");
            out.println("<td>" + listado.getString("modelo") + "</td>");
            out.println("<td>" + listado.getString("longitud") + "</td>");
            out.println("<td>" + listado.getString("daño") + "</td>");
            out.println("<td>" + listado.getString("escudo") + "</td>");
            out.println("<td>" + listado.getString("combustible") + "</td>");
            out.println("<td>" + listado.getString("arma") + "</td>");
        %>
        <td>
        <form method="get" action="modificaNave.jsp">
          <input type="hidden" name="IdNave" value="<%=listado.getString("IdNave") %>">
          <input type="hidden" name="modelo" value="<%=listado.getString("modelo") %>">
          <input type="hidden" name="longitud" value="<%=listado.getString("longitud") %>">
          <input type="hidden" name="daño" value="<%=listado.getString("daño") %>">
          <input type="hidden" name="escudo" value="<%=listado.getString("escudo") %>">
          <input type="hidden" name="combustible" value="<%=listado.getString("combustible") %>">
          <input type="hidden" name="arma" value="<%=listado.getString("arma") %>">
      
	<button type="submit"  class="btn btn-warning"><span class="glyphicon glyphicon-wrench"></span> Modificar</button>
				</form>
				</td>
				<td>
        <form method="get" action="borraNave.jsp">
          <input type="hidden" name="IdNave" value="<%=listado.getString("IdNave") %>"/>
          <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span> Eliminar</button>
        </form>
        </td></tr>
        <%
          } // while   

          conexion.close();
        %>

        </table>
      </div>
      <div class="footer">&copy;Rafael González Rojo</div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>