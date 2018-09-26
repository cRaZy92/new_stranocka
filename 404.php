<?php
    session_start();
    $title="ERROR 404";
    include "html_hlavicka.php";
    include "body_start.php";
    ?>
    <h2 class="text-center">Táto stránka nexistuje.</h2>
    <br>
    <h3 class="text-center"><a href="index.php">Klikni sem pre vrátenie sa na hlavnú stránku.</a></h3>
    <?php
    include "body_end.php";
    include "html_pata.php";

?>