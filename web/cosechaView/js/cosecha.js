/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {
    var tbody = $("#tbody");
    var buscar = $("#buscar");
    var buscar1 = $("#buscar1");
    var idcolmena = $("#idcolmena").val();
    var datepicker = $("#datepicker");
    var datepicker2 = $("#datepicker2");

    

    buscar1.click(function () {
       tbody.html('');

        var cos = {
            'cos': {
                idcolmena:idcolmena,
                fech: datepicker.val(),
                fech1: datepicker2.val()
            }
        };

        $.ajax({
            url: "obtenerlistaCosechaC",
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
                    var valorCela = $((document).createTextNode(value.idcosecha));
                    celda.append(valorCela);
                    fila.append(celda);
                   

                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.obrero.nombre + " " + value.obrero.apellido));
                    celda.append(valorCela);
                    fila.append(celda);

                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.marcos));
                    celda.append(valorCela);
                    fila.append(celda);

                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.pesovacio));
                    celda.append(valorCela);
                    fila.append(celda);

                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.pesolleno));
                    celda.append(valorCela);
                    fila.append(celda);

                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.fecha));
                    celda.append(valorCela);
                    fila.append(celda);

                     

                    var celda = $((document).createElement('td'));
                    var formulario = $((document).createElement('form'));
                    formulario.attr("action", "editCosecha");
                    formulario.attr("methoh", "post");

                    var id = $((document).createElement('input'));
                    id.attr("type", "hidden");
                    id.attr("value", value.idcosecha);
                    id.attr("name", "idcosecha");

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
            'cos': {
                fech: datepicker.val(),
                fech1: datepicker2.val()
            }
        };

        $.ajax({
            url: "obtenerlistaCosecha",
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
                    var valorCela = $((document).createTextNode(value.idcosecha));
                    celda.append(valorCela);
                    fila.append(celda);

                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.colmena.descripcion));
                    celda.append(valorCela);
                    fila.append(celda);

                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.obrero.nombre + " " + value.obrero.apellido));
                    celda.append(valorCela);
                    fila.append(celda);

                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.marcos));
                    celda.append(valorCela);
                    fila.append(celda);

                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.pesovacio));
                    celda.append(valorCela);
                    fila.append(celda);

                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.pesolleno));
                    celda.append(valorCela);
                    fila.append(celda);

                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.fecha));
                    celda.append(valorCela);
                    fila.append(celda);

                    

                    var celda = $((document).createElement('td'));
                    var formulario = $((document).createElement('form'));
                    formulario.attr("action", "editCosecha");
                    formulario.attr("methoh", "post");

                    var id = $((document).createElement('input'));
                    id.attr("type", "hidden");
                    id.attr("value", value.idcosecha);
                    id.attr("name", "idcosecha");

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

});