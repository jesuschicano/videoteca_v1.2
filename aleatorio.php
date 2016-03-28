<?php
session_start();
?>
<!DOCTYPE html>
<html lang="es">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="bower_components/foundation-sites/dist/foundation.css">
      <link rel="stylesheet" href="bower_components/normalize-css/normalize.css">
      <title>Lotería de películas</title>
   </head>
   <body>
      <?php
      if( !isset($_SESSION['usuario']) ){
         echo '<div class="callout alert text-center">'.
                  '<strong>Error:</strong> No tiene permisos para estar aquí.'.
               '</div>';
         echo '<script>window.setTimeout(function(){
               window.location = "login.php";
            }, 3000);
            </script>';
         exit();
      }
      ?>

      <!-- Menú lateral -->
      <aside class="small-12 large-2 columns">
         <ul class="menu vertical">
            <li><a href="listar.php">Listar</a></li>
            <li><a href="insertar.php">Insertar</a></li>
            <li><a href="buscar.php">Buscar</a></li>
            <li class="active"><a href="aleatorio.php">Lotería</a></li>
            <li><a href="cerrar-sesion.php">Cerrar sesión</a></li>
         </ul>
      </aside>

      <!-- Contenido del listado de películas -->
      <div class="small-12 large-10 columns">
         <h1 class="text-center">Lotería de películas</h1>

         <div class="row">
            <div class="text-center">
               <form action="#" method="POST">
                  <input type="submit" class="success button" name="btn_loteria" value="Probar suerte">
               </form>
               <?php
               require_once("Database.php");

               if( isset($_POST["btn_loteria"]) ){
                  $link = Database::conectar();

                  $consulta = 'SELECT * FROM PELICULAS ORDER BY RAND() LIMIT 1';
                  echo '<div class="page-header">';
                  foreach ($link->query($consulta) as $row) {
                     echo '<h4>'.$row['titulo'].'</h4>';
                  }
                  echo '</div>';
                  $link = Database::desconectar();
               }
               ?>
            </div>
         </div>
      </div>

      <script type="text/javascript" src="bower_components/jquery/dist/jquery.min.js"></script>
   </body>
</html>
