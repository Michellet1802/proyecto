<?php
session_start();
if(session_destroy()) 
{
header("Location: managerlogin.php"); // Pag inicio
}
?>