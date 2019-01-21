/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {
    var formulario = $("#sector");
    var boton = $("#btn-sector");

    var provincia = $("#provincia");
    var canton = $("#canton");
    var parroquia = $("#parroquia");


    provincia.change(function () {
        var dato = {
            'c': {
                idprovincia: $(this).val()
            }
        };
        $.ajax({
            url: "obtenerCantones",
            data: JSON.stringify(dato),
            dataType: 'json',
            contentType: 'application/json',
            type: 'POST',
            async: true,
            success: function (res) {
                var lista1 = res.listaCantones;
                var lista2 = res.listaParroquias;
                canton.empty();
                parroquia.empty();                
                for (var i = 0; i < lista1.length; i++) {
                    canton.append('<option value='+lista1[i].idcanton+'>'+lista1[i].nombrecanton+'</option>');
                }
                for (var i = 0; i < lista2.length; i++) {
                    parroquia.append('<option value='+lista2[i].idparroquia+'>'+lista2[i].descripcion+'</option>');
                }
                
            }
        });        
    });

    canton.change(function () {
           var dato = {
            'p': {
                idcanton: $(this).val()
            }
        };
        $.ajax({
            url: "obtenerParroquias",
            data: JSON.stringify(dato),
            dataType: 'json',
            contentType: 'application/json',
            type: 'POST',
            async: true,
            success: function (res) {                
                var lista2 = res.listaParroquias;               
                parroquia.empty(); 
                for (var i = 0; i < lista2.length; i++) {
                    parroquia.append('<option value='+lista2[i].idparroquia+'>'+lista2[i].descripcion+'</option>');
                }                
            }
        });        
    });





    jQuery(formulario).validate(
            {

            }

    );


    boton.click(function () {

        formulario.submit();

    });

});