algoritmo "Atividade83"
// Fa�a um algoritmo para ler 20 n�meros e armazenar em um vetor. Ap�s a leitura total dos 20
//n�meros, o algoritmo deve escrever esses 20 n�meros lidos na ordem inversa.
var
indice: inteiro
numeros: vetor [1..20] de inteiro
inicio
para indice de 1 ate 20 faca
  escreval("Digite o ", indice, "� numeros")
 leia(numeros[indice])
 fimpara

 para indice de 20 ate 1 passo -1 faca
 escreval(numeros[indice])
 fimpara

fimalgoritmo
