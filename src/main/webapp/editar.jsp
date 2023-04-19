<%@page import="java.util.ArrayList"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    ArrayList<String> lista = (ArrayList<String>) session.getAttribute("lista");
    String tarea = lista.get(id);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar tarea</title>
    </head>
    <body>
        <h1><center>Editar tarea</center></h1>
        <form action="actualizar.jsp" method="post">
            <input type="hidden" name="id" value="<%= id %>">
            Tarea: <input type="text" name="tarea" value="<%= tarea %>"><br><br>
            <input type="submit" value="Guardar">
        </form>
    </body>
</html>


