
<%@page import="sseguridad.Hash"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
        
        String User = request.getParameter("User");
        int l = Integer.parseInt(User);
        String Nombre = request.getParameter("Nombre");
        String ApPat = request.getParameter("ApPat");
        String ApMat = request.getParameter("ApMat");
        String Pass = request.getParameter("Pass");
        String Email = request.getParameter("Email");
        String Rol = request.getParameter("Rol");
        Hash h = new Hash();
        String PassH = h.Hash(Pass);
  try {
      Connection con = null;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/dbAnicare1", "root", "flordemaria117");
           String querystring = "INSERT INTO tbUsuarios VALUES(?,?,?,?,?,?,?)";
           PreparedStatement ps = con.prepareStatement(querystring);
            ps.setInt(1, l);
            ps.setString(2, Nombre);
            ps.setString(3, ApPat);
            ps.setString(4, ApMat);
            ps.setString(5, PassH);
            ps.setString(6, Email);
            ps.setString(7, Rol);
            
            ps.execute();
            
            

            
        } catch (Exception e) {
            System.out.println("Error: " + e);
        } 
        %>
       <header>
            <img src="../Imagenes/logoperro1.png" width="128" height="128" alt="Anicare"/>
            <nav>
                <ul>
                    <li> <a href="../MiPerfil/MiPerfil.jsp">Mi Perfil</a> </li>
                    <li> <a href="#">Mis Mascotas</a> </li>
                    <li> <a href="#">Animal Crossing</a> </li>
                    <li> <a href="#">Localizador</a> </li>
                </ul>
            </nav>
        </header>
        <div>
            <P>//Texto</P>
        </div>
        <footer>
            <img src="../Imagenes/eze.png" width="128" height="128" alt="EZ Software"/>
            <p>Desarrollado por EZ Software</p>            
        </footer>
    </body>
</html>
