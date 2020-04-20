<?php
session_start();
?>

<html>

  <head>
    <title> Cafe </title>
      
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    
      
  </head>

  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">

  <link rel="stylesheet" type = "text/css" href ="css/index.css">
   <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
    
  <body >
      
      
      
  <div class="bgded" style="background-image:url('images/demo/backgrounds/1.jpg');"> 
    
       <div class="wrapper row1">
    <header id="header" class="hoc clear"> 
        
        
    </header>
      
      </div>
      
      
      
      
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
            <span class="sr-only">Barra de navegación</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">Le Cafe'</a>
        </div>

        <div class="collapse navbar-collapse " id="myNavbar">
          <ul class="nav navbar-nav">
            <li class="active" ><a href="index.php">Inicio</a></li>
            <li><a href="aboutus.php">Acerca De</a></li>
            <li><a href="contactus.php">Contacto</a></li>

          </ul>

<?php
if(isset($_SESSION['login_user1'])){

?>


          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Bienvenido <?php echo $_SESSION['login_user1']; ?> </a></li>
            <li><a href="myrestaurant.php">Panel de control del Admi</a></li>
            <li><a href="logout_m.php"><span class="glyphicon glyphicon-log-out"></span> Cerar Sesión </a></li>
          </ul>
<?php
}
else if (isset($_SESSION['login_user2'])) {
  ?>
           <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Bienvenido <?php echo $_SESSION['login_user2']; ?> </a></li>
            <li><a href="foodlist.php"> Zona de Comida </a></li>
            <li><a href="cart.php">Carrito
              (<?php
              if(isset($_SESSION["cart"])){
              $count = count($_SESSION["cart"]); 
              echo "$count"; 
            }
              else
                echo "0";
              ?>)
             </a></li>
            <li><a href="logout_u.php"> Cerrar Sesión </a></li>
          </ul>
  <?php        
}
else {

  ?>

<ul class="nav navbar-nav navbar-right">
            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Registrarse <span class="caret"></span> </a>
                <ul class="dropdown-menu">
              <li> <a href="customersignup.php"> Registrar Usuario</a></li>
              <li> <a href="managersignup.php">Registrar Admi</a></li>
            
            </ul>
            </li>

            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Iniciar Sesión <span class="caret"></span></a>
              <ul class="dropdown-menu">
              <li> <a href="customerlogin.php"> Iniciar Sesión Usuario</a></li>
              <li> <a href="managerlogin.php"> Iniciar Sesión Admi</a></li>
              
            </ul>
            </li>
          </ul>

<?php
}
?>
       </div>

      </div>
    </nav>
      
      

    <div class="wide">
      	<div class="col-xs-5 line"><hr></div>
        <div class="col-xs-2 logo"><img src="images/LogoImage.jpg"></div>
        <div class="col-xs-5 line"><hr></div>
        <section id="pageintro" class="hoc clear">
   
  </section>
        <div class="tagline"> <font color="red"><strong><br><br><br>
            Gracias por visitar nuestra pagina, somos una empresa socialmente responsable y garantizada. Te invitamos a que compres con nosotros, productos garantizados!</strong></font><font color="green"><strong><em></em></strong></font></div>
    </div>
    
    <div class="orderblock">
    <h2>¿Tienes hambre?</h2>
    <center><a class="btn btn-success btn-lg" href="customerlogin.php" role="button" > ¡Ordena Ahora! </a></center>
    </div>

    
      </div> 
      
      

</body>
</html>