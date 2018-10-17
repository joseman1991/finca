/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
    var checkAl = $("#checkAl");
    var divAli = $("#divAli");
    var alim = $("#alim");
    var alimV = alim.val();


    var tbody = $("#tbody");
    var buscar = $("#buscar");
    var buscar1 = $("#buscar1");
    var datepicker = $("#datepicker");
    var datepicker2 = $("#datepicker2");
    var idcolmena = $("#idcolmena").val();

     
    buscar1.click(function () {
        tbody.html('');

        var cos = {
            'mantenimiento': {
                idcolmena: idcolmena,
                fech: datepicker.val(),
                fech2: datepicker2.val()
            }
        };

        $.ajax({
            url: "obtenerlistaMantenimientoC",
            data: JSON.stringify(cos),
            dataType: 'json',
            contentType: 'application/json',
            type: 'POST',
            async: true,
            success: function (res) {
                var dato = JSON.parse(res.json);

                $.each(dato, function (key, value) {
                    var fila = $((document).createElement('tr'));
                    tbody.append(fila);
                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.idmantenimiento));
                    celda.append(valorCela);
                    fila.append(celda);

                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.tipo));
                    celda.append(valorCela);
                    fila.append(celda);


                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.fecha));
                    celda.append(valorCela);
                    fila.append(celda);

                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.obrero.nombre + " " + value.obrero.apellido));
                    celda.append(valorCela);
                    fila.append(celda);

                   

                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.alimentacion));
                    celda.append(valorCela);
                    fila.append(celda);



                    var celda = $((document).createElement('td'));
                    var formulario = $((document).createElement('form'));
                    formulario.attr("action", "actualizamantenimiento");
                    formulario.attr("methoh", "post");

                    var id = $((document).createElement('input'));
                    id.attr("type", "hidden");
                    id.attr("value", value.idmantenimiento);
                    id.attr("name", "idmantenimiento");

                    formulario.append(id);
                    var boton = $((document).createElement('button'));

                    var icon = $((document).createElement('span'));
                    icon.addClass("glyphicon glyphicon-edit");
                    boton.attr("data-toggle", "tooltip");
                    boton.attr("title", "Editar cosecha");
                    boton.attr("type", "submit");
                    boton.append(icon);
                    boton.addClass("btn btn-warning btn-xs");

                    formulario.append(boton);

                    celda.append(formulario);
                    fila.append(celda);
                });
            }
        });
    });

    buscar.click(function () {
        tbody.html('');

        var cos = {
            'mantenimiento': {
                fech: datepicker.val(),
                fech2: datepicker2.val()
            }
        };

        $.ajax({
            url: "obtenerlistaMantenimiento",
            data: JSON.stringify(cos),
            dataType: 'json',
            contentType: 'application/json',
            type: 'POST',
            async: true,
            success: function (res) {
                var dato = JSON.parse(res.json);

                $.each(dato, function (key, value) {
                    var fila = $((document).createElement('tr'));
                    tbody.append(fila);
                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.idmantenimiento));
                    celda.append(valorCela);
                    fila.append(celda);

                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.tipo));
                    celda.append(valorCela);
                    fila.append(celda);


                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.fecha));
                    celda.append(valorCela);
                    fila.append(celda);

                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.obrero.nombre + " " + value.obrero.apellido));
                    celda.append(valorCela);
                    fila.append(celda);

                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.colmena.descripcion));
                    celda.append(valorCela);
                    fila.append(celda);

                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.alimentacion));
                    celda.append(valorCela);
                    fila.append(celda);



                    var celda = $((document).createElement('td'));
                    var formulario = $((document).createElement('form'));
                    formulario.attr("action", "actualizamantenimiento");
                    formulario.attr("methoh", "post");

                    var id = $((document).createElement('input'));
                    id.attr("type", "hidden");
                    id.attr("value", value.idmantenimiento);
                    id.attr("name", "idmantenimiento");

                    formulario.append(id);
                    var boton = $((document).createElement('button'));

                    var icon = $((document).createElement('span'));
                    icon.addClass("glyphicon glyphicon-edit");
                    boton.attr("data-toggle", "tooltip");
                    boton.attr("title", "Editar cosecha");
                    boton.attr("type", "submit");
                    boton.append(icon);
                    boton.addClass("btn btn-warning btn-xs");

                    formulario.append(boton);

                    celda.append(formulario);
                    fila.append(celda);
                });
            }
        });
    });



    if (Number(alimV) > 0) {
        checkAl.prop('checked', true);
        divAli.show();
    }

    checkAl.change(function () {
        if (checkAl.prop('checked')) {
            divAli.show();
            alim.val(alimV);
        } else {
            alim.val(0);
            divAli.hide();
        }
    });

});
