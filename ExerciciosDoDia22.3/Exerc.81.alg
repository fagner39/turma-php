algoritmo "Atividade81"
// O mesmo exercício anterior, mas agora deve escrever o menor elemento do vetor e a respectiva
//posição dele nesse vetor.
var
Q: vetor[1..20] de inteiro
 i,posicao,menor: inteiro

inicio

para i de 1 ate 20 faca
 escreval("Digite o", i, "º numero:")
 leia(Q[i])
 enquanto (Q[i] < 0) faca
 escreval("Digite um valor positivo")
 leia(Q[i])
 fimenquanto
 fimpara
 
 para i de 1 ate 10 faca
 se (Q[i] > menor) entao
 menor <- Q[i]
 posicao <- i
 fimse
 fimpara

 escreval("menor elemento do vetor Q:", menor)
 escreval("Na posição:", posicao)
fimalgoritmo
