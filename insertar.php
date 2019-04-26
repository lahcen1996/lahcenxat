<html>
    <head><meta http-equiv="Content-Type" content="text/html; charset=gb18030">
    <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
<?php

if (isset($_POST["enviar"])) {

    include ('connexioBD.php');

   $nom = mysqli_real_escape_string($con, $_POST["nom"]);
   $missatge = mysqli_real_escape_string($con, $_POST["missatge"]);
    // $nom = $_POST["nom"];
    // $missatge = $_POST["missatge"];

    if ($nom != '' && $missatge != '') {

    // Aqui executem una insercio 
        $sql = "insert into missatges values (null, '$nom', '$missatge', time (NOW()))";

    // Aqui Obténim el resultat de la consulta com a un array associatiu i proccem
        if (mysqli_query($con, $sql)) {
            header("Location: index.php");
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($con);
        }
        
  //A continuacio tenquem la connexio
        mysqli_close($con);
    } else {
        header("Location: index.php?mensaje=El campo nombre o texto no puede estar vacio, porfavor rellene todos los campos");
// error(header("Location: index.php?mensaje=El campo nombre o texto no puede estar vacio, porfavor rellene todos los campos"));
        exit();
    }
} else {
    header("Location: index.php");
    exit();
}

?>
</body>
</html>
