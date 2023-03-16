algoritmo "exercício 24"

var
 salario,vendas,a,b,c:real
inicio
escreva("Digite o seu salario")
leia(salario)
escreva("total de vendas")
leia(vendas)
se vendas>1500 entao
a<- vendas*0.05
b<- salario+a
escreva("Salario total ",b)
senao
a<- vendas*0.03
b <- salario+a
escreva("Salario total ",b)
fimse
fimalgoritmo
