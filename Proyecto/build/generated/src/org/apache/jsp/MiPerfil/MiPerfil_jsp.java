package org.apache.jsp.MiPerfil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class MiPerfil_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script>\n");
      out.write("            document.getElementById(\"a\").disabled = true;\n");
      out.write("        </script>\n");
      out.write("        <title>Mi Perfil</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <img src=\"../Imagenes/logoperro1.png\" width=\"128\" height=\"128\" alt=\"Anicare\"/>\n");
      out.write("            <nav>\n");
      out.write("                <ul>\n");
      out.write("                    <li> <a href=\"\">Mi Perfil</a> </li>\n");
      out.write("                    <li> <a href=\"#\">Mis Mascotas</a> </li>\n");
      out.write("                    <li> <a href=\"#\">Animal Crossing</a> </li>\n");
      out.write("                    <li> <a href=\"#\">Localizador</a> </li>\n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("        <div class=\"ContenedorInfo\">\n");
      out.write("            <form action=\"MiPerfil.jsp\" method=\"POST\">\n");
      out.write("                ID <input type=\"text\" name=\"id\" value=\"\" />  <br><br>  \n");
      out.write("            </form>\n");
      out.write("            \n");
      out.write("            <div id=\"MiPerfil\">\n");
      out.write("            <section class=\"MiPerfil\" style=\"display: block\">\n");
      out.write("           ");

            String id;
            Connection c=null;
            Statement s=null;
            ResultSet r=null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c=DriverManager.getConnection("jdbc:mysql://localhost/dbAnicare1","root","flordemaria117");
                s=c.createStatement();
            }
            catch(SQLException error)
            {
                out.print(error.toString());
            }
            try
            {
                id = request.getParameter("id");
                r = s.executeQuery("select * from tbUsuarios where idUsr ='"+id+"';");
                if(r.next())
                {
                int a = r.getInt("idUsr");
                String b = r.getString("usrUser");
                String d = r.getString("usrNombre");
                String e = r.getString("usrApPat");
                String f = r.getString("usrApMat");
                
                out.println("Usuario " + b +";  ");
                out.println("Nombre " +d+";  ");
                out.println("Apellido paterno " +e +";  ");
                out.println("Apellido materno " +f+";  ");
                
                
                
                out.print("<h1>Cambios</h1>");
                    
                    out.print("<form action='cambios2.jsp' method='post'>");
                    out.print("ID");
                    out.print("<input type='text' id='id' name='id' value='"+id+"'>");
                    out.print("Usuario");
                    out.print("<input type='text' name='usua' value='"+b+"'>");
                    out.print("<br><br>");
                    out.print("Nombre:<input type='text' name='nombre' value='"+d+"'>");
                    out.print("<br><br>");
                    out.print("Apellido paterno<input type='text' name='appat' value='"+e+"'>");
                    out.print("<br><br>");
                    out.print("Apellido materno<input type='text' name='apmat' value='"+f+"'>");
                    out.print("<input type='submit' name='cambios' value='cambios'>");
                    out.print("</form>");
                }
            } catch(SQLException error){
                out.print(error.toString());
            }

      out.write("\n");
      out.write("            <center>\n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("    <script type=\"text/javascript\" src=\"MiPerfilJS.js\"></script>\n");
      out.write("</html>\n");
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
