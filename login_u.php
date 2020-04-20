<?php
session_start(); 
$error=''; 

if (isset($_POST['submit'])) {
if (empty($_POST['username']) || empty($_POST['password'])) {
$error = "Username or Password is invalid";
}
else
{
// Definir usuario y contraseña
$username=$_POST['username'];
$password=$_POST['password'];
// Establecer conexión con el servidor pasando nombre_servidor, nombre_usuario y contraseña como parámetro
require 'connection.php';
$conn = Connect();

// SQL para buscar información de usuarios registrados y encuentra coincidencias de usuarios.
$query = "SELECT username, password FROM CUSTOMER WHERE username=? AND password=? LIMIT 1";

// Para proteger la inyección de MySQL con fines de seguridad
$stmt = $conn->prepare($query);
$stmt -> bind_param("ss", $username, $password);
$stmt -> execute();
$stmt -> bind_result($username, $password);
$stmt -> store_result();

if ($stmt->fetch())  
{
	$_SESSION['login_user2']=$username; // Inicializar Sesion
	header("location: foodlist.php"); // Redireccionando a otra pag
} else {
$error = "Username or Password is invalid";
}
mysqli_close($conn); // Cerrar conex
}
}
?>