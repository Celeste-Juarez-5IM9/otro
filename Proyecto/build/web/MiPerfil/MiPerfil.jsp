<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
            document.getElementById("a").disabled = true;
        </script>
        <title>Mi Perfil</title>
    </head>
    <body>
        <header>
            <img src="../Imagenes/logoperro1.png" width="128" height="128" alt="Anicare"/>
            <nav>
                <ul>
                    <li> <a href="">Mi Perfil</a> </li>
                    <li> <a href="#">Mis Mascotas</a> </li>
                    <li> <a href="#">Animal Crossing</a> </li>
                    <li> <a href="#">Localizador</a> </li>
                </ul>
            </nav>
        </header>
        <div class="ContenedorInfo">
            <form action="MiPerfil.jsp" method="POST">
                ID <input type="text" name="id" value="" />  <br><br>  
            </form>
            
            <div id="MiPerfil">
            <section class="MiPerfil" style="display: block">
           <%
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
                    out.print("<input type='text' name='id' value='"+id+"'>");
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
%>
            <center>
       
    </body>
    <script type="text/javascript" src="MiPerfilJS.js"></script>
</html>
