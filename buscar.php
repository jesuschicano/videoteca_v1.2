<?php
session_start();
?>
<!DOCTYPE html>
<html lang="es">
   <head>
      <meta charset="utf-8">
      <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css" media="screen">
      <link rel="stylesheet" href="bower_components/normalize-css/normalize.css">
      <title>Buscador de películas</title>
   </head>
   <body>
      <?php
      if( !isset($_SESSION['usuario']) ){
         echo '<div class="alert alert-danger">'.
                  '<a href="#" class="close" data-dismiss="alert">&times;</a><strong>Error:</strong> No tiene permisos para estar aquí.'.
               '</div>';
         header("refresh:3,url=login.php");
         exit();
      }
      ?>

      <!-- Menú lateral -->
      <aside class="col col-lg-2 col-md-2 col-sm-12 col-xs-12">
         <h3>Menú</h3>
         <ul class="nav nav-pills nav-stacked">
            <li role="presentation"><a href="listar.php">Listar</a></li>
            <li role="presentation"><a href="insertar.php">Insertar</a></li>
            <li role="presentation" class="active"><a href="buscar.php">Buscar</a></li>
            <li role="presentation"><a href="cerrar-sesion.php">Cerrar sesión</a></li>
         </ul>
      </aside>

      <!-- Contenido del listado de películas -->
      <div class="col col-lg-10 col-md-10 col-sm-12 col-xs-12" id="content">
         <div class="page-header">
            <h1 class="text-center">Búsqueda avanzada</h1>
         </div>


      </div>

      <script type="text/javascript" src="bower_components/jquery/dist/jquery.min.js"></script>
   </body>
</html>
