<?php
class Database{
   // Atributos
   private static $host = 'localhost';
   private static $dbname = 'videoteca';
   private static $dbuser = 'root';
   private static $dbpass = 'root';

   private static $cont = null;

   // Métodos
   public function __construct(){
      die('No se puede instanciar esta conexión.');
   }

   public static function conectar(){
      if( self::$cont == null ){
         try {
            self::$cont = new PDO("mysql:host=".self::$host.";dbname=".self::$dbname.";charset=utf8", self::$dbuser, self::$dbpass);
            self::$cont->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return self::$cont;
         } catch (PDOException $e) {
            echo "Error al intentar conectarse a la BD: ".$e->getMessage();
         }
      }
   }// end conectar

   public static function desconectar(){
      self::$cont = null;
   }// end desconectar

   public static function verificaUsuario($usuario, $contra){
      try {
         $datos = array('user'=>$usuario, 'pass'=>$contra);

         $consulta = self::$cont->prepare("SELECT * FROM USUARIOS WHERE usuario=:user AND password=:pass");
         $consulta->execute($datos);

         if( $consulta->rowCount()==1 ){
            return $consulta->fetch(PDO::FETCH_ASSOC);
         }
      } catch (PDOException $e) {
         echo "No se ha encontrado al usuario: ".$e->getMessage();
      }
   }// end verificaUsuario

   public static function insertaPeli($titulo,$anno,$duracion,$director,$genero){
      try {
         $datos = array('titulo'=>$titulo, 'year'=>$anno, 'duracion'=>$duracion, 'director'=>$director, 'id_genero'=>$genero);

         $q = self::$cont->prepare('INSERT INTO PELICULAS (titulo,year,duracion,director,id_genero) VALUES (:titulo,:year,:duracion,:director,:id_genero)');
         $q->execute($datos);

         if( $q->rowCount() == 1 ){
            echo '<script>'.
                     'alert("Película insertada correctamente.");'.
                  '</script>';
         }
      } catch (PDOException $e) {
         echo $e->getMessage();
      }
   }// end insertaPeli

}// end class
?>
