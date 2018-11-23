<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession(false);
    String Rol = (String)sesion.getAttribute("Rol");
    String id = (String)sesion.getAttribute("idUsr");
    String cuenta = (String)sesion.getAttribute("CuentaMasc");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrate</title>
    </head>
    <body>
        <h1><%=Rol%></h1>
        <h1><%=id%></h1>
        <h1><%=cuenta%></h1>
    </body>
</html>
