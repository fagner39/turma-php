algoritmo "Atividade 44"
// Escreva um algoritmo para ler 2 valores e se o segundo valor informado for ZERO, deve ser lido
//um novo valor, ou seja, para o segundo valor não pode ser aceito o valor zero e imprimir o resultado
//da divisão do primeiro valor lido pelo segundo valor lido. (utilizar a estrutura REPITA).
var
 valor1, valor2, result:real
inicio
valor1 <- 0

  valor2 <- 0

  result <- 0

  escreva("Informe o valor 1: ")

  leia(valor1)

  enquanto valor2 = 0 faca

     escreva("Informe o valor 2: ")

     leia(valor2)

     se(valor2 = 0)entao

        escreval()

        escreval()

        escreval("Valor 2 invalido.")

        escreval()

        escreval()

     fimse

  fimenquanto

  result<- valor1/valor2

  escreval()

  escreval(valor1," dividido por ",valor2," é: ", result)

  escreval()


fimalgoritmo
