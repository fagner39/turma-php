algoritmo "exercício 25"
//Faça um algoritmo para ler: número da conta do cliente,
//saldo, débito e crédito. Após, calcular e
//escrever o saldo atual (saldo atual = saldo - débito + crédito).
//Também testar se saldo atual for maior
//ou igual a zero escrever a mensagem 'Saldo Positivo',
//senão escrever a mensagem 'Saldo Negativo'.
var
num_conta : inteiro
saldo, debito, credito, saldo_atual : real
inicio
escreva ("Informe o número da conta: ")
leia (num_conta)
escreva ("Informe o saldo: ")
leia (saldo)
escreva ("Informe o débito e o crédito, respectivamente: ")
leia (debito, credito)

   saldo_atual <- (saldo - debito) + credito

   se saldo_atual >= 0 entao
        escreval ("Saldo positivo")
   senao
        escreval ("Saldo negativo")
   fimse
fimalgoritmo
