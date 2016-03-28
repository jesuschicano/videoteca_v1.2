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
      <title>Insertar película</title>
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
            <li role="presentation"><a href="listar.php">Listar</a></li>
            <li role="presentation" class="active"><a href="insertar.php">Insertar</a></li>
            <li role="presentation"><a href="buscar.php">Buscar</a></li>
            <li role="presentation"><a href="aleatorio.php">Lotería</a></li>
            <li role="presentation"><a href="cerrar-sesion.php">Cerrar sesión</a></li>
         </ul>
      </aside>

      <!-- Contenido para la inserción de películas -->
      <div class="small-12 large-10 columns">
         <h1 class="text-center">Insertar película</h1>
         <!-- formulario de insercion -->
         <form method="post">
               <label for="inputTitle">Título</label>
               <input type="text" name="inputTitle" required>
               <div class="medium-6 columns">
                  <label for="inputYear">Año</label>
                  <input type="number" class="form-control" name="inputYear" min="1900" max="2099" required="">
               </div>
               <div class="medium-6 columns">
                  <label for="inputDuration">Duración</label>
                  <input type="number" class="form-control" name="inputDuration" min="1" max="999" required="">
               </div>
               <label for="inputDirector">Director</label>
               <input type="text" class="form-control" name="inputDirector" required="">
               <label for="inputTitle">Título</label>
               <select class="form-control" name="selectGen">
                  <option value="0">Bélica</option>
                  <option value="1">Acción</option>
                  <option value="2">Aventura</option>
                  <option value="3">Animación</option>
                  <option value="4">Biografía</option>
                  <option value="5">Comedia</option>
                  <option value="6">Crimen</option>
                  <option value="7">Documental</option>
                  <option value="8">Drama</option>
                  <option value="10">Cine negro</option>
                  <option value="12">Horror</option>
                  <option value="13">Musical</option>
                  <option value="14">Misterio</option>
                  <option value="15">Romance</option>
                  <option value="16">Sci-fi</option>
                  <option value="17">Thriller</option>
                  <option value="19">Western</option>
                  <option value="20">Fantasía</option>
                  <option value="21">Histórica</option>
               </select>
               <hr>
               <div class="row">
                  <button type="submit" class="button" name="btnAdd">Insertar</button>
               </div>
         </form>
      </div>

      <script type="text/javascript" src="bower_components/jquery/dist/jquery.min.js"></script>
   </body>
</html>
<?php
require_once('Database.php');

if( isset($_POST['btnAdd']) ){
   $titulo = $_POST['inputTitle'];
   $duracion = $_POST['inputDuration'];
   $anno = $_POST['inputYear'];
   $director = $_POST['inputDirector'];
   $genero = $_POST['selectGen'];

   $link = Database::conectar();
   $link = Database::insertaPeli($titulo,$anno,$duracion,$director,$genero);
   $link = Database::desconectar();
}
?>
