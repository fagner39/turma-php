algoritmo "Atividade85"
// Faça um algoritmo para ler e armazenar em um vetor a temperatura média de todos os dias do ano.
//Calcular e escrever:
//a) Menor temperatura do ano
//b) Maior temperatura do ano
//c) Temperatura média anual
//d) O número de dias no ano em que a temperatura foi inferior a média anual
var
 temperatura : vetor [1..360] de real
 maior,menor,media : real
 a,quantidade : inteiro

inicio
media <- 0
 para a de 1 ate 360 faca
 escreval("Digite a Temperatura do dia:")
 leia(temperatura[a])
 se (a=1) entao
 maior <- temperatura[a]
 menor <- temperatura[a]
 fimse
 se (temperatura[a] > maior) entao
 maior <- temperatura[a]
 fimse
 se (temperatura[a] < menor) entao
 menor <- temperatura[a]
 fimse
 media <- media + temperatura[a]
 fimpara
 media <- media/360
 para a de 1 ate 360 faca
 se (temperatura[a] < media) entao
 quantidade <- quantidade + 1
 fimse
 fimpara
 escreval("Menor temperatura do ano ",menor)
 escreval("Maior temperatura do ano ",maior)
 escreval("Temperatura média do ano ",media)
 escreval("Número de dias com temperatura foi inferior a média anual ",quantidade)
fimalgoritmo
