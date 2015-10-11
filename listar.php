<?php
session_start();
?>
<!DOCTYPE html>
<html lang="es">
   <head>
      <meta charset="utf-8">
      <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css" media="screen">
      <link rel="stylesheet" href="bower_components/normalize-css/normalize.css">
      <title>Listado de películas</title>
   </head>
   <body>

      <nav class="navbar navbar-default" role="navigation">
         <div>
            <ul class="nav navbar-nav">
               <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Menú<b class="caret"></b></a>
                  <ul class="dropdown-menu">
                     <li><a href="listar.php">Listar</a></li>
                     <li><a href="cerrar-sesion.php">Cerrar sesión</a></li>
                  </ul>
               </li>
            </ul>
         </div>
      </nav>

      <div class="page-header">
         <h1 class="text-center">Listado de películas</h1>
      </div>

      <div class="container">
      <?php
      if( $_SESSION['usuario'] != 'chiwy' OR empty($_SESSION['usuario']) ){
         echo '<div class="alert alert-danger">'.
                  '<a href="#" class="close" data-dismiss="alert">&times;</a><strong>Error:</strong> No tiene permisos para estar aquí.'.
               '</div>';
         header("refresh:3,url=login.php");
         exit();
      }else{
         require_once('Database.php');

         $link = Database::conectar();
         $consulta = 'SELECT * FROM PELICULAS ORDER BY titulo ASC';

         echo '<table class="table table-condensed">';
         echo '<th>TÍTULO</th><th>AÑO</th><th>DURACIÓN</th><th>DIRECTOR</th>';
         foreach ($link->query($consulta) as $row) {
            echo '<tr><td>'.$row['titulo'].'</td><td>'.$row['year'].'</td><td>'.$row['duracion'].'</td><td>'.$row['director'].'</td></tr>';
         }
         echo '</table>';
         $link = Database::desconectar();
      }
      ?>
      </div>

      <script type="text/javascript" src="bower_components/jquery/dist/jquery.min.js"></script>
   </body>
</html>
