algoritmo "ParOuImparProcedimento"

var
   N: Inteiro
Procedimento ParOuImpar(V: Inteiro)
inicio
   se  (V%2 = 0) entao
       Escreval("O numero ", V, " e PAR")
   senao
       Escreval("O numero ", V, " e IMPAR")
   FimSe
FimProcedimento
inicio
   Escreva("Digite um numero: ")
   Leia  (N)
   ParOuImpar(N)
fimalgoritmo
