<?php
/* Conectar a una base de datos de MySQL invocando al controlador*/ 
$dsn = 'mysql:dbname=parqueadero;host=localhost';
$usuario = 'root';
$contraseña = '';

try {
    $pdo = new PDO($dsn, $usuario, $contraseña);
} catch (PDOException $e) {
    echo 'Falló la conexión: ' . $e->getMessage();
}



?>