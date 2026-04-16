Algoritmo "Exercicio_12"
// 
//  
// Descrição   : Classifica por idade
// Autor(a)    : Nahomy Natera
// Data atual  : 05/03/2026
Var
// Seção de Declarações das variáveis 
idade:inteiro


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Digite a sua idade: ")
leia(idade)
se(idade >= 0) e (idade <= 12)entao
         escreva("Vc é uma criança!")
senao
     se(idade >= 13) e (idade <= 17)entao
         escreva("Vc é um adolescente!")
senao
     se(idade >= 18 ) e (idade <= 59)entao
         escreva("Vc é um Adulto!")
senao
     se(idade >= 60) e (idade <= 60)entao
         escreva("Vc é um Idoso!")

fimse
fimse
fimse
fimse
Fimalgoritmo