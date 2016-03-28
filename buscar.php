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
      <title>Buscador de películas</title>
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
            <li class="active"><a href="buscar.php">Buscar</a></li>
            <li><a href="aleatorio.php">Lotería</a></li>
            <li><a href="cerrar-sesion.php">Cerrar sesión</a></li>
         </ul>
      </aside>

      <!-- Contenido del listado de películas -->
      <div class="small-12 large-10 columns">
         <h1 class="text-center">Búsqueda avanzada</h1>

         <!-- formulario buscar por titulo -->
         <h3>Búsqueda por título</h3>
         <form method="post" >
            <label for="inputTitulo">Título</label>
            <input type="search" name="inputTitulo" id="jetsSearchTitle">
         </form>

         <table class="table">
            <thead><th>TÍTULO</th><th>AÑO</th><th>DURACIÓN</th><th>DIRECTOR</th></thead>
            <tbody id="jetsContent">
               <?php
               require_once('Database.php');

               $link = Database::conectar();
               $consulta = 'SELECT * FROM PELICULAS ORDER BY titulo ASC';
               foreach ($link->query($consulta) as $row) {
                  echo '<tr><td>'.$row['titulo'].'</td><td>'.$row['year'].'</td><td>'.$row['duracion'].'</td><td>'.$row['director'].'</td></tr>';
               }
               $link = Database::desconectar();
               ?>
            </tbody>
         </table>
      </div>

      <script type="text/javascript" src="bower_components/jquery/dist/jquery.min.js"></script>
      <script src="bower_components/jets/jets.min.js"></script>
      <script>
         var jets = new Jets({
            searchTag: '#jetsSearchTitle',
            contentTag: '#jetsContent',
            columns: [0]
         });
      </script>
   </body>
</html>
