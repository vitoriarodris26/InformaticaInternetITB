<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Exercício 7</title>
    <style type= "text/css"> 
    body {
        background-color:#f2b1e4;
    } 
    </style>
</head>
<body>

    <h2>Exercício 7 (Maior e menor)</h2>
    
<?php
require __DIR__."/includes/funcoes.php"; 
$numerosAlea = NumMinMax();
$maiorMenor = array();

echo json_encode($numerosAlea);
#calcVolume($raio);

?>

<hr>
<a href="index.php">Voltar</a>
</body>
</html>
