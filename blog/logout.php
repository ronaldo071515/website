<?php
    session_start();
    $varsession  = $_SESSION['usuario'];
    if($varsession == null || $varsession = ''){
        header ("Location:../index.php");
    }
    session_destroy();
    header ("Location:../index.php");
?>