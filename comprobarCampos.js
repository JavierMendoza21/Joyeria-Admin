function comprobar() {
    var btn_nombre = document.getElementById("nombre").value;
    var btn_apellidoP = document.getElementById("apellidoP").value;
    var btn_apellidoM = document.getElementById("apellidoM").value;
    var btn_numeroC = document.getElementById("numeroC").value;
    var btn_Email = document.getElementById("email").value;
    var btn_user = document.getElementById("user").value;
    var btn_pass = document.getElementById("pass").value;
    var btn_targeta = document.getElementById("targeta").value;


    var validador_nombre = document.getElementById("msjValidname");
    var validador_apellidoP = document.getElementById("msjValidapellidoP");
    var validador_apellidoM = document.getElementById("msjValidapellidoM");
    var validador_numeroC = document.getElementById("msjValidnumC");
    var validador_email = document.getElementById("msjValidEmail");
    var validador_user = document.getElementById("msjValidUsuario");
    var validador_pass = document.getElementById("msjValidContraseña");
    var validador_pass = document.getElementById("msjValidTargeta");


    /*************Validacion del campo nombre*****************************/
    if (btn_nombre.length < '5' || btn_nombre == '') {
        document.getElementById("nombre").classList.add("is-invalid");
        document.getElementById("nombre").classList.remove("is-valid");

        validador_nombre.classList.add("invalid-feedback");
        validador_nombre.classList.remove("valid-feedback");
        validador_nombre.innerHTML = "Agrege un nombre valido";
        return false;
    } else {

        document.getElementById("nombre").classList.add("is-valid");
        document.getElementById("nombre").classList.remove("is-invalid");

        validador_nombre.classList.add("valid-feedback");
        validador_nombre.classList.remove("invalid-feedback");
        validador_nombre.innerHTML = "Prefecto!";
    }
    /*************Validacion del campo apellido paterno*****************************/
    if (btn_apellidoP < 3 || btn_apellidoP == '') {
        document.getElementById("apellidoP").classList.add("is-invalid");
        document.getElementById("apellidoP").classList.remove("is-valid");

        validador_apellidoP.classList.add("invalid-feedback");
        validador_apellidoP.classList.remove("valid-feedback");
        validador_apellidoP.innerHTML = "Agrege un apellido valido";
        return false;
    } else {
        document.getElementById("apellidoP").classList.add("is-valid");
        document.getElementById("apellidoP").classList.remove("is-invalid");

        validador_apellidoP.classList.add("valid-feedback");
        validador_apellidoP.classList.remove("invalid-feedback");
        validador_apellidoP.innerHTML = "Perfecto";
    }
    /*************Validacion del campo apellido materno*****************************/
    if (btn_apellidoM < 3 || btn_apellidoM == '') {
        document.getElementById("apellidoM").classList.add("is-invalid");
        document.getElementById("apellidoM").classList.remove("is-valid");

        validador_apellidoM.classList.add("invalid-feedback");
        validador_apellidoM.classList.remove("valid-feedback");
        validador_apellidoM.innerHTML = "Agrege un apellido valido";
        return false;
    } else {
        document.getElementById("apellidoM").classList.add("is-valid");
        document.getElementById("apellidoM").classList.remove("is-invalid");

        validador_apellidoM.classList.add("valid-feedback");
        validador_apellidoM.classList.remove("invalid-feedback");
        validador_apellidoM.innerHTML = "Perfecto";
    }
    /*************Validacion del campo numero de calular*****************************/
    if (btn_numeroC < 8 || btn_numeroC == '') {
        document.getElementById("numeroC").classList.add("is-invalid");
        document.getElementById("numeroC").classList.remove("is-valid");

        validador_numeroC.classList.add("invalid-feedback");
        validador_numeroC.classList.remove("valid-feedback");
        validador_numeroC.innerHTML = "Agrege un numero valido";
        return false;
    } else {
        document.getElementById("numeroC").classList.add("is-valid");
        document.getElementById("numeroC").classList.remove("is-invalid");

        validador_numeroC.classList.add("valid-feedback");
        validador_numeroC.classList.remove("invalid-feedback");
        validador_numeroC.innerHTML = "Perfecto";
    }
    /*************Validacion del campo email*****************************/
    if (btn_Email.length < 5 || btn_Email == '' || btn_Email.indexOf('@') == -1 ||
        btn_Email.indexOf('.') == -1) {
        document.getElementById("email").classList.add("is-invalid");
        document.getElementById("email").classList.remove("is-valid");

        validador_email.classList.add("invalid-feedback");
        validador_email.classList.remove("valid-feedback");
        validador_email.innerHTML = "Agrege un correo valido";
        return false;
    } else {
        document.getElementById("email").classList.add("is-valid");
        document.getElementById("email").classList.remove("is-invalid");

        validador_email.classList.add("valid-feedback");
        validador_email.classList.remove("invalid-feedback");
        validador_email.innerHTML = "Perfecto";
    }
    /*************Validacion del campo usuario*****************************/
    if (btn_user.length < 5 || btn_user == '') {
        document.getElementById("user").classList.add("is-invalid");
        document.getElementById("user").classList.remove("is-valid");

        validador_user.classList.add("invalid-feedback");
        validador_user.classList.remove("valid-feedback");
        validador_user.innerHTML = "Agrege un usuario valido valido";
        return false;

    } else {
        document.getElementById("user").classList.add("is-valid");
        document.getElementById("user").classList.remove("is-invalid");

        validador_user.classList.add("valid-feedback");
        validador_user.classList.remove("invalid-feedback");
        validador_user.innerHTML = "Perfecto";
    }
    /*************Validacion del campo contraseña*****************************/
    if (btn_pass == 0) {
        document.getElementById("pass").classList.add("is-invalid");
        document.getElementById("pass").classList.remove("is-valid");

        validador_pass.classList.add("invalid-feedback");
        validador_pass.classList.remove("valid-feedback");
        validador_pass.innerHTML = "Ingrese una contraseña mas fuerte";
        return false;

    } else {
        document.getElementById("pass").classList.add("is-valid");
        document.getElementById("pass").classList.remove("is-invalid");

        validador_pass.classList.add("valid-feedback");
        validador_pass.classList.remove("invalid-feedback");
        validador_pass.innerHTML = "Perfecto";
    }
    /*************Validacion del campo tageta*****************************/
    if (btn_targeta.length < 16) {
        document.getElementById("targeta").classList.add("is-invalid");
        document.getElementById("targeta").classList.remove("is-valid");

        validador_pass.classList.add("invalid-feedback");
        validador_pass.classList.remove("valid-feedback");
        validador_pass.innerHTML = "Ingrese una targeta valida";
        return false;

    } else {
        document.getElementById("targeta").classList.add("is-valid");
        document.getElementById("targeta").classList.remove("is-invalid");

        validador_pass.classList.add("valid-feedback");
        validador_pass.classList.remove("invalid-feedback");
        validador_pass.innerHTML = "Perfecto";
    }
    /*************Validacion del seleccion de categorias**********************/



    return true;
}

console.log('evento');
var creditcard = document.getElementById('targeta');

function onkeyPress(event) {

    creditcard.value = creditcard.value.replace(/[a-zA-Z]/g, '');

    //validamos si es american express para esto quitamos todos los espacios en blaco y luego veriricamos que tenga 4, 6 y 5 digitos.
    if (creditcard.value.replace(/ /g, '').match(/\b(\d{4})(\d{6})(\d{5})\b/))
        creditcard.value = creditcard.value
        .replace(/\W/gi, '') //quitamos todos los espacios demas
        .replace(/\b(\d{4})(\d{6})(\d{5})\b/, '$1 $2 $3') //si cumple el formato añadimos 3,6 y 5 digitos
        .trim();
    else //si no es american express entonces es una tarjeta visa o master card
        creditcard.value = creditcard.value
        .replace(/\W/gi, '')
        .replace(/(.{4})/g, '$1 ')
        .trim()
}

creditcard.addEventListener('keypress', onkeyPress);
creditcard.addEventListener('keydown', onkeyPress);
creditcard.addEventListener('keyup', onkeyPress);