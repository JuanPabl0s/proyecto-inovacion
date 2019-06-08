<%-- 
    Document   : respuesta
    Created on : 06-04-2019, 10:58:46
    Author     : juanp
--%>
<%
    String rut = (String) request.getSession().getAttribute("rut");
    String nombre = (String) request.getSession().getAttribute("nombre");
    String apellidoPaterno = (String) request.getSession().getAttribute("apellidoPaterno");
    String apellidoMaterno = (String) request.getSession().getAttribute("apellidoMaterno");
    String edad = (String) request.getSession().getAttribute("edad");
    String sexo = (String) request.getSession().getAttribute("sexo");
    String ciudad = (String) request.getSession().getAttribute("ciudad");
    String telefono = (String) request.getSession().getAttribute("telefono");
    String estadoCivil = (String) request.getSession().getAttribute("estadoCivil");
    String email = (String) request.getSession().getAttribute("email");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>Evaluacion 1</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <!--Fuente de google -->
        <link href="https://fonts.googleapis.com/css?family=Arvo" rel="stylesheet">
    </head>
    <body>
        <div id="wrapper">
            <div id="menu">

            </div>
            <!-- Final del menu -->
            <div id="header">
                <div id="logo">
                    <h1><a href="#">Agencia Clandestina</a></h1>
                </div>
            </div>
            <div id="splash">&nbsp;</div>

            <h1><a>Rut  : <%=rut%></a></h1>
            <h1><a>Nombre : <%=nombre%></a></h1>
            <h1><a>Apellido Paterno : <%=apellidoPaterno%></a></h1>
            <h1><a>Apellido Materno : <%=apellidoMaterno%></a></h1>
            <h1><a>Edad : <%=edad%></a></h1>
            <h1><a>Sexo  : <%=sexo%></a></h1>
            <h1><a>Correo  : <%=email%></a></h1>
            <h1><a>Ciudad : <%=ciudad%></a></h1>
            <h1><a>Teléfono : <%=telefono%></a></h1>
            <h1><a>Estado Civil : <%=estadoCivil%></a></h1>

        </div>


</html>
