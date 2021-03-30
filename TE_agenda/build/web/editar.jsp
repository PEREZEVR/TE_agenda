<%@page import="com.emergentes.modelo.Nota" %>
<% 
    Nota reg=(Nota)request.getAttribute("miobjper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>REGISTRO DE ACTIVIDAD</h1>
        <form action="MainServlet" method="POST">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="<%=reg.getId()%>" size="2" readonly></td>
                </tr>
                <tr>
                    <td>HORA</td>
                    <td><input type="text" name="hora" value="<%=reg.getHora()%>" size="2" ></td>
                </tr>
                <tr>
                    <td>ACTIVIDAD</td>
                    <td><input type="text" name="actividad" value="<%=reg.getActividad()%>" size="5" ></td>
                </tr>
                <tr>
                    <td>COMPLETADO</td>
                    <td><input type="text" name="completado" value="<%=reg.getCompletado()%>" size="2" ></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
    </body>
</html>
