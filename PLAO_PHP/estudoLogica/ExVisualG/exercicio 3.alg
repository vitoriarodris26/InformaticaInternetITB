algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 07/04/2018
// Se��o de Declara��es 
var
quantidade_paes,quantidade_broas:inteiro
valor_paes,valor_broas:real
total_paes,total_broas:real
valor_vendas:real
porcent_poupanca:real
valor_poupanca:real
total_lucro:real
inicio
// Se��o de Comandos 
escreva(quantidade_paes)
leia(quantidade_paes)
escreva(valor_paes)
leia(valor_paes)
escreva(quantidade_broas)
leia(quantidade_broas)
escreva(valor_broas)
leia(valor_broas)

total_paes<-(quantidade_paes*valor_paes)
total_broas<-(quantidade_broas*valor_broas)
valor_vendas<-(total_paes+total_broas)

//se��o de comandos

escreva(porcent_poupanca)
leia(porcent_poupanca)
valor_poupanca<-(valor_vendas/porcent_poupanca)

//se��o de comandos
total_lucro<-(valor_vendas-valor_poupanca)
fimalgoritmo
