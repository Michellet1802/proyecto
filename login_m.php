<?php
session_start(); 
$error=''; 

if (isset($_POST['submit'])) {
if (empty($_POST['username']) || empty($_POST['password'])) {
$error = "Username or Password is invalid";
}
else
{
// Aqui se define el usuario y contrase;a
$username=$_POST['username'];
$password=$_POST['password'];
require 'connection.php';
$conn = Connect();

// SQL para buscar información de usuarios registrados y encuentra coincidencias de usuarios.
$query = "SELECT username, password FROM MANAGER WHERE username=? AND password=? LIMIT 1";

$stmt = $conn->prepare($query);
$stmt -> bind_param("ss", $username, $password);
$stmt -> execute();
$stmt -> bind_result($username, $password);
$stmt -> store_result();

if ($stmt->fetch())  
{
	$_SESSION['login_user1']=$username; // Inicializar sesión
	header("location: myrestaurant.php"); // Redireccionamiento
} else {
$error = "Username or Password is invalid";
}
mysqli_close($conn); // cerrar conex
}
}
?>