<%-- 
    Document   : index2
    Created on : 06-04-2019, 0:46:59
    Author     : juanp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/validaciones.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Evaluacion 1</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <!--Fuente de google -->
        <link href="https://fonts.googleapis.com/css?family=Arvo" rel="stylesheet">
    </head>
    <body>
        <div id="wrapper">
            <div id="menu">
                <ul>
                    <li class="current_page_item"><span><a href="index.jsp">Home</a></span></li>
                    <li><a href="">Registro Pasajeros</a></li>			
                </ul>
            </div>
            <!-- Final del menu -->
            <div id="header">
                <div id="logo">
                    <h1><a href="#">Agencia Clandestina</a></h1>
                </div>
            </div>
            <div id="splash">&nbsp;</div>
            <!-- Final del  #header -->
            <div id="page">
                <div id="page-bgtop">
                    <div id="page-bgbtm">
                        <div id="content">
                            <div class="post">
                                <h1><a>Registro Pasajeros</a></h1>


                                <form>                         
                                    <table>
                                        <tr>
                                            <td>Rut : </td>
                                            <td><input type="text" id="txtRut" name="txtRut" placeholder="Ingrese RUT" maxlength="10" size="10" onchange="validaRut();"></td>
                                        </tr>
                                        <br>
                                        <tr>
                                            <td>Nombre : </td>
                                            <td><input type="text" id="txtNombre" name="txtNombre" placeholder="Ingrese Nombre" maxlength="50" size="50"> </td>
                                        </tr>
                                        <br>
                                        <tr>
                                            <td>Apellido Paterno : </td>
                                            <td><input type="text" id="txtApellidoPaterno" name="txtApellidoPaterno" placeholder="apellido paterno" maxlength="30" size="30"></td>
                                        </tr>
                                        <br>
                                        <tr>
                                            <td>Apellido Materno : </td>
                                            <td><input type="text" id="txtApellidoMaterno" name="txtApellidoMaterno" placeholder="apellido materno" maxlength="30" size="30"></td>
                                        </tr>
                                        <br>

                                        <tr>
                                            <td>Correo electrónico : </td>
                                            <td><input type="email" id="txtCorreo" name="txtCorreo" placeholder="Ingrese email" maxlength="50" size="50" onchange="caracteresCorreoValido();"></td>
                                        </tr>
                                        <br>
                                        <tr>
                                            <td>Edad : </td>
                                            <td><input type="text" id="txtEdad" name="txtEdad" placeholder="edad"  maxlength="3" size="3"></td>
                                        </tr>
                                        <br>
                                        <tr>
                                            <td>Sexo : </td>
                                            <td><input type="radio" id="rbtSexo" name="rbtSexo" value="masculino" checked>Masculino<input type="radio" id="rbtSexo" name="rbtSexo" value="Femenino">Femenino</td></td>
                                            <td></td>
                                        </tr>
                                        <br>
                                        <tr>
                                            <td>Telefono : </td>
                                            <td><input type="text" id="txtTelefono" name="txtTelefono" placeholder="Teléfono"  maxlength="9" size="9"></td>
                                        </tr>
                                        <tr>
                                            <td>Ciudad</td>
                                            <td><select name="cmbCiudad" id="cmbCiudad">
                                                    <option value="Seleccione">Seleccione</option>
                                                    <option value="Santiago">Santiago</option>
                                                    <option value="La Serena">La Serena</option>
                                                    <option value="Puerto Montt">Puerto Montt</option>
                                                    <option value="Valdivia">Valdivia</option>
                                                    <option value="Pucon">Pucon</option>
                                                </select></td>
                                        </tr>
                                        <br>
                                        <tr>
                                            <td>Estado Civíl</td>
                                            <td><select name="cmbEstadoCivil" id="cmbEstadoCivil">
                                                    <option value="Seleccione">Seleccione</option>
                                                    <option value="Solero">Solero(a)</option>
                                                    <option value="Casado">Casado(a)</option>
                                                    <option value="Viudo">Viudo(a)</option>

                                                </select></td>
                                        </tr>
                                        <br>
                                        <tr>
                                            <td>Acepto los términos y condiciones</td>
                                            <td><input type="checkbox" name="chkTerms" id="chkTerms"></td>
                                        </tr>
                                        <br>
                                        <tr>
                                            <td></td>
                                            <td><input type="button" onclick="validar();" value="Grabar"></td>                  
                                        </tr>
                                    </table>
                                </form>
                            </div>
                            <div class="post">
                                <h2 class="title"><a href="#">Viaje a Paris</a></h2>
                                <div class="entry">
                                    <p><img src="images/paris.jpg" width="143" height="143" alt="" class="alignleft border" />París (en francés Paris, pronunciado  [paʁi] (?·i)) es la capital de Francia y su ciudad más poblada. Capital de la región de Isla de Francia (o "Región Parisina"), es constituida en la única comuna unidepartamental del país. Está situada a ambos márgenes de un largo meandro del río Sena, en el centro de la cuenca parisina, entre la confluencia del río Marne y el Sena, aguas arriba, y el Oise y el Sena, aguas abajo.</p>
                                </div>

                            </div>
                            <div class="post">
                                <h2 class="title"><a href="#">Viaje a Londres</a></h2>
                                <div class="entry">
                                    <p><img src="images/londres.jpg" width="143" height="143" alt="" class="alignleft border" />Londres (London en inglés,  ˈlʌndən (?·i)) es la capital y mayor ciudad de Inglaterra y del Reino Unido.2​3​ Situada a orillas del río Támesis, Londres es un importante asentamiento humano desde que fue fundada por los romanos con el nombre de Londinium hace casi dos milenios.4​ El núcleo antiguo de la urbe, la City de Londres, conserva básicamente su perímetro medieval de una milla cuadrada. Desde el siglo XIX el nombre «Londres» también hace referencia a toda la metrópolis desarrollada alrededor de este núcleo.5​ El grueso de esta conurbación forma la región de Londres y el área administrativa del Gran Londres,6​ gobernado por el alcalde y la asamblea de Londres</p>
                                </div>

                            </div>
                            <div style="clear: both;">&nbsp;</div>
                        </div>

                        <div id="sidebar">
                            <ul>
                                <li>
                                    <h2>Aliquam tempus</h2>
                                    <p>Mauris vitae nisl nec metus placerat perdiet est. Phasellus dapibus semper consectetuer hendrerit.</p>
                                </li>
                                <li>
                                    <h2>Categorias</h2>
                                    <ul>
                                        <li><a href="#">Aliquam libero</a></li>
                                        <li><a href="#">Consectetuer adipiscing elit</a></li>
                                        <li><a href="#">Metus aliquam pellentesque</a></li>
                                        <li><a href="#">Suspendisse iaculis mauris</a></li>
                                        <li><a href="#">Urnanet non molestie semper</a></li>
                                        <li><a href="#">Proin gravida orci porttitor</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <h2>Blog</h2>
                                    <ul>
                                        <li><a href="#">Aliquam libero</a></li>
                                        <li><a href="#">Consectetuer adipiscing elit</a></li>
                                        <li><a href="#">Metus aliquam pellentesque</a></li>
                                        <li><a href="#">Suspendisse iaculis mauris</a></li>
                                        <li><a href="#">Urnanet non molestie semper</a></li>
                                        <li><a href="#">Proin gravida orci porttitor</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <h2>Archivos</h2>
                                    <ul>
                                        <li><a href="#">Aliquam libero</a></li>
                                        <li><a href="#">Consectetuer adipiscing elit</a></li>
                                        <li><a href="#">Metus aliquam pellentesque</a></li>
                                        <li><a href="#">Suspendisse iaculis mauris</a></li>
                                        <li><a href="#">Urnanet non molestie semper</a></li>
                                        <li><a href="#">Proin gravida orci porttitor</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <!-- final #sidebar -->
                        <div style="clear: both;">&nbsp;</div>
                    </div>
                </div>
            </div>
            <!-- final #page -->
        </div>
        <div id="footer-wrapper">
            <div id="three-columns">
                <div id="column1">
                    <h2>Consectetuer</h2>
                    <ul>
                        <li><a href="#">Aliquam libero</a></li>
                        <li><a href="#">Consectetuer adipiscing elit</a></li>
                        <li><a href="#">Metus aliquam pellentesque</a></li>
                        <li><a href="#">Suspendisse iaculis mauris</a></li>
                        <li><a href="#">Urnanet non molestie semper</a></li>
                        <li><a href="#">Proin gravida orci porttitor</a></li>
                    </ul>
                </div>
                <div id="column2">
                    <h2>Suspendisse</h2>
                    <ul>
                        <li><a href="#">Aliquam libero</a></li>
                        <li><a href="#">Consectetuer adipiscing elit</a></li>
                        <li><a href="#">Metus aliquam pellentesque</a></li>
                        <li><a href="#">Suspendisse iaculis mauris</a></li>
                        <li><a href="#">Urnanet non molestie semper</a></li>
                        <li><a href="#">Proin gravida orci porttitor</a></li>
                    </ul>
                </div>
                <div id="column3">
                    <h2>Pellentesque</h2>
                    <ul>
                        <li><a href="#">Aliquam libero</a></li>
                        <li><a href="#">Consectetuer adipiscing elit</a></li>
                        <li><a href="#">Metus aliquam pellentesque</a></li>
                        <li><a href="#">Suspendisse iaculis mauris</a></li>
                        <li><a href="#">Urnanet non molestie semper</a></li>
                        <li><a href="#">Proin gravida orci porttitor</a></li>
                    </ul>
                </div>
            </div>
            <div id="footer">
                <p>Diseñado Para Mario</a>.</p>
            </div>
            <!-- final del  #footer -->
        </div>

</html>
