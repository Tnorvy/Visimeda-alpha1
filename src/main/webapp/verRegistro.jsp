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
        <title>Pacientes</title>
        <link href="styleVerPacientes.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header>
            <p class="marca"><br>Visimeda - Vital signs and medical data</p>
        </header>
        <div class="container">
            <h2>Registro exitoso</h2>
        </div>
        <%List<Pacientes> listaPacien = (List) request.getSession().getAttribute("listaPacien");
        int cont = 1;
        for(Pacientes usu : listaPacien){%>
            <div class="text">
                <p><b>Datos Registrados</b></p>
                <p><i>DNI:</i> <%=usu.getDni()%></p>
                <p><i>Nombre:</i> <%=usu.getNombre()%></p>
                <p><i>Resumen:</i> <%=usu.getResumen()%></p>
            </div>
            <% cont++;%>
        <% } %>
        <div class="container"><form><input type="button" value="Volver" class="b1" onclick="history.back()" /> </form></div>
    </body>
</html>
