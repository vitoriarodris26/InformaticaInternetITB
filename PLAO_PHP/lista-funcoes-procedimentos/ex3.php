<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Exercício 3</title>
    <style type= "text/css"> 
    body {
        background-color:#f2b1e4;
    } 
    </style>
    
</head>
<body>

    <h2>Exercício 3 (Calculo de Báskara)</h2>
    <form action="?" method="get">
        <label for="">Valor A:</label>
        <input name="Va" id="Va"><br> 
        <label for="">Valor B:</label>
        <input name="Vb" id="Vb"><br>
        <label for="">Valor C:</label> 
        <input name="Vc" id="Vc"><br> 
        <input type="submit" value="Calcular"> 
    </form>
<?php
require __DIR__."/includes/funcoes.php"; 

$a = isset($_GET["Va"])?$_GET["Va"]:null;
$b = isset($_GET["Vb"])?$_GET["Vb"]:null;
$c = isset($_GET["Vc"])?$_GET["Vc"]:null;
#calcVolume($raio);
$x = calcBaskara($a, $b, $c);
echo "$x<br>";
$result1 = resul1($a, $b, $x);
echo "$result1<br>";
$result2 = resul2($a, $b, $x);
echo "$result2";
?>

<hr>
<a href="index.php">Voltar</a>
</body>
</html>
