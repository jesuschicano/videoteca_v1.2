<?php
session_start();
?>
<!DOCTYPE html>
<html lang="es">
   <head>
      <meta charset="utf-8">
      <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css" media="screen">
      <link rel="stylesheet" href="bower_components/normalize-css/normalize.css">
      <title>Insertar película</title>
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
            <li role="presentation" class="active"><a href="insertar.php">Insertar</a></li>
            <li role="presentation"><a href="buscar.php">Buscar</a></li>
            <li role="presentation"><a href="cerrar-sesion.php">Cerrar sesión</a></li>
         </ul>
      </aside>

      <!-- Contenido para la inserción de películas -->
      <div class="col col-lg-10 col-md-10 col-sm-12 col-xs-12" id="content">
         <div class="page-header">
            <h1 class="text-center">Insertar película</h1>
         </div>
         <!-- formulario de insercion -->
         <form method="post">
            <div class="form-group">
               <label for="inputTitle">Título</label>
               <input type="text" class="form-control" name="inputTitle" required="">
            </div>
            <div class="form-group">
               <label for="inputYear">Año</label>
               <input type="number" class="form-control" name="inputYear" min="1900" max="2099" required="">
            </div>
            <div class="form-group">
               <label for="inputDuration">Duración</label>
               <input type="number" class="form-control" name="inputDuration" min="1" max="999" required="">
            </div>
            <div class="form-group">
               <label for="inputDirector">Director</label>
               <input type="text" class="form-control" name="inputDirector" required="">
            </div>
            <div class="form-group">
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
            </div>
            <div class="form-group">
               <button type="submit" class="btn btn-default" name="btnAdd">Insertar</button>
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
