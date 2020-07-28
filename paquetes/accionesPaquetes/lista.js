const listaProductos = [];

function agregar(id, cantidad) {

    if (cantidad.value == 0) {
        return;
    }

    var FILA = document.getElementById("tr" + id);
    var columna1 = FILA.getElementsByTagName("td")[0].innerHTML;
    var columna2 = FILA.getElementsByTagName("td")[2].innerHTML;
    var columna3 = FILA.getElementsByTagName("td")[3].innerHTML;
    var columna4 = FILA.getElementsByTagName("td")[1].innerHTML;
    var columna5 = FILA.getElementsByTagName("td")[4].innerHTML;

    var FilaIngresar = [columna1, columna4, columna2, columna3, cantidad.value];

    for (var i = 0; i < listaProductos.length; i++) {
        if (listaProductos[i][0] == id) {
            listaProductos[i][1] = parseInt(cantidad.value) + parseInt(listaProductos[i][1]);
            console.log("Ultima lista for");
            console.log(listaProductos);
            cantidad.value = 0;

            ecribirProductos();
            return;
        }
    }
    listaProductos.push([id, parseInt(cantidad.value, 10), FilaIngresar]);
    cantidad.value = 0;
    //console.log("ID : " + id + "\nCantidad : " + cantidad.value);
    console.log("Ultima lista push ");
    console.log(listaProductos);
    ecribirProductos();
}

function ecribirProductos() {
    var tabla = document.getElementById("tabla");
    tabla.innerHTML = "";
    //console.log("Entre : " + listaProductos.length);
    var fila = "";

    var btn = document.createElement("TR");

    for (var i = 0; i < listaProductos.length; i++) {
        btn = document.createElement("TR");
        fila = "<tr id=" + listaProductos[i][0] + " > ";
        fila += "<td>" + listaProductos[i][2][0] + "</td>";
        fila += "<td>" + listaProductos[i][2][1] + "</td>";
        fila += "<td>" + listaProductos[i][2][2] + "</td>";
        fila += "<td>" + listaProductos[i][2][3] + "</td>";
        fila += "<td>" + listaProductos[i][2][4] + "</td>";
        fila += "<td>" + "<button onclick='eliminarFila(this)' type='submit' class='btn mt-3 btn-outline-danger'><i class='fas fa-minus-circle'></i></button>" + "</td>";
        fila += "</tr>";
        btn.innerHTML = fila;
        tabla.appendChild(btn);

    }
}

function eliminarFila(row) {
    var d = row.parentNode.parentNode.rowIndex;
    document.getElementById('tabla').deleteRow(d - 1);
    /**<tr class="odd"><td colspan="6" class="dataTables_empty"
     *  valign="top">No hay datos disponibles en la tabla</td></tr>**/
}