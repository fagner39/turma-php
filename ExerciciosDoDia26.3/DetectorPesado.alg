algoritmo "DetectorPesado"

var
 I: Inteiro
 N, Pesado: Caractere
 P, Mai: Real
Procedimento Topo()
inicio
  LimpaTela
  Escreval("------------------------------------")
  Escreval(" D E T E C E T O R D E P E S A D O  ")
  Escreval("Maior Peso ate agora: ", Mai, "kg")
  Escreval("------------------------------------")
FimProcedimento
inicio
  Topo()
  Para I <- 1 ate 5 faca
   Escreva("Digite o nome: ")
   Leia(N)
   Escreva("Digite o peso de ", N, ": ")
   Leia(P)
   se  (P>Mai) entao
       MAI <- P
       Pesado <- N
   Fimse
   Topo()
FimPara
   Topo()
   Escreval("A pessoa mais pesada foi ", Pesado, ", com ", Mai, " quilos. ")

fimalgoritmo
