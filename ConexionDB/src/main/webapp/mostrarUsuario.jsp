<%-- 
    Document   : mostrarUsuario
    Created on : 20/01/2024, 01:09:22 AM
    Author     : Adrian Caballero
--%>

<%@page import="entity.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            List<Usuario> listaUsuario = (List) request.getSession().getAttribute("listaUsuarios");
            for (Usuario listaUsuarios : listaUsuario) {
        %>
        <p>Usuario:</p><%= listaUsuarios.getUsuario() %>
        <p>Contraseña:</p><%= listaUsuarios.getContrasena()%>
        <%
            }
        %>
    </body>
</html>
