algoritmo "atividade 07"
// Fa�a um algoritmo que leia a idade de uma pessoa expressa em anos,
//meses e dias e escreva a idade dessa pessoa expressa apenas em dias.
//Considerar ano com 365 dias e m�s com 30 dias.
var
 anos, meses, dias, idade : inteiro
inicio
escreva("digite quantos anos voce tem")
   leia(anos)
   escreva("digite quantos meses voc� tem apos os mes do seu aniv")
   leia(meses)
   escreva("digite quantos dias apos o dia de seu aniversario")
   leia(dias)

   idade <- (anos * 365) + (meses * 30) + dias

   escreva("a idade em dias �: ", idade)
fimalgoritmo
