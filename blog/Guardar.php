function filtrado($datos){
    $datos = trim($datos); // Elimina espacios antes y después de los datos
    $datos = stripslashes($datos); // Elimina backslashes \
    $datos = htmlspecialchars($datos); // Traduce caracteres especiales en entidades HTML
    return $datos;
}

if(isset($_POST["submit"]) && $_SERVER["REQUEST_METHOD"] == "POST"){
    $Agregar Articulo = filtrado($_POST["Agregar Articulo"]);
    $ID-Fecha-Articulo = filtrado($_POST["ID-Fecha-Articulo"]);
    $Autor Articulo = filtrado($_POST["Autor Articulo"]);
}


<?php if(isset($_POST["submit"])): ?>
<h2>Mostrar datos enviados</h2>
Agregar Articulo : <?php isset($Agregar Articulo) ? print $Agregar Articulo : ""; ?> <br>
ID-Fecha-Articulo : <?php isset($ID-Fecha-Articulo) ? print $ID-Fecha-Articulo : ""; ?> <br>
Autor Articulo : <?php isset($Autor Articulo) ? print $Autor Articulo : ""; ?> <br>
<?php endif; ?>
