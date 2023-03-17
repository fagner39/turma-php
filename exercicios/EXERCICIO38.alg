algoritmo "exercício 38"
// Faça um algoritmo para ler um número que é um código de usuário.
//Caso este código seja
//diferente de um código armazenado internamente no algoritmo (igual a 1234)
//deve ser apresentada a
//mensagem ‘Usuário inválido!’. Caso o Código seja correto,
//deve ser lido outro valor que é a senha. Se
//esta senha estiver incorreta (a certa é 9999)
//deve ser mostrada a mensagem ‘senha incorreta’. Caso a
//senha esteja correta, deve ser mostrada a mensagem ‘Acesso permitido’.
var
codigo, senha: inteiro
inicio
escreval("Digite o código do usuário: ")

leia(codigo)

se (codigo<>1234) entao

escreval("Usuário inválido")

senao

escreval("Digite a Senha: ")

leia(senha)

se (senha<>9999) entao

escreval ("Senha incorreta!")

senao

escreval ("Acesso Permitido!")

fimse

fimse


fimalgoritmo
