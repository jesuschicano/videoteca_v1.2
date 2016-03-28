<?php
session_start();
// eliminar todas las variables de sesión
session_unset();
// destruir la sesión
session_destroy();
?>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="bower_components/foundation-sites/dist/foundation.css">
      <link rel="stylesheet" href="bower_components/normalize-css/normalize.css">
      <title>Cerrando sesión...</title>
   </head>
   <body>
   <?php
   echo "<div class='callout success text-center'>
         <h3>Se ha cerrado la sesi&oacute;n. Ser&aacute; redirigido. Sino, haga click <a href='login.php'>aqu&iacute;</a></h3>
      </div>";

   // volver a la pantalla de login
   echo "<script>
      function redirecciona()
         window.location = 'login.php';

      setTimeout(redirecciona,3000);
   </script>";
   ?>
   </body>
</html>
