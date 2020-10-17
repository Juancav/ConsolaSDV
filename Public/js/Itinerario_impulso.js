$(document).ready(function() {


    //Obtener impulsadora e itinerario
    $("#btn_buscar_i").click(function() {

        let Carnet_impulso = $("#txt_carnet_i").val().length;
        let Carnet = $("#txt_carnet_i").val();
        let Acumulador = 0;

        if (Carnet_impulso === 0) {
            Swal.fire({
                icon: 'error',
                title: 'Oopsss...',
                html: 'El campo carnet esta vacio',
                showConfirmButton: true
            });

        } else {

            $.ajax({
                url: 'Itinerario_impulsadoras/Get_itinerarios',
                method: 'POST',
                data: { Carnet: Carnet },
                dataType: 'JSON',
                beforeSend: function() {

                },
                success: function(result) {
                    $("#tbl_body_itinerario").empty();
                    let filas = "";
                    if (result === 0) {
                        Swal.fire({
                            icon: 'error',
                            title: 'Oopsss...',
                            html: 'No se encontraron datos para esta impulsadora',
                            showConfirmButton: true
                        });
                    } else {



                        $("#txt_n_impulsadora").val(result[0]["Nombre"])
                        $("#txt_id_imp").val(result[0]["Id_u_sdv"])
                        $("#txt_distribuidora_i").val(result[0]["Nombre_Distribuidora"])

                        for (let i = 0; i < result.length; i++) {
                            filas += "<tr>";
                            Acumulador = Acumulador + 1;
                            filas += "<td style='display:none;'> " + result[i]["Id_iti_imp"] + "</td>";

                            if (result[i]["estado_itinerario"] == 1) {
                                filas += "<td><input type='checkbox' id='Estado_" + Acumulador + "' checked='checked'/></td> ";
                            } else {
                                filas += "<td><input type='checkbox' id='Estado_" + Acumulador + "'/></td>"
                            }
                            filas += "<td style='display:none;'>" + result[i]["Id_cli_imp"] + "</td>";
                            filas += "<td>" + result[i]["Cod_cli"] + "</td>";
                            filas += "<td>" + result[i]["Nombre_cli"] + "</td>";
                            filas += "<td>" + result[i]["Direc_cli"] + "</td>";

                            if (result[i]["lunes"] == 1) {
                                filas += "<td><input type='checkbox' id='L_" + Acumulador + "' checked='checked'/></td> ";
                            } else {
                                filas += "<td><input type='checkbox' id='L_" + Acumulador + "'/ ></td>";
                            }
                            if (result[i]["martes"] == 1) {
                                filas += "<td><input type='checkbox' id='M_" + Acumulador + "'checked='checked'/></td> ";
                            } else {
                                filas += "<td><input type='checkbox' id='M_" + Acumulador + "'/></td>";
                            }
                            if (result[i]["miercoles"] == 1) {
                                filas += "<td><input type='checkbox' id='X_" + Acumulador + "'checked='checked'/></td> ";
                            } else {
                                filas += "<td><input type='checkbox' id='X_" + Acumulador + "'/></td>";
                            }
                            if (result[i]["jueves"] == 1) {
                                filas += "<td><input type='checkbox' id='J_" + Acumulador + "'checked='checked'/></td> ";
                            } else {
                                filas += "<td><input type='checkbox' id='J_" + Acumulador + "'/></td>";
                            }
                            if (result[i]["viernes"] == 1) {
                                filas += "<td><input type='checkbox' id='V_" + Acumulador + "'checked='checked'/></td> ";
                            } else {
                                filas += "<td><input type='checkbox' id='V_" + Acumulador + "'/></td>";
                            }
                            if (result[i]["sabado"] == 1) {
                                filas += "<td><input type='checkbox' id='S_" + Acumulador + "'checked='checked'/></td> ";
                            } else {
                                filas += "<td><input type='checkbox' id='S_" + Acumulador + "' /></td>";
                            }
                            if (result[i]["domingo"] == 1) {
                                filas += "<td><input type='checkbox' id='D_" + Acumulador + "'checked='checked'/></td> ";
                            } else {
                                filas += "<td><input type='checkbox' id='D_" + Acumulador + "' /></td>";
                            }

                            filas += "</tr>";
                        }


                    }

                    $("#tbl_itinerario_impulso").append(filas)
                }

            })

        }
    })

    //Guardar Cambios de itinerario de cada impulsadora
    $("#btn_guardar_itinerario").click(function() {
        let Acumulador = 0;
        let filasTabla = document.getElementById("tbl_body_itinerario").rows.length;
        var table_data = [];
        var sub = [];
        if (filasTabla <= 1) {
            Swal.fire({
                icon: 'error',
                title: 'Oopsss...',
                html: 'Agregar Datos a la tabla',
                showConfirmButton: true
            });

        } else {

            $('#tbl_body_itinerario tr').each(function(row, tr) {
                Acumulador = Acumulador + 1;

                sub = {
                    'Id_iti_imp': $(tr).find('td:eq(0)').text(),
                    'Id_u_sdv': $("#txt_id_imp").val(),
                    'Id_cli_imp': $(tr).find('td:eq(2)').text(),
                    'Lunes': $("#L_" + Acumulador).is(':checked') ? 1 : 0,
                    'Martes': $("#M_" + Acumulador).is(':checked') ? 1 : 0,
                    'Miercoles': $("#X_" + Acumulador).is(':checked') ? 1 : 0,
                    'Jueves': $("#J_" + Acumulador).is(':checked') ? 1 : 0,
                    'Viernes': $("#V_" + Acumulador).is(':checked') ? 1 : 0,
                    'Sabado': $("#S_" + +Acumulador).is(':checked') ? 1 : 0,
                    'Domingo': $("#D_" + Acumulador).is(':checked') ? 1 : 0,
                    'Estado_itinerario': $("#Estado_" + Acumulador).is(':checked') ? 1 : 0,
                    'Visitado': 0

                };

                table_data.push(sub);



            });

            swal.fire({
                title: '',
                text: '¿Esta seguro de guardar los cambios?',
                icon: 'warning',
                showLoaderOnConfirm: true,
                showCancelButton: true,
                confirmButtonText: 'Si',
                preConfirm: () => {
                    var data = { 'Datos': table_data };

                    $.ajax({
                        data: data,
                        type: "POST",
                        url: "Itinerario_impulsadoras/Cambios_itinerario",
                        crossOrigin: false,
                        datatype: 'json',
                        success: function(result) {

                            if (result.Status == 'success') {
                                let timerInterval
                                Swal.fire({
                                    title: '',
                                    icon: 'success',
                                    html: 'Excelente los cambios fueron guardados con exito',
                                    timer: 2000,
                                    onBeforeOpen: () => {
                                        Swal.showLoading()
                                        timerInterval = setInterval(() => {

                                        }, 100)
                                    },
                                    onClose: () => {
                                        clearInterval(timerInterval)
                                    }
                                }).then((result) => {
                                    if (
                                        result.dismiss === Swal.DismissReason.timer
                                    ) {
                                        location.reload();
                                    }
                                });
                            } else {
                                let timerInterval
                                Swal.fire({
                                    title: 'Error Al Enviar Registro',
                                    type: 'warning',
                                    html: '',
                                    timer: 2000,
                                    onBeforeOpen: () => {
                                        Swal.showLoading()
                                        timerInterval = setInterval(() => {

                                        }, 100)
                                    },
                                    onClose: () => {
                                        clearInterval(timerInterval)
                                    }
                                }).then((result) => {
                                    if (
                                        result.dismiss === Swal.DismissReason.timer
                                    ) {
                                        location.reload();
                                    }
                                });
                            }
                        }

                    });

                }
            }, );

        }
    });

    $("#btn_crear_v").click(function() {

        if ($("#txt_id_imp").val().length == 0) {

            Swal.fire({
                icon: 'error',
                title: 'Oopsss...',
                html: 'Para crear una nueva visita , cargue el itinerario de una impulsadora',
                showConfirmButton: true
            });
            return false;
        } else {

            let Pais = $("#txt_pais_i").val();
            let Distribuidora = $("#txt_dist_i").val();
            let Ruta = $("#txt_rutas_i").val();
            let Cliente = $("#txtidcliente").val();

            if (Pais == 0 || Distribuidora == 0 || Ruta == 0 || Cliente.length === 0) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oopsss...',
                    html: 'Los campos con ( * ) son obligatorios ',
                    showConfirmButton: true
                });
                return false;
            } else {
                var rowCount = $('#tbl_itinerario_impulso tr').length - 1;

                let Fila = "";

                Fila += "<tr>";
                Fila += "<td style='display:none'>0</td>";
                Fila += "<td><input type='checkbox' id='Estado_" + rowCount + "' checked='checked'/></td> ";
                Fila += "<td style='display:none'>" + $("#txtidcliente").val() + "</td>";
                Fila += "<td >" + $("#cod_cliente").val() + "</td>";
                Fila += "<td >" + $("#nombre_cli").val() + "</td>";
                Fila += "<td >" + $("#direc_cli").val() + "</td>";

                $("#L_V").is(':checked') ? Fila += "<td><input type='checkbox' id='L_" + rowCount + "' checked='checked'/></td> " : Fila += "<td><input type='checkbox' id='L_" + rowCount + "' /></td> ";
                $("#M_V").is(':checked') ? Fila += "<td><input type='checkbox' id='M_" + rowCount + "' checked='checked'/></td> " : Fila += "<td><input type='checkbox' id='M_" + rowCount + "' /></td> ";
                $("#X_V").is(':checked') ? Fila += "<td><input type='checkbox' id='X_" + rowCount + "' checked='checked'/></td> " : Fila += "<td><input type='checkbox' id='X_" + rowCount + "' /></td> ";
                $("#J_V").is(':checked') ? Fila += "<td><input type='checkbox' id='J_" + rowCount + "' checked='checked'/></td> " : Fila += "<td><input type='checkbox' id='J_" + rowCount + "' /></td> ";
                $("#V_V").is(':checked') ? Fila += "<td><input type='checkbox' id='V_" + rowCount + "' checked='checked'/></td> " : Fila += "<td><input type='checkbox' id='V_" + rowCount + "' /></td> ";
                $("#S_V").is(':checked') ? Fila += "<td><input type='checkbox' id='S_" + rowCount + "' checked='checked'/></td> " : Fila += "<td><input type='checkbox' id='S_" + rowCount + "' /></td> ";
                $("#D_V").is(':checked') ? Fila += "<td><input type='checkbox' id='D_" + rowCount + "' checked='checked'/></td> " : Fila += "<td><input type='checkbox' id='D_" + rowCount + "' /></td> ";



                Fila += "</tr>";
                $("#tbl_itinerario_impulso").append(Fila);


                Swal.fire({
                    icon: 'success',
                    title: 'Excelente...',
                    html: 'se ha agregago una nueva visita a la tabla',
                    showConfirmButton: true
                });

                $('#form-r-visitas').trigger("reset");
            }

        }


    })

    //Cargar paises
    $.ajax({
        url: "Itinerario_impulsadoras/get_paises",
        method: "POST",
        success: function(data) {

            $('#txt_pais_i').html(data);

        }
    });

    //cargar distribuidoras segun pais
    $("#txt_pais_i").change(function() {
        let Pais = $("#txt_pais_i").val();
        $.ajax({
            url: "Itinerario_impulsadoras/get_distribuidora",
            method: "POST",
            data: { Pais: Pais },
            success: function(data) {

                $('#txt_dist_i').html(data);

            }
        });
    })

    //cargar rutas de mayoreo segun distribuidora
    $("#txt_dist_i").change(function() {
        let Distribuidora = $("#txt_dist_i").val();
        $.ajax({
            url: "Itinerario_impulsadoras/get_rutas",
            method: "POST",
            data: { Distribuidora: Distribuidora },
            success: function(data) {

                $('#txt_rutas_i').html(data);

            }
        });
    })



    // cuando cambie la ruta cargar datos de clientes de la ruta de mayoreo
    $("#txt_rutas_i").change(function() {

        $("#txtclienteautocomplete").val('');
        $("#txtidcliente").val('');
        $("#cod_cliente").val('');
        $("#nombre_cli").val('');
        $("#direc_cli").val('');

        var id_ruta = $("#txt_rutas_i").val();
        //cargar clientes segun ruta de mayoreo segun distribuidora
        $.ajax({
            url: "Marcacion_impulso/ClientesAutocomplete",
            method: "POST",
            data: {
                Id_ruta: id_ruta
            },
            beforeSend: function() {
                $("#esperando").css("display", "block")

            },
            success: function(data) {
                $("#esperando").css("display", "none")
                let datos = JSON.parse(data);
                if (datos.length < 1) {

                    Swal.fire({
                        icon: 'error',
                        title: 'Oopsss...',
                        html: 'No hay datos para mostrar de la ruta seleccionada',
                        showConfirmButton: true
                    });
                    return false;
                } else {
                    Swal.fire({
                        icon: 'success',
                        title: '',
                        html: 'Datos cargados con exito',
                        showConfirmButton: false,
                        timer: 2000,
                    });
                    $('#txtclienteautocomplete').autocomplete({

                        source: datos,
                        select: function(event, ui) {
                            $("#txtclienteautocomplete").val(ui.item.label); // display the selected text
                            $("#txtidcliente").val(ui.item.value); // save selected id to hidden input
                            $("#cod_cliente").val(ui.item.Cod_cli);
                            $("#nombre_cli").val(ui.item.Nombre_cli);
                            $("#direc_cli").val(ui.item.Direc_cli);
                            return false;
                        },
                        change: function(event, ui) {
                            $("#txtidcliente").val(ui.item ? ui.item.value : '');
                        }
                    });
                }

            }
        });
    });

})