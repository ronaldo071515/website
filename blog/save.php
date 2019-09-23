<?php
    include ("../conexion/conexion.php");
    error_reporting(0);
        $title = $_POST['title'];
        $description = $_POST['description'];
        $archivo = $_FILES['img']['tmp_name'];
        $imagen = "../img/".$_FILES['img']['name'];
        move_uploaded_file($archivo,$imagen);

        if (empty($title || empty($description))) {
            echo "<script>
            alert('llena los campos');
            </script>";
        }else {
            $query = "INSERT INTO article (id,title, author, img, cuerpo) VALUES
            (1, '$title', 'fuerse', '$imagen', '$description')";
   
           $result = mysqli_query($connection,$query);
           if(!$result){
               die ("query fatal");
           }else{
               echo "save successfully";
           }
        }
?>