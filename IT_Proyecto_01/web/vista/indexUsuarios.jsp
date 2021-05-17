<%-- 
    Document   : indexUsuarios
    Created on : 16-may-2021, 10:45:22
    Author     : Laura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <title>ACTIVIDADES DEPORTIVAS</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />        
        <link rel="stylesheet" href="<%=request.getContextPath()%>/vista/assets/css/main.css" type="text/css"/>
        <link rel="shortcut icon" href="<%=request.getContextPath()%>/vista/images/icono.ico" />      
    </head>  
    <body>
<<<<<<< Updated upstream
        <h1>Visualizar Usuarios</h1>
=======

        <!-- Wrapper -->
        <div id="wrapper">

            <!-- Main -->
            <div id="main">
                <div class="inner">

                    <!-- Header -->
                    <%@include file="includes/include_header.jsp" %>                  

                    <!-- Section --> 
        <h1>Listado de Usuarios</h1>
>>>>>>> Stashed changes
        <!-- Terminar tabla con operaciones CRUD de Usuario -->
        <!-- Insertar, Borrar, Editar y Buscar-->

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
<<<<<<< Updated upstream
            </s:iterator>            
        </table>
        <br><a href="<s:url action="volverIndex"/>">Principal</a>
=======
            </s:iterator>
                    </table>
                </div>
            </div>

            <!-- Sidebar -->
            <div id="sidebar">
                <div class="inner">

                    <!-- Search -->
                    <%@include file="includes/include_buscar.jsp" %>

                    <!-- Menu -->
                    <%@include file="includes/include_menu.jsp" %>

                    <!-- Section -->
                    <%@include file="includes/include_menu_section.jsp" %>


                    <!-- Footer -->
                    <%@include file="includes/include_footer.jsp" %>

                </div>
            </div>

        </div>

        <!-- Scripts -->
        <%@include file="includes/include_scripts.jsp" %>


>>>>>>> Stashed changes
    </body>
</html>