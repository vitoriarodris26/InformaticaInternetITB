<?php

require __DIR__. "/classes/veiculo.php";

// Criando o 1° objeto

$veiculo1 =new Veiculo();
$veiculo1 ->nome ="Honda-Fit";
$veiculo1 ->chassi = "JWETJI-LFJDJLSD";
$veiculo1 ->anoFabricacao = "2019";
$veiculo1 ->cor = "Prata";
$veiculo1 ->marca = "Honda";

// Criando 2º objeto

var_dump([
    $veiculo1
]);

$veiculo2 =new Veiculo();
$veiculo2 ->nome ="Ford";
$veiculo2 ->chassi = "JWETJI-LKFFNBC";
$veiculo2 ->anoFabricacao = "2020";
$veiculo2 ->cor = "Dourado";
$veiculo2 ->marca = "Ford";

var_dump([
    $veiculo2
]);


