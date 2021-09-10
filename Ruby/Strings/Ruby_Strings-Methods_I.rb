# As informações de texto podem ser lidas de fontes variadas e geralmente são inadequadas para processamento direto ou uso por funções centrais. Isso requer métodos de pós-processamento e correção de dados. Neste tutorial, aprenderemos como remover espaços em branco de flanco e nova linha de strings.

# String.chomp(separator=$/): Retorna uma nova string com o separador fornecido removido do final da string (se houver). Se $ / não foi alterado do separador de registro Ruby padrão, então chomp também remove os caracteres de retorno de transporte (ou seja, ele removerá \ n, \ r e \ r \ n).

> "Hello World!  \r\n".chomp
"Hello World!  "
> "Hello World!".chomp("orld!")
"Hello W"
> "hello \n there".chomp
"hello \n there"


#String.strip - Retorna uma nova string com os espaços em branco à esquerda e à direita removidos.

> "    hello    ".strip
"hello"
> "\tgoodbye\r\n".strip
"goodbye"

#String.chop- Retorna uma nova string com o último caractere removido. Observe que os retornos de carro (\ n, \ r \ n) são tratados como um único caractere e, caso não estejam presentes, um caractere da string será removido .


    > "string\n".chop
    "string"
    > "string".chop
    "strin"    

#Neste desafio, sua tarefa é codificar um método process_text, que recebe uma matriz de strings como entrada e retorna uma única string unida com todos os espaços em branco de flanco e novas linhas removidas. Cada string deve ser separada por um único espaço.
   
> process_text(["Hi, \n", " Are you having fun?    "])
"Hi, Are you having fun?"



def process_text(arr)
    s = ""
    arr.each do |a|
        s += a.strip + " "
    end
    return s.strip
end

# ou

def process_text(arr)
    arr.map {|s| s.strip}.join(" ")
end


