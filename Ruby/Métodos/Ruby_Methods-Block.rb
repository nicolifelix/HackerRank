# As funções de ordem superior são um dos principais componentes da programação funcional.

# Uma função de ordem superior é uma ferramenta que recebe outras funções como parâmetros ou as retorna como resultado.

# Os blocos são métodos sem nome que podem ser passados ​​para outro método como parâmetro.
# Passar um bloco para um método é uma ótima maneira de abstração de dados.

# Os blocos podem ser definidos com uma palavra-chave do ... end ou chaves { ... }.

# Exemplo:

# a). Passando um bloco para um método que não leva nenhum parâmetro

CÓDIGO
def call_block
    puts "Start of method."
    yield
    puts "End of method."
end 
call_block do 
    puts "I am inside call_block method."
end

OUTPUT

Start of method.
I am inside call_block method.
End of method.



# Neste exemplo, um bloco é passado para o método call_block .
# Para invocar este bloco dentro do método, usamos uma palavra-chave yield,.
# A chamada yield executará o código dentro do bloco fornecido ao método.

# b). Passar um bloco para um método que usa um ou mais parâmetros.

CÓDIGO
def calculate(a,b)
    yield(a, b)
end

puts calculate(15, 10) {|a, b| a - b}  

OUTPUT

5

# Neste exemplo, definimos um método de cálculo que leva dois parâmetros e .
# A instrução yield invoca o bloco com parâmetros a e b, e o executa.

# Tarefa

# Você recebe um código parcialmente completo. Sua tarefa é preencher os espaços em branco ( _______).
# O método fatorial calcula: n!{n x n - 1x...2x1}


def factorial
    yield
end

n = gets.to_i
factorial do 
    puts (1..n).reduce(:*)
end