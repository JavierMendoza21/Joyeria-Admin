function comprobar() {
    var campo_descripcion = document.getElementById("descripcion").value;
    var campo_costo_compra = document.getElementById("costoCompra").value;
    var campo_costo_venta = document.getElementById("costoVenta").value;
    var campo_categoria = document.getElementById("categoria").value;
    var campo_stock = document.getElementById("stock").value;


    var validador_descripcion = document.getElementById("msjValiddescripcion");
    var validador_costoC = document.getElementById("msjValidCostoCompra");
    var validador_costoV = document.getElementById("msjValidCostoVenta");
    var validador_categoria = document.getElementById("msjValidCategoria");
    var validador_stock = document.getElementById("msjValidstock");


    /*************Validacion del campo descripcion*****************************/
    if (campo_descripcion == '') {
        document.getElementById("descripcion").classList.add("is-invalid");
        document.getElementById("descripcion").classList.remove("is-valid");
        validador_descripcion.classList.add("invalid-feedback");
        validador_descripcion.classList.remove("valid-feedback");
        validador_descripcion.innerHTML = "Agrege una descripcion valida";
        return false;
    } else {
        document.getElementById("descripcion").classList.add("is-valid");
        document.getElementById("descripcion").classList.remove("is-invalid");
        validador_descripcion.classList.add("valid-feedback");
        validador_descripcion.classList.remove("invalid-feedback");
        validador_descripcion.innerHTML = "Prefecto!";
    }
    /*************Validacion del campo costo compra*****************************/
    if (campo_costo_compra == '' || campo_costo_compra <= 0 || isNaN(parseInt(campo_costo_compra))) {
        document.getElementById("costoCompra").classList.add("is-invalid");
        document.getElementById("costoCompra").classList.remove("is-valid");
        validador_costoC.classList.add("invalid-feedback");
        validador_costoC.classList.remove("valid-feedback");
        validador_costoC.innerHTML = "Agrege una cantidad valida al campo, mayor a cero. ";
        return false;
    } else {
        document.getElementById("costoCompra").classList.add("is-valid");
        document.getElementById("costoCompra").classList.remove("is-invalid");
        validador_costoC.classList.add("valid-feedback");
        validador_costoC.classList.remove("invalid-feedback");
        validador_costoC.innerHTML = "Prefecto!";
    }
    /*************Validacion del campo costo venta*****************************/
    if (campo_costo_venta == '' || campo_costo_venta < 0 || isNaN(parseInt(campo_costo_venta))) {

        document.getElementById("costoVenta").classList.add("is-invalid");
        document.getElementById("costoVenta").classList.remove("is-valid");
        validador_costoV.classList.add("invalid-feedback");
        validador_costoV.classList.remove("valid-feedback");
        validador_costoV.innerHTML = "Agrege una cantidad valida al campo, mayor a cero y al precio de compra. ";
        return false;
    } else {
        document.getElementById("costoVenta").classList.add("is-valid");
        document.getElementById("costoVenta").classList.remove("is-invalid");
        validador_costoV.classList.add("valid-feedback");
        validador_costoV.classList.remove("invalid-feedback");
        validador_costoV.innerHTML = "Prefecto!";
    }
    /*************Validacion del campo costo categoria*****************************/

    if (campo_categoria == 'Selecciona una opcion') {
        document.getElementById("categoria").classList.add("is-invalid");
        document.getElementById("categoria").classList.remove("is-valid");
        validador_categoria.classList.add("invalid-feedback");
        validador_categoria.classList.remove("valid-feedback");
        validador_categoria.innerHTML = "seleccione una categoria. ";
        return false;
    } else {
        document.getElementById("categoria").classList.add("is-valid");
        document.getElementById("categoria").classList.remove("is-invalid");
        validador_categoria.classList.add("valid-feedback");
        validador_categoria.classList.remove("invalid-feedback");
        validador_categoria.innerHTML = "Prefecto!";
    }
    /*************Validacion del campo costo stock*****************************/
    if (campo_stock == '' || campo_stock < 0 || isNaN(parseInt(campo_stock))) {
        document.getElementById("stock").classList.add("is-invalid");
        document.getElementById("stock").classList.remove("is-valid");
        validador_stock.classList.add("invalid-feedback");
        validador_stock.classList.remove("valid-feedback");
        validador_stock.innerHTML = "Agrege una cantidad valida. ";
        return false;
    } else {
        document.getElementById("stock").classList.add("is-valid");
        document.getElementById("stock").classList.remove("is-invalid");
        validador_stock.classList.add("valid-feedback");
        validador_stock.classList.remove("invalid-feedback");
        validador_stock.innerHTML = "Prefecto!";
    }

    return true;
}