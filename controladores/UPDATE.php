<?php 

//Actualizo los datos

include('conexion.php');

$identificacion =$_POST['identificacion'];
$codigo = $_POST['codigo'];
$nombre = $_POST['nombre'];
$apellidos = $_POST['apellidos'];

$query="UPDATE clientes SET identificacion=:I, codigo=:C, nombre=:N, apellidos=:A WHERE identificacion=:I"; 

$consulta = $pdo->prepare($query);
$consulta->bindParam(':I',$identificacion);
$consulta->bindParam(':C',$codigo);
$consulta->bindParam(':N',$nombre);
$consulta->bindParam(':A',$apellidos);

if ($consulta->execute()) {
	echo "Registro actualizado correctamente";?>
	<a href="mostrar.php"><h1>Volver</h1></a><?php 
}else{
	echo "Error! no se pudo actualizar los datos ";
}
?>