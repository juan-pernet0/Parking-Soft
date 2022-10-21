<?php
require_once("conexion.php");
$query="DELETE FROM clientes where identificacion=?";
$consulta = $pdo->prepare($query);
if ($consulta->execute(array($_GET['identificacion']))) {
	echo "registro eliminado correctamente";
	?><a href="mostrar.php"><h1>Volver</h1></a>
	<?php

}else{
	echo "error! no se pudo eliminar el dato";
}
?>