algoritmo "exerc�cio 18"
// Ler o ano atual e o ano de nascimento de uma pessoa. Escrever uma mensagem que diga se ela
poder� ou n�o votar este ano (n�o � necess�rio considerar o m�s em que a pessoa nasceu).
var
AnoAtual, AnoNasc, Idade: Inteiro
inicio
Escreva("Digite o ano atual: ")

   Leia(AnoAtual)

   Escreva("Digite o ano de nascimento: ")

   Leia(AnoNasc)

   Idade <- AnoAtual - AnoNasc



   Se (Idade >=18) entao

     Escreva("Voc� tem", Idade, " anos. Est� apto a votar")

   senao

      Escreva("Voc� tem", Idade, " anos. N�o est� apto a votar")

   FimSe
fimalgoritmo
