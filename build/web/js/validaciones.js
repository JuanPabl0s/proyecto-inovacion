function caracteresCorreoValido(email, div) {

    var email = $('#txtCorreo').val().trim();
    console.log(email);

    var caract = new RegExp(/^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/);

    if (caract.test(email) == false) {
        $(div).hide().removeClass('hide').slideDown('fast');
        alert("Correo inválido, debe ser ejemplo@correo.cl");

        return false;
    } else {
        $(div).hide().addClass('hide').slideDown('slow');

        return true;
    }
}

function validaRut() {

    var rut = $('#txtRut').val().trim();
    var suma = 0;
    var arrRut = rut.split("-");
    var rutSolo = arrRut[0];
    var verif = arrRut[1];
    var continuar = true;
    for (i = 2; continuar; i++) {
        suma += (rutSolo % 10) * i;
        rutSolo = parseInt((rutSolo / 10));
        i = (i == 7) ? 1 : i;
        continuar = (rutSolo == 0) ? false : true;
    }
    resto = suma % 11;
    dv = 11 - resto;
    if (dv == 10) {
        if (verif.toUpperCase() == 'K')
            return true;
    } else if (dv == 11 && verif == 0)
        return true;
    else if (dv == verif)
        return true;
    else
        alert("Formato Rut Incorrecto, Ingresar en formato formato 11111111-1 y válido");
    return false;

}

function validar() {

    var nombre = $('#txtNombre').val().trim();
    var apellidoPaterno = $('#txtApellidoPaterno').val().trim();
    var apellidoMaterno = $('#txtApellidoMaterno').val().trim();
    var edad = $('#txtEdad').val().trim();
    var sexo = $('#rbtSexo').val();
    var terminos = $("#chkTerms").is(":checked");
    var ciudad = $('#cmbCiudad').val();
    var rut = $('#txtRut').val().trim();
    var email = $('#txtCorreo').val().trim();
    var estadoCivil = $('#cmbEstadoCivil').val();
    var telefono = $('#txtTelefono').val();


    if (rut == "")
    {
        alert("Debe ingresar el rut ");
        return false;
    }


    if (nombre == "") {
        alert("Debe ingresar nombre");
        return false;
    }
    if (nombre.length > 30) {
        alert("Nombre no puede tener un largo superior a 50");
        return false;
    }
    if (apellidoPaterno == "") {
        alert("Debe ingresar apellido Paterno");
        return false;
    }

    if (apellidoPaterno.length > 30) {
        alert("Nombre no puede tener un largo superior a 30");
        return false;
    }
    if (apellidoMaterno == "") {
        alert("Debe ingresar apellido Materno");
        return false;
    }

    if (apellidoMaterno.length > 30) {
        alert("Nombre no puede tener un largo superior a 30");
        return false;
    }

    if (email == "")
    {
        alert("Debe ingresar un correo electronico");
        return false;
    }

    if (edad == "")
    {
        alert("Debe ingresar edad");
        return false;
    }

    if (!$.isNumeric(edad))
    {
        alert("Edad debe ser Numerico");
        return false;
    }


    if (edad < 1) {
        alert("Edad no puede ser menor que 1 ");
        return false;
    }

    if (telefono == "")
    {
        alert("Debe ingresar un telefono");
        return false;
    }
    if (telefono < 9) {
        alert("Teléfono debe tener 9 digitos ");
        return false;
    }
    if (!$.isNumeric(telefono))
    {
        alert("Edad debe ser Numerico");
        return false;
    }

    if (ciudad == "Seleccione")
    {
        alert("Debe seleccionar una ciudad");
        return false;
    }

    if (estadoCivil == "Seleccione")
    {
        alert("Debe seleccionar esrtdo civil");
        return false;
    }


    if (!terminos) {
        alert("Debe aceptar las condiciones");
        event.preventDefault();
        return false;
    }



    var data = "rut=" + rut +
            "&nombre=" + nombre +
            "&apellidoPaterno=" + apellidoPaterno +
            "&apellidoMaterno=" + apellidoMaterno +
            "&edad=" + edad +
            "&sexo=" + sexo +
            "&email=" + email +
            "&terminos=" + terminos +
            "&telefono=" + telefono +
            "&ciudad=" + ciudad +
            "&estadoCivil=" + estadoCivil
    $.ajax({
        type: "POST",
        url: "persona",
        data: data,

        success: function (resultado) {

            document.location.href = "respuesta.jsp";

        }
    });

}
