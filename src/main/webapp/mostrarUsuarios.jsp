<%-- 
    Document   : mostrarUsuarios
    Created on : 25 feb. 2023, 23:24:22
    Author     : gabma
--%>

<%@page import="com.mycompany.web1.Pacientes.Pacientes"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios</title>
    </head>
    <body>
        <h1>Lista de usuarios registrados</h1>
        <%
            List<Pacientes> listaPacien = (List) request.getSession().getAttribute("listaUsuarios");
            int cont = 1;
            for(Pacientes usu : listaPacien){
        %>
                <p><b>Usuario #<%=cont%>:</b></p>
                <p>DNI: <%=usu.getDni()%></p>
                <p>Nombre: <%=usu.getNombre()%></p>
                <p>Telefono: <%=usu.getResumen()%></p>
                <p>=================================================<br></p>
                <% cont++;%>
        <% } %>
    </body>
</html>
