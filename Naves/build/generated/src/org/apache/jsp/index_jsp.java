package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <!-- Bootstrap -->\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <!--css personalizado -->\n");
      out.write("    <link href='https://fonts.googleapis.com/css?family=Orbitron' rel='stylesheet' type='text/css'>\n");
      out.write("    <link href=\"css/personalizado.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    <title>Hangar de Naves</title>\n");
      out.write("  </head>\n");
      out.write("\n");
      out.write("  <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("          \n");
      out.write("            <div id=\"cabecera\">\n");
      out.write("               \n");
      out.write("                    <h1>Gestor de Naves Intergalacticas</h1>\n");
      out.write("              \n");
      out.write("                \n");
      out.write("            </div>  \n");
      out.write("             <div id=\"imagencabecera\">\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("             </div>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("\t\t\t<br><br>\t\t\t\n");
      out.write("        <div class=\"panel panel-success\">\n");
      out.write("        <div class=\"panel-heading text-center\"><h2>Hangar de Naves</h2></div>\n");
      out.write("        ");

          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/naves","root", "root");
          Statement s = conexion.createStatement();

          ResultSet listado = s.executeQuery ("SELECT * FROM hangar");
        
      out.write("\n");
      out.write("\n");
      out.write("        <table class=\"table table-striped\">\n");
      out.write("            <tr><th>Nº de Nave</th><th>Modelo</th><th>Longitud(m)</th><th>Daño(max 100)</th><th>Escudo(max 100)</th><th>Combustible</th><th>Arma</th><th></th><th></th></tr>\n");
      out.write("        <form method=\"get\" action=\"grabaNave.jsp\">\n");
      out.write("          <tr><td><input type=\"text\" name=\"IdNave\" size=\"5\"></td>\n");
      out.write("              <td><input type=\"text\" name=\"modelo\" size=\"10\"></td>\n");
      out.write("              <td><input type=\"number\" name=\"longitud\" size=\"1\" min=\"1\" max=\"500\" style=\"width: 40%;\"></td>\n");
      out.write("              <td><input type=\"number\" name=\"daño\" size=\"1\"min=\"1\" maxlength=\"1\" max=\"100\" style=\"width: 40%;\" ></td>\n");
      out.write("              <td><input type=\"number\" name=\"escudo\" size=\"1\" min=\"0\" max=\"100\" value=\"0\" style=\"width: 40%;\"></td>\n");
      out.write("              <td> <select type=\"text\" name=\"combustible\">\n");
      out.write("                <option  value=\"Plutonio\">Plutonio</option>\n");
      out.write("                <option  value=\"Plasma\">Plasma</option>\n");
      out.write("                <option  value=\"Gasolina\">Gasolina</option>\n");
      out.write("                <option  value=\"Diesel\">Diesel</option>\n");
      out.write("                <option  value=\"Gemas\">Gemas</option>\n");
      out.write("                <option  value=\"Electricidad\">Electricidad</option>\n");
      out.write("                <option  value=\"Ionico\">Ionico</option>\n");
      out.write("                <option  value=\"Fotonico\">Fotonico</option>\n");
      out.write("            </select></td>\n");
      out.write("              <td><input type=\"text\" name=\"arma\" size=\"10\"></td>\n");
      out.write("              <td><button type=\"submit\" value=\"Añadir\" class=\"btn btn-primary\"><span class=\"glyphicon glyphicon-plane\"></span> Añadir</button></td><td></td></tr>           \n");
      out.write("        </form>\n");
      out.write("        ");

          while (listado.next()) {
            out.println("<tr><td>");
            out.println(listado.getString("IdNave") + "</td>");
            out.println("<td>" + listado.getString("modelo") + "</td>");
            out.println("<td>" + listado.getString("longitud") + "</td>");
            out.println("<td>" + listado.getString("daño") + "</td>");
            out.println("<td>" + listado.getString("escudo") + "</td>");
            out.println("<td>" + listado.getString("combustible") + "</td>");
            out.println("<td>" + listado.getString("arma") + "</td>");
        
      out.write("\n");
      out.write("        <td>\n");
      out.write("        <form method=\"get\" action=\"modificaNave.jsp\">\n");
      out.write("          <input type=\"hidden\" name=\"IdNave\" value=\"");
      out.print(listado.getString("IdNave") );
      out.write("\">\n");
      out.write("          <input type=\"hidden\" name=\"modelo\" value=\"");
      out.print(listado.getString("modelo") );
      out.write("\">\n");
      out.write("          <input type=\"hidden\" name=\"longitud\" value=\"");
      out.print(listado.getString("longitud") );
      out.write("\">\n");
      out.write("          <input type=\"hidden\" name=\"daño\" value=\"");
      out.print(listado.getString("daño") );
      out.write("\">\n");
      out.write("          <input type=\"hidden\" name=\"escudo\" value=\"");
      out.print(listado.getString("escudo") );
      out.write("\">\n");
      out.write("          <input type=\"hidden\" name=\"combustible\" value=\"");
      out.print(listado.getString("combustible") );
      out.write("\">\n");
      out.write("          <input type=\"hidden\" name=\"arma\" value=\"");
      out.print(listado.getString("arma") );
      out.write("\">\n");
      out.write("      \n");
      out.write("\t<button type=\"submit\"  class=\"btn btn-warning\"><span class=\"glyphicon glyphicon-wrench\"></span> Modificar</button>\n");
      out.write("\t\t\t\t</form>\n");
      out.write("\t\t\t\t</td>\n");
      out.write("\t\t\t\t<td>\n");
      out.write("        <form method=\"get\" action=\"borraNave.jsp\">\n");
      out.write("          <input type=\"hidden\" name=\"IdNave\" value=\"");
      out.print(listado.getString("IdNave") );
      out.write("\"/>\n");
      out.write("          <button type=\"submit\" class=\"btn btn-danger\"><span class=\"glyphicon glyphicon-remove\"></span> Eliminar</button>\n");
      out.write("        </form>\n");
      out.write("        </td></tr>\n");
      out.write("        ");

          } // while   

          conexion.close();
        
      out.write("\n");
      out.write("\n");
      out.write("        </table>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"footer\">&copy;Rafael González Rojo</div>\n");
      out.write("    </div>\n");
      out.write("    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\n");
      out.write("    <script src=\"js/jquery.min.js\"></script>\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("  </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
