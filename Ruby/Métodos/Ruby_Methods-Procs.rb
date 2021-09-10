A passagem de blocos é uma maneira de passar funções como argumentos para outras funções.

Os blocos são uma das poucas exceções à regra "tudo é um objeto" em Ruby. Os blocos não são objetos e não podem ser salvos em variáveis.

Os objetos Proc são blocos de código que podem ser associados a um conjunto de variáveis ​​locais. Você pode pensar em umobjeto proc como um bloco "salvo".

Procs são uma ótima maneira de manter seu código DRY . DRY significa Do Not Repeat Yourself .

Exemplo:

CÓDIGO

def foo(a, b, my_proc)
    my_proc.call(a, b)
end

add = proc {|x, y| x + y}

puts foo(15, 10, add)

SAÍDA

25

Neste exemplo, criamos o proc add , que adiciona dois números.
O proc add é passado como um parâmetro para o método foo .
No método foo , my_proc.call(a, b)executa o proc.

Tarefa

Você recebe um código parcialmente completo. Sua tarefa é preencher os espaços em branco ( ______).

O método square_of_sum calcula a soma dos elementos em uma matriz de entrada e retorna o quadrado dos elementos somados.

Por exemplo :

Input array: [1, 2, 3]
Output: 36




def square_of_sum (my_array, proc_square, proc_sum)
    sum = proc_sum.call(my_array)
    proc_square.call(sum)
end

proc_square_number = #_________________________
proc_sum_array     = #_________________________
my_array = gets.split().map(&:to_i)

puts square_of_sum(my_array, proc_square_number, proc_sum_array)