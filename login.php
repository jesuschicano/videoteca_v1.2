<?php
session_start();
require_once('Database.php');
?>
<!DOCTYPE html>
<html lang="es">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="bower_components/foundation-sites/dist/foundation.css">
      <link rel="stylesheet" href="bower_components/normalize-css/normalize.css">
      <title>Log In</title>
   </head>
   <body>
      <h1 class="text-center">Loguéate</h1>
      <form method="post">
         <div class="row small-10 large-6">
            <input type="text" name="inputUser" placeholder="Usuario" required>
            <input type="password" name="inputPass" placeholder="Contraseña" required>
            <button type="submit" class="expanded button" name="btnSubmit">Entrar</button>
         </div>
      </form>
      <script type="text/javascript" src="bower_components/jquery/dist/jquery.min.js"></script>
   </body>
   <script type="text/javascript">
      function redireccionaError(){
         window.location = "login.php";
      }
      function redireccionaOk(){
         window.location = "listar.php";
      }
   </script>
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
      echo "<div class='callout alert text-center'>
      <h5>Error: Usuario incorrecto. Vuelva a intentarlo</h5>
      </div>";
      echo "<script>window.setTimeout(redireccionaError,3000);</script>";
   }else{
      echo "<div class='callout success text-center'>
      <h5>Usuario correcto. Será redireccionado.</h5>
      </div>";
      echo "<script>window.setTimeout(redireccionaOk,3000);</script>";
   }
}
?>
