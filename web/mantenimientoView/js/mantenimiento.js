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
    
    if(Number(alimV)>0){
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
