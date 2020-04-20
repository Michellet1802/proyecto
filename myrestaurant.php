<?php
include('session_m.php');

if(!isset($login_session)){
header('Location: managerlogin.php'); // Redireccionamiento 
}

?>
<!DOCTYPE html>
<html>

  <head>
    <title> Admi | Le Cafe' </title>
  </head>

  <link rel="stylesheet" type = "text/css" href ="css/myrestaurant.css">
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>

  <body>


    <script type="text/javascript">
      window.onscroll = function()
      {
        scrollFunction()
      };

      function scrollFunction(){
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
          document.getElementById("myBtn").style.display = "block";
        } else {
          document.getElementById("myBtn").style.display = "none";
        }
      }

      function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
      }
    </script>

    <nav class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
            <span class="sr-only">Barra de navegacion</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">Le Cafe'</a>
        </div>

        <div class="collapse navbar-collapse " id="myNavbar">
          <ul class="nav navbar-nav">
            <li><a href="index.php">Inicio</a></li>
            <li><a href="aboutus.php">Acerca De</a></li>
            <li><a href="contactus.php">Contacto</a></li>
          </ul>

          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"> Bienvenido <?php echo $login_session; ?> </a></li>
            <li class="active"> <a href="managerlogin.php">Panel de control del admi</a></li>
            <li><a href="logout_m.php">Cerrar Sesión </a></li>
          </ul>
        </div>

      </div>
    </nav>




<div class="container">
    <div class="jumbotron">
     <h1>Hola Admi! </h1>
     <p>Gestiona todo tu restaurante desde aquí</p>

    </div>
    </div>
<div class="container">
    <div class="container">
    	<div class="col">
    		
    	</div>
    </div>

    
    	<div class="col-xs-3" style="text-align: center;">

    	<div class="list-group">
    		<a href="myrestaurant.php" class="list-group-item active">Mi Restaurante</a>
    		<a href="view_food_items.php" class="list-group-item ">Ver Comida</a>
    		<a href="add_food_items.php" class="list-group-item ">Añadir Comida</a>
    		<a href="edit_food_items.php" class="list-group-item ">Editar Comida</a>
    		<a href="delete_food_items.php" class="list-group-item ">Eliminar Comida</a>
    	</div>
    </div>
    


    
    <div class="col-xs-9">
      <div class="form-area" style="padding: 0px 100px 100px 100px;">
        <form action="myrestaurant1.php" method="POST">
        <br style="clear: both">
          <h3 style="margin-bottom: 25px; text-align: center; font-size: 30px;"> Mi Restaurante</h3>

          <div class="form-group">
            <input type="text" class="form-control" id="name" name="name" placeholder="Nombre de tu Restaurante" required="">
          </div>

          <div class="form-group">
            <input type="email" class="form-control" id="email" name="email" placeholder="Email de tu Restaurante" required="">
          </div>     

          <div class="form-group">
            <input type="text" class="form-control" id="contact" name="contact" placeholder="Algun Numero de Contacto de Restaurante" required="">
          </div>

          <div class="form-group">
            <input type="text" class="form-control" id="address" name="address" placeholder="Dirección de tu Restaurante" required="">
          </div>

          <div class="form-group">
          <button type="submit" id="submit" name="submit" class="btn btn-primary pull-right"> AÑADIR RESTAURANTE </button>    
      </div>
        </form>

        
        </div>
      
    </div>
</div>

  </body>
</html>