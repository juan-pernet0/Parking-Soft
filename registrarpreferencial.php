<title>Registrar</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/all.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/normalize.css">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans|Oswald|PT+Sans&display=swap" rel="stylesheet">
<section class="seccion contenedor">
		<h2>Registro de Usuarios</h2>
		<form id="registro" class="registro"action="registrar.php" method="post">
			<div id="datos_usuario" class="registro caja clearfix">
				<div class="campo">
					<label for="identificacion">Identificación:</label>
					<input type="text" id="identificacion" name="identificacion" placeholder="Tu identificacion">
				</div>
				<div class="campo">
					<label for="nombre">Nombre:</label>
					<input type="text" id="nombre" name="nombre" placeholder="Tu nombre">
				</div>
				<div class="campo">
					<label for="apellidos">Apellido:</label>
					<input type="text" id="apellidos" name="apellidos" placeholder="Tu Apellido">
				</div>
				
			</div>
			<button id="enviar" name="enviar" type="submit" class="btn">ENVIAR</button>
		</form>
		<a href="../php-login/logout.php">Salir</a>
	</section>