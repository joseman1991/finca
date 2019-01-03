/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {
    var formulario = $("#sector");
    var boton = $("#btn-sector");

    jQuery(formulario).validate(
            {

            }

    );


    boton.click(function () {
       
            formulario.submit();
       
    });

});