/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {
    var origen = $("#origen");
    var precio = $("#precio");
    var divprecio = $("#divprecio");
    var p = precio.val();

    origen.change(function () {

        switch (Number($(this).val())) {
            case 1:
                divprecio.show();
                precio.val(p);
                break;

            case 2:
            case 3:
                precio.val(0);
                divprecio.hide();
                break;
        }

    });


});