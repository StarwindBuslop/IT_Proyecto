<%-- 
    Document   : login
    Created on : 16-may-2021, 10:45:07
    Author     : Laura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Alta Sede</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />        
        <link rel="stylesheet" href="<%=request.getContextPath()%>/vista/assets/css/main.css" type="text/css"/>
        <link rel="shortcut icon" href="<%=request.getContextPath()%>/vista/images/icono.ico" />      
    </head>  
    <body>

        <!-- Wrapper -->
        <div id="wrapper">

            <!-- Main -->
            <div id="main">
                <div class="inner">

                    <!-- Header -->
                    <%@include file="includes/include_header.jsp" %>                  

                    <!-- Section -->
                    <h1>Alta Sede</h1>
                    <s:form action="altaSede">
                        <s:textfield name="nombre" label="NOMBRE" />
                        <s:textfield name="direccion" label="DIRECCIÓN" />
                        <s:textfield name="tlf" label="TELÉFONO" />
                        <s:textfield name="cp" label="CP" />
                        <s:textfield name="email" label="EMAIL" />
                        <s:textfield name="provincia" label="PROVINCIA" />
                        
                        <s:submit value="Guardar"></s:submit>
                    </s:form>

                </div>
            </div>

            <!-- Sidebar -->
            <div id="sidebar">
                <div class="inner">

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


    </body>
</html>

