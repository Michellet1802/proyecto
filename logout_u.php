<?php
session_start();
if(session_destroy()) 
{
header("Location: customerlogin.php"); // Pag de inicio
}
?>