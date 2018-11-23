<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import='java.sql.*' %>
        <%
          String a = request.getParameter("id");
          int id = Integer.parseInt(a);
          String idus = request.getParameter("usua");
          String nombre = request.getParameter("nombre");
          String app = request.getParameter("appat");
          String apm = request.getParameter("apmat");
          
          String user = "root";
          String pasword = "flordemaria117";
          String host = "localhost";
          String db = "dbAnicare1";
          String url = "jdbc:mysql://"+host+"/"+db;
          Connection conn = null;
          Statement stmt = null;
          
          
          try {
              Class.forName("com.mysql.jdbc.Driver").newInstance();
              conn = DriverManager.getConnection(url, user, pasword);
              stmt = conn.createStatement();
          } catch(SQLException error){
              out.print(error.toString());
          }
          
          try{
              stmt.executeQuery("update tbUsuarios set  usrUser='"+idus+"',usrNombre='"+nombre+"', usrApPat='"+app+"', usrApMat='"+apm+"' where idUsr='"+id+"'");
              out.print("<script>alert('Cambios realizados con exito')</script>");
              
          } catch(Exception error){
              out.print(error.toString());
          }
          %>
    </body>
</html>
