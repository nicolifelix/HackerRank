# Um cenário comum que surge ao usar uma coleção de qualquer tipo é realizar um único tipo de operação com todos os elementos e coletar o resultado.

# Por exemplo, uma sum(array)função pode desejar adicionar todos os elementos passados ​​como matriz e retornar o resultado.

# Uma abstração generalizada da mesma funcionalidade é fornecida em Ruby em nome de reduce( injecté um alias). Ou seja, esses métodos iteram em uma coleção e acumulam o valor de uma operação em elementos em um valor base usando um operador e retornam esse valor base no final.

# Vamos dar um exemplo para melhor compreensão.

>>> (5..10).inject(1) {|product, n| product * n }
=> 151200


# No exemplo acima, temos os seguintes elementos: um valor base 1 , um enumerável (5..10) e um bloco com expressões que instruem como adicionar o valor calculado ao valor base (ou seja, multiplique o elemento da matriz por produto , onde o produto é inicializado com o valor base)

# Portanto, a execução segue mais ou menos assim:

# loop 1
n = 1
product = 1
return value = 1*1

# loop 2
n = 2
product = 1
return value = 1*2

n = 3
product = 2
return value = 2*3

..


# Como você pode notar, o valor base é atualizado continuamente conforme a expressão percorre o elemento do contêiner, retornando assim o valor final do valor base como resultado.

# Outros exemplos,

>>> (5..10).reduce(1, :*)   # :* is shorthand for multiplication
=> 151200


# Considere uma sequência aritmético-geométrica onde o  termo da sequência tn = n2 + 1,n >= 0exit é denotado por . Neste desafio, sua tarefa é completar o summétodo que pega um número inteiro ne retorna a soma aos n termos da série.