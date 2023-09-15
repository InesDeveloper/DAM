$(document).ready(function () {
	// Al hacer submit en el formulario
	$('#contacto-form').submit(function (e) {
		// Previene el comportamiento por defecto del formulario
		e.preventDefault();

		// Recupera el valor del campo de texto
        var nombre = $('#fname').val();
        var apellidos = $('#lname').val();
        var email = $('#eaddress').val();
        var telefono = $('#tel').val();
		var mensaje = $('#message').val();

		// Muestra un mensaje de cargando mientras se procesa la solicitud
		$('#email-response').html('<p>Enviando...</p>');

		// Hace una solicitud AJAX al servidor
		$.ajax({
			type: 'POST',
			url: 'emailcontroller.php',
			data: { nombre: nombre, apellidos: apellidos, email: email, telefono: telefono, mensaje: mensaje },
			success: function (response) {
				$('#email-response').html(response);
			},
		});
	});
});
