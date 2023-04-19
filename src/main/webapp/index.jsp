<%@page import="java.util.ArrayList"%>
<%
    if (session.getAttribute("lista") == null) {
        ArrayList<String> lista = new ArrayList<String>();
        session.setAttribute("lista", lista);
    }
    ArrayList<String> lista = (ArrayList<String>) session.getAttribute("lista");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestor de Tareas</title>
        <meta charset="UTF-8">
    </head>
    <body>
        <h1><center>Gestor de Tareas</center></h1>
        <h3><center>Nombre: Limber Cumara Mamani</center></h3>
        <a href="nuevo.jsp">Nuevo</a>
        <h4></h4>
        <% if (lista != null && lista.size() > 0) { %>
        <table border="1">
            <tr>
                <td>Id</td>
                <td>Tarea</td>
                <td>Completado</td>
                <td></td>
            </tr>
            <% for (int i = 0; i < lista.size(); i++) { %>
            <tr>
                <td><%= (i + 1) %></td>
                <td><%= lista.get(i) %></td>
                <td><input type="checkbox" name="check"></td>
                <td>
                    <div>
                    <form action="editar.jsp" method="post" style="display: inline-block;">
                    <input type="hidden" name="id" value="<%= i %>">
                    <button type="submit">Editar</button>
                    </form>
                    <form action="eliminar.jsp" method="post" style="display: inline-block;">
                    <input type="hidden" name="id" value="<%= i %>">
                    <button type="submit">Eliminar</button>
                    </form>
                    </div>
                </td>
            </tr>
            <% } %>
        </table>
        <% } else { %>
        <p>No hay tareas agregadas</p>
        <% } %>
    </body>
</html>

