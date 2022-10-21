<!DOCTYPE html>
<html>
<head>
	<title>Mostrar</title>
	<link rel="stylesheet" type="text/css" href="../bootstrap-4.4.1-dist/css/bootstrap.min.css">

</head>
<body>

<div class="container">
	<h1>Buscar Usuario</h1>
</div>
<div class="container">
	<h4 class="row justify-content-center">Busca un usuario Por identificacion, Nombre, o por su placa</h4>
</div>

<div class="container">
	<label><p class="font-weight-bold">Buscar Por: </p></label>
	<form action="buscar.php" method="post">
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
		</thead>
		<tbody>
			<?php 
			include('conexion.php');
			 $query="SELECT * FROM clientes";
			 $consulta = $pdo->prepare($query);

			 $consulta->execute();
			 if ($consulta->rowCount()>=1) {
			 	while ($fila=$consulta->fetch() ) {?>
			 	<tr>

			 		<td><strong><?php echo $fila["numeracion"]?></strong></td>
			 		<th scope='row'><?php echo $fila["identificacion"]?></th>
			 		<td><?php echo $fila["codigo"]?></td>
			 		<td><?php echo $fila["nombre"]?></td>
			 		<td><?php echo $fila["apellidos"]?></td>
			 		<td><a href="actualizar.php?identificacion=<?php echo $fila["identificacion"]?>">Editar</a><a><a href="eliminar.php?identificacion=<?php echo $fila["identificacion"]?>">  Eliminar</a></td>
			 	</tr>
			 	
			<?php 
			}
		}else{
			echo "No hay resultados para esa busqueda";
		}	
			?>	
		

			
		</tbody>
	</table>
</div>

</body>
</html>