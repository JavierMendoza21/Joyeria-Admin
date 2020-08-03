//window.addEventListener("load", comprobar());

function inicio() {
    //document.getElementById("enviar").addEventListener("click", comprobar);
}

function comprobar() {
    //document.getElementById("contenedor_msj").classList.add("d-none");
    //alert('Entro a la funcion');
    console.log("Entro a la funcion");
    var campo_categoria = document.getElementById("categoria").value;

    var validador_nombre = document.getElementById("msjValidCategoria");

    console.log("Va a validar");
    /*************Validacion del campo nombre*****************************/
    if (campo_categoria == '') {
        document.getElementById("categoria").classList.add("is-invalid");
        document.getElementById("categoria").classList.remove("is-valid");

        validador_nombre.classList.add("invalid-feedback");
        validador_nombre.classList.remove("valid-feedback");
        validador_nombre.innerHTML = "Agrege valor valido.";
        return false;
    } else {
        document.getElementById("nombre").classList.add("is-valid");
        document.getElementById("nombre").classList.remove("is-invalid");

        validador_nombre.classList.add("valid-feedback");
        validador_nombre.classList.remove("invalid-feedback");
        validador_nombre.innerHTML = "Prefecto!";
    }

    return true;
}