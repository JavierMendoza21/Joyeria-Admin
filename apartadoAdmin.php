<div class="col-12">
    <!-- BAR CHART -->
    <div class="card card-info ">
        <div class="card-header">
            <h3 class="card-title">Pagar</h3>

            <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                </button>
                <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
            </div>
        </div>

        <div class="card-body text-center">
            <p class="text-muted"><i class="fas fa-info-circle"></i> El total es de los productos que ya se terminaron de pagar, no se incluyen los productos que no hayan sido pagados. </p>
            <table id="example2" class="tabla1 justify-content-center col-12  table-hover table table-bordered table-striped text-center table-responsive">
                <thead>
                    <tr>
                        <th></th>
                        <th>Nombres</th>
                        <th>Vendido</th>
                        <th>Pago</th>
                        <th>N&#176; targeta</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    include 'conexiones/conexion.php';
                    $sqlpagosVendedores = "call getPagoVendedores()";
                    $resultado = $conexion->query($sqlpagosVendedores);
                    $conexion->close();
                    if (mysqli_num_rows($resultado) == 0) {
                        echo '
                                                <tr>
                                                <td colspan="5">No hay vendedores</td>
                                                </tr>
                                                ';
                    }
                    while ($mostrar = mysqli_fetch_array($resultado)) {

                        if ($mostrar['imgUsuario'] != 'user-default.jpg') {
                            $img = substr($mostrar['imgUsuario'], 3);
                        } else {
                            $img = "uploads/" . $mostrar['imgUsuario'];
                        }


                        echo '<tr>
                                                <td class="pt-3">
                                                    <p class="h5"><img class="img-rounded" src="' . $img . '" alt="" width="100"></p>
                                                </td>
                                                <td class="pt-3" style="min-width:250px;">
                                                    <p class="h5 px-1">' . $mostrar['nombre'] . '</p>
                                                </td>
                                                <td class="pt-3">
                                                    <p class="h5 px-4">$' . number_format($mostrar['total'], 2) . '</p>
                                                </td>
                                                <td class="pt-3">
                                                    <p class="h5 px-4">$' . number_format($mostrar['pago'], 2) . '</p>
                                                </td>
                                                <td class="pt-3" style="min-width:250px;">
                                                    <p class="h5 px-1">' . $mostrar['targeta'] . '</p>
                                                </td>   
                                            </tr>';
                    }
                    ?>

                </tbody>
                <tfoot>
                    <tr>
                        <th></th>
                        <th>Nombres</th>
                        <th>Vendido</th>
                        <th>Pago</th>
                        <th>N&#176; targeta</th>
                    </tr>
                </tfoot>
            </table>
            <div class="row px-2">
                <button id="pagar" class="btn btn-lg btn-outline-info mt-3 pt-3 col-lg-6 col-sm-12">
                    <p class="h4 "><i class="fas fa-credit-card"></i> Pagado</p>
                </button>
                <button type="button" class="btn btn-lg btn-outline-info col-lg-6 col-sm-12 mt-3 pt-2" data-toggle="modal" data-target=".bd-example-modal-lg">
                    <h3><i class="fas fa-clipboard-list"></i> Registros de pagos</h3>
                </button>
                <!--Modal inicio-->
                <!-- Button trigger modal -->

                <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <table id="example2" class="m-auto col-lg-12  table-hover  p-0 table-sm table table-bordered table-striped text-center table-responsive">
                                <thead>
                                    <tr>
                                        <th>Fecha </p>
                                        </th>
                                        <th>Total </p>
                                        </th>
                                        <th>Recompra </p>
                                        </th>
                                        <th>Vendedores </p>
                                        </th>
                                        <th>Socio </p>
                                        </th>
                                        <th>Alexis Alarcon </p>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    include 'conexiones/conexion.php';
                                    $sqlPagos = "SELECT * FROM Joyeria.registro_ventas";
                                    $result = $conexion->query($sqlPagos);
                                    $conexion->close();
                                    if (mysqli_num_rows($result) == 0) {
                                        echo '<tr><td colspan="5">No hay registros </p>
                                                                </td></tr>';
                                    }
                                    $contador=0;
                                    while ($mostrar = mysqli_fetch_array($result) && $contador<5) {
                                        echo '<tr>
                                                                <td class="pt-3">
                                                                ' . $mostrar['fecha_pago'] . '
                                                                </td>
                                                                <td class="pt-3">
                                                                ' . $mostrar['total'] . '
                                                                </td>
                                                                <td class="pt-3">
                                                                ' . $mostrar['recompra'] . '
                                                                </td>
                                                                <td class="pt-3">
                                                                ' . $mostrar['vendedores'] . '
                                                                </td>
                                                                <td class="pt-3">
                                                                ' . $mostrar['socio'] . '
                                                                </td>
                                                                <td class="pt-3">
                                                                ' . $mostrar['alexis'] . '
                                                                </td>
                                                            </tr>';
                                                            $contador=$contador+1;
                                    }
                                    ?>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!--Modal final-->

            </div>

        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>