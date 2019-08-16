<?php
require ("config.php");
try {
    $mbd = new PDO('mysql:host=localhost;dbname=bd_blogin', $user, $pass);
    foreach($mbd->query('SELECT * from FOO') as $fila) {
        print_r($fila);
    }
    $mbd = null;
} catch (PDOException $e) {
    print "¡Error!: " . $e->getMessage() . "<br/>";
    die();
}
?>