/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {

    var boton = $("#boton");
    var email = $("#email");
    var correo = $("#correo");
    var formulario = $("#formulario");
    var userError = $("#userError");

    var isSUbmit = true;


    jQuery(formulario).validate(
            {
                rules: {
                    clave: {
                        required: true,
                        minlength: 5,
                        equalTo: pclave
                    },
                    pclave: {

                    },
                    cedula: {
                        digits: true,
                        valCedula: true
                    },
                    telefono: {
                        digits: true
                    }

                },
                messages: {
                    clave: {
                        minlength: $.format("Necesitamos por lo menos {0} caracteres")
                    }
                }

            }

    );

    jQuery.validator.addMethod("valCedula", function (value, element) {
        var val = false;
        if (value.length === 10) {
            var dato = value.split('');
            var suma = 0;
            var validador = Number(dato[dato.length - 1]);
            for (var i = 0, max = dato.length - 1; i < max; i++) {
                var d = Number(dato[i]);
                if (i % 2 === 0) {
                    d = d * 2;
                    if (d > 9) {
                        d = d - 9;
                    }
                }
                suma = suma + d;
            }
            suma = suma % 10;
            if (suma !== 0) {
                suma = 10 - suma;
            }
            val = suma === validador;
        }
        return this.optional(element) || val;
    }, 'Ingresa una cédula válida');
    






    boton.click(function () {
        if (isSUbmit) {
            $('#ok').css('display','none');
            formulario.submit();
        }
    });

    email.keyup(function () {
        var user = email.val();
        var usuario = {
            'usuario': {
                email: user
            }
        };
        $.ajax({
            url: "obtenerUser",
            data: JSON.stringify(usuario),
            dataType: 'json',
            contentType: 'application/json',
            type: 'POST',
            async: true,
            success: function (res) {
                if (res.usuario === null) {
                    isSUbmit = true;
                    userError.css("display", "none");
                } else {
                    isSUbmit = false;
                    userError.css("display", "block");
                }
            }
        });
    });

    correo.keyup(function () {
        var user = $("#idusuario").val();
        var corr = correo.val();

        var usuario = {
            'usuario': {
                idusuario: user
            }
        };

        $.ajax({
            url: "actualiz",
            data: JSON.stringify(usuario),
            dataType: 'json',
            contentType: 'application/json',
            type: 'POST',
            async: true,
            success: function (res) {
                if (corr === res.usuario.email) {
                    userError.css("display", "none");
                } else {
                    userError.css("display", "none");
                    var user = correo.val();
                    var usuario = {
                        'usuario': {
                            email: user
                        }
                    };
                    $.ajax({
                        url: "obtenerUser",
                        data: JSON.stringify(usuario),
                        dataType: 'json',
                        contentType: 'application/json',
                        type: 'POST',
                        async: true,
                        success: function (res) {
                            if (res.usuario === null) {
                                isSUbmit = true;
                                userError.css("display", "none");
                            } else {
                                isSUbmit = false;
                                userError.css("display", "block");
                            }
                        }
                    });
                }
            }
        });
    });



});