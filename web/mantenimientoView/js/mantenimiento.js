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
        alert('hola');
        tbody.html('');

        var cos = {
            'mantenimiento': {
                idcolmena: idcolmena,
                fech: datepicker.val(),
                fech2: datepicker2.val()
            }
        };

      // campos = "idganado,nombre, tipo, raza, edad,observacion,fecha";


       
    });

    buscar.click(function () {
        tbody.html('');
        var cos = {
            'cosecha': {
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
                    var valorCela = $((document).createTextNode(value.idcosecha));
                    celda.append(valorCela);
                    fila.append(celda);

                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.producto.nombre));
                    celda.append(valorCela);
                    fila.append(celda);


                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.descripcion));
                    celda.append(valorCela);
                    fila.append(celda);

                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.quintales));
                    celda.append(valorCela);
                    fila.append(celda);

                    

                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.hectareas));
                    celda.append(valorCela);
                    fila.append(celda);

                    var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.ciclo));
                    celda.append(valorCela);
                    fila.append(celda);



                     var celda = $((document).createElement('td'));
                    var valorCela = $((document).createTextNode(value.fecha));
                    celda.append(valorCela);
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
