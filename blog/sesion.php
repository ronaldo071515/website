<?php
    session_start();
    $varsession = $_SESSION['usuario'];
    if ($varsession == null || $varsession = '') {
        header ("Location:../index.php");
    }
?>