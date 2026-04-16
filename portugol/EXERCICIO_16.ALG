Algoritmo "Exercicio_16"
// 
//  
// Descrição   : Triângulo Válido
// Autor(a)    : Nahomy Natera
// Data atual  : 06/03/2026
Var
// Seção de Declarações das variáveis 
a, b, c: Real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Digite o valor de a: ")
leia(a)
escreva("Digite o valor da b: ")
leia(b)
escreva("Digite o valor da c: ")
leia(c)
se (a + b > c) e (a + c > b) e (b + c > a) entao
    escreval("Os lados formam um triângulo")
senao
    escreval("Os lados não forman um triangulo")

fimse
fimalgoritmo