algoritmo "Atividade86"
// Fa�a um algoritmo para ler 10 n�meros e armazenar em um vetor. Ap�s isto, o algoritmo deve
//ordenar os n�meros no vetor em ordem crescente. Escrever o vetor ordenado.
var
 vet: vetor[1..10] de inteiro
 i,j,aux: inteiro
inicio
para i de 1 ate 10 faca
 escreval("Digite o", i, "� numero:")
 leia(vet[i])
 fimpara

 para j de 10 ate 1 passo -1 faca
 para i de 1 ate j-1 faca
 se (vet[i] > vet[i+1]) entao
 aux <- vet[i]
 vet[i] <- vet[i+1]
 vet[i+1] <- aux
 fimse
 fimpara
 fimpara
 escreval("Vetor Ordenado:")
 para i de 1 ate 10 faca
 escreval(vet[i])
 fimpara
 
fimalgoritmo
