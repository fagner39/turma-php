algoritmo "exerc�cio 25"
//Fa�a um algoritmo para ler: n�mero da conta do cliente,
//saldo, d�bito e cr�dito. Ap�s, calcular e
//escrever o saldo atual (saldo atual = saldo - d�bito + cr�dito).
//Tamb�m testar se saldo atual for maior
//ou igual a zero escrever a mensagem 'Saldo Positivo',
//sen�o escrever a mensagem 'Saldo Negativo'.
var
num_conta : inteiro
saldo, debito, credito, saldo_atual : real
inicio
escreva ("Informe o n�mero da conta: ")
leia (num_conta)
escreva ("Informe o saldo: ")
leia (saldo)
escreva ("Informe o d�bito e o cr�dito, respectivamente: ")
leia (debito, credito)

   saldo_atual <- (saldo - debito) + credito

   se saldo_atual >= 0 entao
        escreval ("Saldo positivo")
   senao
        escreval ("Saldo negativo")
   fimse
fimalgoritmo
