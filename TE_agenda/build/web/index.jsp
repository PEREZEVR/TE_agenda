<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Nota"%>
<%
    if(session.getAttribute("agendaper")==null){
        ArrayList<Nota> la=new ArrayList<Nota>();
        session.setAttribute("agendaper", la);
    }
    ArrayList<Nota> lista=(ArrayList<Nota>) session.getAttribute("agendaper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">AGENDA PERSONAL</h1>
        <a href="MainServlet?op=nuevo">NUEVO REGISTRO</a>
        <table border="1" align="center">
            <tr>
                <th>ID</th>
                <th>HORA</th>
                <th>ACTIVIDAD</th>
                <th>COMPLETADO</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if (lista != null){
                    for(Nota item : lista){
                        
            %>
            <tr>
                <td><%=item.getId()%></td>
                <td><%=item.getHora()%></td>
                <td><%=item.getActividad()%></td>
                <td><%=item.getCompletado()%></td>
                <td><a href="MainServlet?op=editar&id=<%=item.getId()%>">EDITAR</a></td>
                <td><a href="MainServlet?op=eliminar&id=<%=item.getId()%>"
                       onclick="return(confirm('ESTA SEGURO DE ELIMINAR'))">ELIMINAR</a></td>
            </tr>
            <%     
                    }
                }
            %>
        </table>
    </body>
</html>
