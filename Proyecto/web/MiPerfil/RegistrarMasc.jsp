<%-- 
    Document   : RegistrarMasc
    Created on : 20/11/2018, 01:52:30 PM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                            <h2>Editar Info</h2>
                    <form method="post" action="../EditarUser" name="FormEditaPerfil">
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
                        <INPUT type="submit" value="Aceptar"><br><br>
                    </form>
    </body>
</html>
