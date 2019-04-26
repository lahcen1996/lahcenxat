<?php

// El codi seguent serveix per connecta amb la BD 'my_db'
$con = mysqli_connect('localhost', 'root', '', 'xat');
// El codi seguent serveix per comprova la connexió
if (mysqli_connect_errno()) {
    echo 'Failed to connect to MySQL: ' . mysqli_connect_error();
}


?>
