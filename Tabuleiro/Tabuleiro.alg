algoritmo "Tabuleiro"
var
procedimento marcaTabuleiro(i , j : inteiro)
var
s: caractere
início
se (cont%2 = 0) entao
   s := "O"
senao
   s := "X"
fimse

se (tabuleiro[i,j] = "") entao
   tabuleiro[i,j] := s
senao
   cont := cont -1
fimse
fimprocedimento

procedimento jogadoVetor()
início
escreval("Jogar: ")
leia(jogada)
escolha jogada
caso 1
   marcaTabuleiro(3,1)
caso 2
   marcaTabuleiro(3,2)
caso 3
   marcaTabuleiro(3,3)
caso 4
   marcaTabuleiro(2,1)
caso 5
   marcaTabuleiro(2,2)
caso 6
   marcaTabuleiro(2,3)
caso 7
   marcaTabuleiro(1,1)
caso 8
   marcaTabuleiro(1,2)
caso 9
   marcaTabuleiro(1,3)
fimescolha
fimprocedimento
procedimento atualizadoTabuleiro()
início
para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      se (tabuleiro[i,j] <> "") entao
         escreva(tabuleiro[i,j],"|")
      senao
         //escreve(i,j,"|")
         escreva(" |")
      fimse
   fimpara
   escreval("")
fimpara
fimprocedimento

tabuleiro : vetor [1..3,1..3] de caractere
i , j , jogada , cont: inteiro
início

para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      escreva(i,j,"|")
   fimpara
   escreval("")
fimpara
cont := 1
repita
   jogouVetor()
   limpatela
   atualizarTabuleiro()
   cont := cont + 1
comeu (cont = 10)

fimalgoritmo

