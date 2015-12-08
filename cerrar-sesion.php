<?php
session_start();
// eliminar todas las variables de sesión
session_unset();
// destruir la sesión
session_destroy();

echo "<h3>Se ha cerrado la sesión. Será redirigido.</h3>";

// volver a la pantalla de login
echo "<script>
   function redirecciona()
      window.location = 'login.php';

   setTimeout(redirecciona,3000);
</script>";
?>
