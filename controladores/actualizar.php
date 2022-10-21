<!DOCTYPE html>
<html>
<head>
	<title>Actualizar</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="../bootstrap-4.4.1-dist/css/bootstrap.min.css">
</head>
<body>

<div class="container">
	<h1 class="row justify-content-center">Actualizar un Usuario</h1>
</div>
<br>

<?php 

if (isset($_GET['identificacion'])) {
	include('conexion.php');
	$identificacion = $_GET['identificacion'];
	$query="SELECT * FROM clientes WHERE identificacion=$identificacion";
	$consulta=$pdo->prepare($query);
	$consulta->execute();

	if (empty($consulta)) {
	}else{
		$fila=$consulta->fetch();
	}

	require_once("conexion.php");
?>


<div class="container">
	<h4 class="row justify-content-center">Actualiza los datos de un cliente</h4>
</div>
<div class="container">
	<div class="row justify-content-center">
		<form action="UPDATE.php" method="post">
			<div class="col">
				<input class="form-control" type="number" name="identificacion" value="<?php echo $fila["identificacion"]?>">
				<input class="form-control" type="text" name="codigo" value="<?php echo $fila["codigo"];?>">
				<input class="form-control" type="text" name="nombre" value="<?php echo $fila["nombre"];?>">
				<input class="form-control" type="text" name="apellidos" value="<?php echo $fila["apellidos"];?>">
			</div>
			<br>
			<p class="text.center">
				<button type="submit" name="boton" class="w-100 btn btn-success btn-lg">Actualizar</button>
				<button type="button2"  class="w-100 btn btn-warnign btn-lg">Cancelar</button>
			</p>
		</form>
	</div>
</div>
<?php 
}else{
	;?>

	<div class="container">
	<h4 class="row justify-content-center">ingresa la identificacion del cliente para actualizar</h4><br>
</div>
<div class="container">
	<div class="row justify-content-center">
		<form action="actualizar.php" method="GET">
			<div class="col">
				<p>Identificacion: <input class="" type="number" name="identificacion" value="identificacion"></p>
			</div>
			<br>
			<p class="text-center">
				<button type="submit" name="boton" class="w-500 btn btn-primary btn-lg">Hecho</button>
				<a href="mostrar.php" class="w-7500 btn btn-secondary btn-lg">Mostrar la Lista</a>
			</p>
		</form>
	</div>
</div>


	<?php
}
?>
</body>
</html>