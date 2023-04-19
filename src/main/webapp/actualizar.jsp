<%@page import="java.util.ArrayList"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    String tarea = request.getParameter("tarea");
    ArrayList<String> lista = (ArrayList<String>) session.getAttribute("lista");
    lista.set(id, tarea);
    session.setAttribute("lista", lista);
    response.sendRedirect("index.jsp");
%>