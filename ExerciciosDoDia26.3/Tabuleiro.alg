algoritmo "Tabuleiro"
var
Procedimento MarcaTabuleiro(i , j : Inteiro)
var
s: Caractere
inicio
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

Procedimento JogadoVetor()
inicio
escreval("Jogar: ")
leia(jogada)
escolha jogada
caso 1
   MarcaTabuleiro(3,1)
caso 2
   MarcaTabuleiro(3,2)
caso 3
   MarcaTabuleiro(3,3)
caso 4
   MarcaTabuleiro(2,1)
caso 5
   MarcaTabuleiro(2,2)
caso 6
   MarcaTabuleiro(2,3)
caso 7
   MarcaTabuleiro(1,1)
caso 8
   MarcaTabuleiro(1,2)
caso 9
   MarcaTabuleiro(1,3)
fimescolha
fimprocedimento
procedimento atualizadoTabuleiro()
inicio
para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      se (tabuleiro[i,j] <> "") entao
         escreva(tabuleiro[i,j],"|")
      senao
         //escreve(i,j,"|")
         escreva(i,j," |")
      fimse
   fimpara
   escreval("Jogar: ")
fimpara
fimprocedimento

tabuleiro : vetor [1..3,1..3] de Caractere
i , j , jogada , cont: Inteiro
inicio

para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      escreva(i,j,"|")
   fimpara
   escreval("Jogar: ")
fimpara
cont := 1
repita
   JogadoVetor()
   limpatela
   atualizadoTabuleiro()
   cont := cont + 1
fimalgoritmo


