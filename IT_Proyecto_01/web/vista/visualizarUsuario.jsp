<%-- 
    Document   : visualizarUsuario
    Created on : 09-may-2021, 10:12:19
    Author     : Laura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ACTIVIDADES DEPORTIVAS</title>
    </head>
    <body>
        <!-- Terminar tabla con operaciones CRUD de Usuario -->
        <!-- Buscar por dni y Editar -->
        <h1>MIS DATOS</h1>
        <table border="2">
            <tr align="center">
                <td>Username</td>
                <td>Password</td>
                <td>Nombre</td>
                <td>Apellidos</td>
                <td>Dni</td>
                <td>Email</td>
                <td>Telefono</td>
                <td>Administrador</td>                   
            </tr>
            <s:iterator value="lista">
                <tr align="center">
                    <td><s:property value="userName"></s:property></td>
                    <td><s:property value="password"></s:property></td>
                    <td><s:property value="nombre"></s:property></td>
                    <td><s:property value="apellidos"></s:property></td>
                    <td><s:property value="dni"></s:property></td>
                    <td><s:property value="email"></s:property></td>
                    <td><s:property value="tlf"></s:property></td>
                    <s:if test="admin != 0">
                        <td>Sí</td>                              
                    </s:if>
                    <s:else>
                        <td>No</td>
                    </s:else>                                       
                </tr>
            </s:iterator>
        </table>
        <br><a href="<s:url action="volverIndex"/>">Principal</a>

    </body>
</html>
