algoritmo "Atividade79"
//Escreva um algoritmo que permita a leitura das notas de uma turma de 20 alunos. Calcular a média
//da turma e contar quantos alunos obtiveram nota acima desta média calculada. Escrever a média da
//turma e o resultado da contagem.
var
 nota: vetor[1..20] de real
 soma, media: real
 i, cont: inteiro
inicio
soma <- 0
 para i de 1 ate 20 faca
 escreval ("Digite a nota do ", i, "º aluno: ")
 leia (nota[i])
 soma <- soma + nota[i]
 fimpara
 media <- soma / 20
 cont <- 0
 para i de 1 ate 20 faca
 se (nota[i] > media) entao
 cont <- cont+1
 fimse
 fimpara
 escreval("Média: ",media)
 escreval(cont, " alunos obtiveram nota acima da média.")
fimalgoritmo
