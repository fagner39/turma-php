algoritmo "Atividade83"
// Faça um algoritmo para ler 20 números e armazenar em um vetor. Após a leitura total dos 20
//números, o algoritmo deve escrever esses 20 números lidos na ordem inversa.
var
indice: inteiro
numeros: vetor [1..20] de inteiro
inicio
para indice de 1 ate 20 faca
  escreval("Digite o ", indice, "º numeros")
 leia(numeros[indice])
 fimpara

 para indice de 20 ate 1 passo -1 faca
 escreval(numeros[indice])
 fimpara

fimalgoritmo
