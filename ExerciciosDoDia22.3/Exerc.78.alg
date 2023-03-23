algoritmo "Atividade78"
// Escreva um algoritmo que permita a leitura dos nomes de 10 pessoas e armaze os nomes lidos em
//um vetor. Após isto, o algoritmo deve permitir a leitura de mais 1 nome qualquer de pessoa e depois
//escrever a mensagem ACHEI, se o nome estiver entre os 10 nomes lidos anteriormente (guardados no
//vetor), ou NÃO ACHEI caso contrário.
var
nomes: vetor [1..10] de caracter
 nome: caracter
 i: inteiro
 encontrou: logico
inicio
para i de 1 ate 10 faca
 escreval("Digite o ", i, "º nome")
 leia(nomes[i])
 fimpara
 escreval("Agora, digte um nome a ser buscado.")
 leia(nome)

 encontrou<-falso
 para i de 1 ate 10 faca
 se (nomes[i] = nome) entao
 encontrou<-verdadeiro
 fimse
 fimpara

 se (encontrou = verdadeiro) entao
 escreval("O nome encontra-se no vetor!")
 senao
 escreval("O nome não se econtra no vetor!")
 fimse

fimalgoritmo
