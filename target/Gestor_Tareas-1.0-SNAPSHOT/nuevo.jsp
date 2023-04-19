<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Nueva Tarea</title>
    </head>
    <body>
        <h1><center>Agregar Nueva Tarea</center></h1>
        <form action="AgregarNuevo" method="post">
            <label>Tarea</label>
            <input type="text" name="tarea">
            <input type="submit" value="Enviar">
        </form>
        <a href="index.jsp">Volver</a>
    </body>
</html>
