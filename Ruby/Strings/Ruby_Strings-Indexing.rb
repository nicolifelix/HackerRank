# Ao indexar uma string, você extrai ou altera as partes. Esta é talvez a operação mais importante que você deseja realizar em strings. A classe string fornece um []operador de colchetes semelhante a um array , que permite extrair partes da string e também alterar o conteúdo quando usado no lado esquerdo de uma atribuição.

# Considere os seguintes exemplos:

> str = "Hello World!"
> str[str.size-1]
"!"
> str[-1] # first character from the end of the string
"!"
> str[-2] # second last character
"d"
> str[0] # first character
"H"


# Mais frequentemente, você deseja extrair partes específicas da string em vez de caracteres individuais. Para fazer isso, use operandos separados por vírgula entre colchetes. O primeiro operando especifica um índice (que pode ser negativo) e o segundo especifica um comprimento (que deve ser não negativo).

# Considere o exemplo abaixo:

> str[0,4] # first four characters
"Hell"
> str[6,3] # 3 characters starting from index 6 ( 0-indexing )
"Wor"
> str[-1, 1] # 1 character starting from the END of string
"!"

# Os mesmos exemplos mostrados acima podem ser usados ​​para atribuição / exclusão de caracteres. Podemos inserir caracteres dando uma atribuição não vazia ou deletar caracteres no intervalo dando uma atribuição vazia.

# Considere o exemplo abaixo:

> str = "Hello"
> str[str.size, 0] = " World!" # append by assigning at the end of the string
> str
"Hello World!"
> str[5, 0] = "," # insert a comma after the 5th position
> str[5, 6] = ""  # delete 6 characters starting from index 5. 
"Hello!"
> str[5,1] = " World" # replace the string starting from index 5 and of length 1 with the given string. 

# Mas espere, tem mais! Ruby também permite que você indexe strings usando um objeto Range ou Regexp . Discutiremos esses métodos no futuro.

# Neste desafio, sua tarefa é codificar um serial_average método descrito abaixo:

# É preciso uma seqüência de largura fixa em formato: SSS-XX.XX-YY.YY. SSS é um número de série de três dígitos XX.XX e YY.YY são números de dois dígitos incluindo até dois dígitos decimais.
# Ele retorna uma string contendo a resposta em formato SSS-ZZ.ZZ onde SSS é o número de série dessa string de entrada e ZZ.ZZ é a média de XX.XX e YY.YY.
# Todos os números são arredondados para duas casas decimais.
# Por exemplo:

> serial_average('002-10.00-20.00')
"002-15.00"

# Você pode usar a interpolação de string para inserir o código Ruby em uma string.

# Por exemplo:

> tmp = 123
> "Hello #{tmp}"
Hello 123


#Your code here
def serial_average(s)
    ns = s[0,3] #extrair partes específicas da string
    n1 = s[4,5].to_f #extrair partes específicas da string e transformar em numero => 10.0
    n2 = s[10,5].to_f #extrair partes específicas da string e transformar em numero => 20.0
    md = ((n1+n2)/2).round(2) #realizar o calculo da média e deixar com 2 digitos decimas => 15.0
    "#{ns}-#{md}" #imprimir
end