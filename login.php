<?php
session_start();
require_once('Database.php');
?>
<!DOCTYPE html>
<html lang="es">
   <head>
      <meta charset="utf-8">
      <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css" media="screen">
      <link rel="stylesheet" href="bower_components/normalize-css/normalize.css">
      <style media="screen">
         body{
            background: #eee;
            padding-top: 40px;
            padding-bottom: 40px;
         }
      </style>
      <title>Log In</title>
   </head>
   <body>
      <div class="container">
         <form class="col col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4" method="post">
            <h2 class="form-signin-heading">Loguéate</h2>
            <input type="text" name="inputUser" placeholder="Usuario" class="form-control" required="">
            <input type="password" name="inputPass" placeholder="Contraseña" class="form-control" required="">
            <button type="submit" name="btnSubmit" class="btn btn-lg btn-warning btn-block">Entrar</button>
         </form>
      </div>
      <script type="text/javascript" src="bower_components/jquery/dist/jquery.min.js"></script>
   </body>
</html>
<?php
if( isset($_POST['btnSubmit']) ){
   $usuario = $_POST['inputUser'];
   $contra = $_POST['inputPass'];

   $link = Database::conectar();
   $link = Database::verificaUsuario($usuario,$contra);

   $_SESSION['usuario'] = $link['usuario'];

   $link = Database::desconectar();

   if( $_SESSION['usuario'] != 'chiwy' ){
      echo "<div class='alert alert-danger'><a href='#' class='close' data-dismiss='alert'>&times;</a><strong>Error:</strong> usuario no encontrado</div>";
      header("refresh:3;url=login.php");
   }else{
      echo "<div class='alert alert-success'><a href='#' class='close' data-dismiss='alert'>&times;</a><strong>Usuario correcto.</strong> Será redirigido.</div>";
      header("refresh:3;url=listar.php");
   }
}
?>
