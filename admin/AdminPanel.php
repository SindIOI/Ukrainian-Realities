<?php
if (!$_COOKIE["imAdmin"] == true){
    header("Location: index.php");
}
include("config.php");

?>