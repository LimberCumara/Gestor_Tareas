<%@page import="java.util.ArrayList"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    ArrayList<String> lista = (ArrayList<String>) session.getAttribute("lista");
    lista.remove(id);
    session.setAttribute("lista", lista);
    response.sendRedirect("index.jsp");
%>
