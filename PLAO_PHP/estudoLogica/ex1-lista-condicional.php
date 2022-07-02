<?php

// Variáveis
// No PHP não há necessidade de declararmos o tipo da variável,ou seja,
// tudo é feito de forma transparente e automática pela linguagem.
// Para declarar uma variável utilize o símbolo '$' na frente do nome
// Veja:
$a = 2;
$b = 3;
$c = 5;
$d = 9;

# Exercíco A

if(!($d > 5)) {
    $x = ($a + $b) * $d;
}else{
    $x = ($a - $b)/$c;
}
 /*No php é possível misturar códigos php com html, ou seja com um arquivo
       com extensão .php você poderá também trabalhar tags html.Veja:*/
echo '<font color=red>O valor de x para o exercício A é: </font><b>'.$x . '</b><br>';


# Exercício B

if(($a > 2)and($b < 7)) {
    $x = ($a+2)*($b-2);
}else{
    $x = ($a+$b) /$d*($c+$d);
}
echo '<font color=green>O valor de x para o exercício B é: </font><b>'.$x . '</b><br>';

# Exercício C

if(($a = 2)or($b < 7)) {
    $x = ($a = 2)*($b-2);
}else{
    $x = ($a + $b)/$d*($c + $d);
}
echo '<font color=blue>O valor de x para o exercício C é: </font><b>'.$x . '</b><br>';

# Exercíco D

if(($a > 2)or!($b < 7)){
    $x = ($a + $b - 2);
}else{
    $x = ($a-$b);
}
echo '<font color=red>O valor de x para o exercício D é: </font><b>'.$x . '</b><br>';

# Exercíco E

if(!($a > 2)or!($b < 7)) {
    $x = ($a + $b);
}else{
    $x = ($a / $b);
}
echo '<font color=green>O valor de x para o exercício E é: </font><b>'.$x . '</b><br>';

# Exercíco F

if(!($a > 3)and!($b < 5)) {
    $x = ($a + $d);
}else{
    $x = ($d / $b);
}
echo '<font color=blue>O valor de x para o exercício F é: </font><b>'.$x . '</b><br>';

# Exercício G

if(($c >= 2)and($b <=7)) {
    $x = ($a + $d)/2;
}else{
    $x = ($d/$c);
}
echo '<font color=red>O valor de x para o exercício G é: </font><b>'.$x . '</b><br>';

# Exercício H

if(($a >=2)or($c<=1)) {
    $x = ($a + $d)/2;
}else{
    $x = ($d / $c);
}
echo '<font color=green>O valor de x para o exercício H é: </font><b>'.$x . '</b><br>';