algoritmo "Atividade85"
// Fa�a um algoritmo para ler e armazenar em um vetor a temperatura m�dia de todos os dias do ano.
//Calcular e escrever:
//a) Menor temperatura do ano
//b) Maior temperatura do ano
//c) Temperatura m�dia anual
//d) O n�mero de dias no ano em que a temperatura foi inferior a m�dia anual
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
 escreval("Temperatura m�dia do ano ",media)
 escreval("N�mero de dias com temperatura foi inferior a m�dia anual ",quantidade)
fimalgoritmo
