<?php
include('conexion.php');

$identificacion =$_POST['identificacion'];
$codigo = rand();
$nombre = $_POST['nombre'];
$apellidos = $_POST['apellidos'];


$query ="INSERT INTO clientes(identificacion,codigo,nombre,apellidos)
VALUES(:I,:C,:N,:A)";

$consulta = $pdo->prepare($query);


$consulta->bindParam(':I',$identificacion);
$consulta->bindParam(':C',$codigo);
$consulta->bindParam(':N',$nombre);
$consulta->bindParam(':A',$apellidos);

if($consulta->execute()){
	echo "Registro guardado correctamente";?>
	<a href="mostrar.php"><h1>Volver</h1></a><?php 
	
}else{
	echo "<br>"."Error! no se pudo almacenar los datos";
}
?>