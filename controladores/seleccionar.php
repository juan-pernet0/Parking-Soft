<?php 

include ('conexion.php');

$identificacion = $_POST['identificacion'];


$query = "SELECT * FROM clientes";
$consulta = $pdo->prepare($query);

$consulta->execute();
if ($consulta->rowCount()>=1) {
	while ($fila=$consulta->fetch() ) {?>
		<tr>
			
			<th scope="row"><?php echo $fila["identificacion"]?></th>
			<td><?php echo $fila["codigo"]?></td>
			<td><?php echo $fila["nombre"]?></td>
			<td><?php echo $fila["apellidos"]?></td>
			<td><a href="actualizar.php?identificacion=<?php $fila["identificacion"]?>">Editar</a><a>Eliminar</a></td>
		</tr>

	<?php 
	}
}else{
	echo "No hay resultados para esa busqueda";
}

	?>
