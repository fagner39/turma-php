algoritmo "EXERC�CIO 29"
// Ler 3 valores (considere que n�o ser�o informados valores iguais)
//e escrever a soma dos 2
//maiores.
var
a, b, c, soma : inteiro
inicio
escreval("Digite tr�s n�meros inteiros: ")
   leia(a,b,c)

   soma <- 0
   se a < b entao
      se b < c entao
         soma <- b + c
      senao
         soma <- c + b
      fimse
   senao
      se b < c entao
         se a < c entao
            soma <- a + c
         senao
            soma <- c + a
         fimse
      senao
         se a < b entao
            soma <- a + b
         senao
            soma <- b + a
         fimse
      fimse
   fimse
   escreval("A soma dos dois maiores � ", soma)
fimalgoritmo
