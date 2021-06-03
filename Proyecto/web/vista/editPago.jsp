<%-- 
    Document   : editPago
    Created on : 03-jun-2021, 11:57:40
    Author     : Laura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Editar Usuario</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="<%=request.getContextPath()%>/vista/assets/css/main.css" type="text/css"/>
        <link rel="shortcut icon" href="<%=request.getContextPath()%>/vista/images/favicon.ico" /> 
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
                    <h1>Edici&oacute;n de Pago</h1>
                    <s:form action="editPagoF">
                        <s:iterator value="lista">   
                            <s:textfield name="metodoPago" label="MÉTODO PAGO" value="%{metodoPago}" />
                            <s:textfield name="importe" label="IMPORTE" value="%{importe}" />
                            <s:if test="pagado != 0">
                                    <td><s:textfield name="pagado" label="PAGADO (Si/No)" value="Sí" /></td>                              
                                </s:if>
                                <s:else>
                                    <s:textfield name="pagadoS" label="PAGADO (Si/No)" value="No" />
                                </s:else>                               
                            <s:textfield name="fecha" label="FECHA" value="%{fecha}" />              
                            <s:submit value="Guardar" />
                        </s:iterator>
                    </s:form>
                    <%@include file="includes/volver_index.jsp" %>
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