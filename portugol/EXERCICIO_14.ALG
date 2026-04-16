Algoritmo "Exercicio_14"
// 
//  
// Descrição   : Define se pode receber um desconto na compra ou não
// Autor(a)    : Nahomy Natera
// Data atual  : 05/03/2026
Var
// Seção de Declarações das variáveis 
valor, Desconto, valorcompra:Real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Digite o valor da sua compra: R$ ")
leia(valor)
se (valor > 100) entao
      desconto <- valor * 0.10
      valorcompra <- valor - desconto
      escreval("Desconto aplicado (10%): R$ ", desconto:5:2)
senao
      valor <- valorCompra
      escreval("Sem desconto. Valor menor ou igual a 100.")
   fimse

   escreval("Valor final da compra: R$ ", valorcompra:5:2)

Fimalgoritmo