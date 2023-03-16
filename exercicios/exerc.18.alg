algoritmo "exercício 18"
// Ler o ano atual e o ano de nascimento de uma pessoa. Escrever uma mensagem que diga se ela
poderá ou não votar este ano (não é necessário considerar o mês em que a pessoa nasceu).
var
AnoAtual, AnoNasc, Idade: Inteiro
inicio
Escreva("Digite o ano atual: ")

   Leia(AnoAtual)

   Escreva("Digite o ano de nascimento: ")

   Leia(AnoNasc)

   Idade <- AnoAtual - AnoNasc



   Se (Idade >=18) entao

     Escreva("Você tem", Idade, " anos. Está apto a votar")

   senao

      Escreva("Você tem", Idade, " anos. Não está apto a votar")

   FimSe
fimalgoritmo
