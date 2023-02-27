<%-- 
    Document   : index
    Created on : 24 feb. 2023, 23:13:26
    Author     : gabma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
        <link href="styleindex.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header>
            <p class="marca"><br>Visimeda - Vital signs and medical data</p>
        </header>
    
        <div class="container">
            <h1>Signos vitales</h1>
        </div>
    
        <form action="SvUsuario" method="POST">
            <div class="input-container" name="nombre">
                <input type="text" name="nombre" id="input" required="">
                <label for="input" class="label">Nombre del paciente</label>
                <div class="underline"></div>
            </div>
    
            <div class="input-container">
                <input type="text" name="dni" id="input" required="">
                <label for="input" class="label">Número de identificación</label>
                <div class="underline"></div>
            </div>
    
            <div class="container">
                <textarea name="resumen" for="container" class="paragraph" cols="70" rows="7" placeholder="Resumen de la toma" required></textarea>
            </div>
        </form>
    
        <div class="container">
            <form action="SvUsuario" method="post"><button type="submit" class="b1"> Enviar </button></form>
            <form action="SvUsuario" method="get"><button type="submit" class="b2"> Mostrar </button></form>
        </div>
    
    </body>
</html>
