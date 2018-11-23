<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="mx.edu.cecyt9.ipn.anicare.utils.Valida"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession(false);
    String User = (String)sesion.getAttribute("User");
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Anicare</title>
    </head>
    <body>
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
            <center>
            <!-- <form method="post" action="../EditarUser" name="FormEditaPerfil">
                <h2>Mis Datos</h2>
                Usuario: &nbsp;<INPUT type="text" name="UsuarioUsr" placeholder="Usuario" value=""><br><br>
                Nombre: &nbsp;<INPUT type="text" name="NombreUsr" placeholder="Nombre" value=""><br><br>
                Apellido paterno: &nbsp;<INPUT type="text" name="ApPatUsr" placeholder="Apellido Paterno" value=""><br><br>
                Apellido materno: &nbsp;<INPUT type="text" name="ApMatUsr" placeholder="Apellido Materno" value=""><br><br>
                E-mail: &nbsp;<INPUT type="text" name="EmailUsr" placeholder="Correo Electr&oacute;nico" value=""><br><br>
                Tel&eacute;fono: &nbsp;<INPUT type="text" name="TelUsr" placeholder="Tel&eacute;fono" value=""><br><br>
                Direcci&oacute;n de: &nbsp;<INPUT type="text" name="DescripUsr" placeholder="Descripci&oacute;n del lugar" value=""><br><br>
                Calle: &nbsp;<INPUT type="text" name="CalleUsr" placeholder="Calle" value=""><br><br>
                N&uacute;mero: &nbsp;<INPUT type="text" name="NumUsr" placeholder="N&uacute;mero" value=""><br><br>
                Colonia: &nbsp;<INPUT type="text" name="ColoniaUsr" placeholder="Colonia" value=""><br><br>
                Municipio: &nbsp;<INPUT type="text" name="MunicipioUsr" placeholder="Municipio" value=""><br><br>
                Estado: &nbsp;<INPUT type="text" name="EstadoUsr" placeholder="Estado" value=""><br><br>
                <INPUT type="submit" value="Aceptar"><br><br>-->
            <%
                    Valida v = new Valida();
                    String Usuario = "", Nombre = "", ApPat = "", ApMat = "", Pass = "", Email = "", Tel = "", dirDescrip = "", Calle = "", Num = "", Colonia = "", Municipio = "", Estado = "";
                    
                    Connection con = null;

                    String idUsr = (String)sesion.getAttribute("idUsr");
                    int id = Integer.parseInt(idUsr);
    try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/dbAnicare1", "root", "n0m3l0");
            
            CallableStatement cstat = con.prepareCall("{call psConsultaInfoUsr(?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
            
            cstat.setInt(1, id);
            cstat.registerOutParameter(2, java.sql.Types.VARCHAR);
            cstat.registerOutParameter(3, java.sql.Types.VARCHAR);
            cstat.registerOutParameter(4, java.sql.Types.VARCHAR);
            cstat.registerOutParameter(5, java.sql.Types.VARCHAR);
            cstat.registerOutParameter(6, java.sql.Types.VARCHAR);
            cstat.registerOutParameter(7, java.sql.Types.VARCHAR);
            cstat.registerOutParameter(8, java.sql.Types.VARCHAR);
            cstat.registerOutParameter(9, java.sql.Types.VARCHAR);
            cstat.registerOutParameter(10, java.sql.Types.VARCHAR);
            cstat.registerOutParameter(11, java.sql.Types.VARCHAR);
            cstat.registerOutParameter(12, java.sql.Types.VARCHAR);
            cstat.registerOutParameter(13, java.sql.Types.VARCHAR);
            cstat.registerOutParameter(14, java.sql.Types.VARCHAR);
            
            cstat.execute();
            
            Usuario = cstat.getString(2);
            Nombre = cstat.getString(3);
            ApPat = cstat.getString(4);
            ApMat = cstat.getString(5);
            Pass = cstat.getString(6);
            Email = cstat.getString(7);
            Tel = cstat.getString(8);
            dirDescrip = cstat.getString(9);
            Calle = cstat.getString(10);
            Num = cstat.getString(11);
            Colonia = cstat.getString(12);
            Municipio = cstat.getString(13);
            Estado = cstat.getString(14);
        } catch (Exception e) {
        }
        Tel = v.validaVacio2(Tel);
        dirDescrip = v.validaVacio2(dirDescrip);
        Calle = v.validaVacio2(Calle);
        Num = v.validaVacio2(Num);
        Colonia = v.validaVacio2(Colonia);
        Municipio = v.validaVacio2(Municipio);
        Estado = v.validaVacio2(Estado);
                
                out.println("<form method='post' action='../EditarUser' name='FormEditaPerfil'>"
                            + "<h2>Mis Datos</h2>"
                            + "Usuario: &nbsp;<INPUT type='text' name='UsuarioUsr' placeholder='Usuario' value="+ Usuario +"><br><br>"
                            + "Nombre: &nbsp;<INPUT type='text' name='NombreUsr' placeholder='Nombre' value="+Nombre+"><br><br>"
                            + "Apellido paterno: &nbsp;<INPUT type='text' name='ApPatUsr' placeholder='Apellido Paterno' value="+ApPat+"><br><br>"
                            + "Apellido materno: &nbsp;<INPUT type='text' name='ApMatUsr' placeholder='Apellido Materno' value="+ApMat+"><br><br>"
                            + "E-mail: &nbsp;<INPUT type='text' name='EmailUsr' placeholder='Correo Electr&oacute;nico' value="+Email+"><br><br>"
                            + "Tel&eacute;fono: &nbsp;<INPUT type='text' name='TelUsr' placeholder='Tel&eacute;fono' value="+Tel+"><br><br>"
                            + "Direcci&oacute;n de: &nbsp;<INPUT type='text' name='DescripUsr' placeholder='Descripci&oacute;n del lugar' value="+dirDescrip+"><br><br>"
                            + "Calle: &nbsp;<INPUT type='text' name='CalleUsr' placeholder='Calle' value="+Calle+"><br><br>"
                            + "N&uacute;mero: &nbsp;<INPUT type='text' name='NumUsr' placeholder='N&uacute;mero' value="+Num+"><br><br>"
                            + "Colonia: &nbsp;<INPUT type='text' name='ColoniaUsr' placeholder='Colonia' value="+Colonia+"><br><br>"
                            + "Municipio: &nbsp;<INPUT type='text' name='MunicipioUsr' placeholder='Municipio' value="+Municipio+"><br><br>"
                            + "Estado: &nbsp;<INPUT type='text' name='EstadoUsr' placeholder='Estado' value="+Estado+"><br><br>"
                            + "<a href='MiPerfil.jsp'>Cancelar</a> &nbsp;<INPUT type='submit' value='Aceptar'><br><br>"
                            + "</form>");
            %>
            
            </center>
        </div>
        <footer>
            <img src="../Imagenes/eze.png" width="128" height="128" alt="EZ Software"/>
            <p>Desarrollado por EZ Software</p>            
        </footer>
    </body>
        <script type="text/javascript" src="MiPerfilJS.js"></script>
</html>