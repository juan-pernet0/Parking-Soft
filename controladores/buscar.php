<!DOCTYPE html>
<html>
<head>
	<title>Buscar Usuario</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="../bootstrap-4.4.1-dist/css/bootstrap.min.css">
</head>
<body>

<div class="container">
	<h1>Buscar Usuario</h1>
</div>
<div class="container">
	<h4 class="row justify-content-center">Busca un usuario Por identificacion, Nombre o su Apellidos</h4>
</div>

<div class="container">
	<label><p class="font-weight-bold">Buscar: </p></label>
	<form action="buscarlike.php" method="post">
		<div class="form-row">
			<div class="form-group col">
				<input autofocus class="form-control" type="text" name="buscar" placeholder="Nombre, Apellidos o identificacion">
			</div>
			<div class="form-group col">
				<button type="submit" name="boton1" class="btn btn-secondary btn-md w-50">Buscar</button>
			</div>
		</div>
	</form>
</div>
<div class="container"><br>
	<table class="table table-striped" border="2">
		<thead class="thead-dark">
			<tr>
				<th scope="col">#</th>
				<th scope="col">Identificacion</th>
				<th scope="col">Codigo</th>
				<th scope="col">Nombre</th>
				<th scope="col">Apellidos</th>
				<th>Opciones</th>
			</tr>

<?php

if (isset($_POST['buscar'])) {

$buscar = $_POST['buscar'];


include('conexion.php');

$buscar = "%$buscar%";


$query="SELECT * FROM clientes WHERE identificacion LIKE ? OR codigo LIKE ? OR nombre LIKE ? OR apellidos LIKE ?";

$consulta=$pdo->prepare($query);
$consulta->bindParam(1,$buscar);
$consulta->bindParam(2,$buscar);
$consulta->bindParam(3,$buscar);
$consulta->bindParam(4,$buscar);
$consulta->execute();


if ($consulta->rowCount()>=1){
	while ($fila=$consulta->fetch()) {?>
		<tr>
			<td><strong><?php echo $fila["numeracion"]?></strong></td>
			<td scope='row'><?php echo $fila["identificacion"]?></td>
			<td><?php echo $fila["codigo"]?></td>
			<td><?php echo $fila["nombre"]?></td>
			<td><?php echo $fila["apellidos"]?></td>
			<td><a href="actualizar.php?identificacion=<?php echo $fila["identificacion"]?>">Editar</a><a>  Eliminar</a></td>
		</tr>
<?php
}
}else{
	echo "No hay resultados para esa busqueda";
}
}
?>
	</thead>
</table>