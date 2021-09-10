Ruby oferece vários enumeráveis em coleções que verificam a validade dos objetos dentro dele.

Considere o seguinte exemplo:

> arr = [1, 2, 3, 4, 5, 6]
=> [1, 2, 3, 4, 5, 6]

> h = {"a" => 1, "b" => 2, "c" => 3}
=> {"a" => 1, "b" => 2, "c" => 3}


O any? método retorna true se o bloco alguma vez retornar um valor diferente de false ou nil para qualquer elemento passado a ele:


> arr.any? {|a| a % 2 == 0} # verifica se algum número na matriz é par 
=> True

> h.any? {|key, value| value.is_a? String} # verifica se algum valor do objeto Hash é do tipo String 
=> False

A all? método retorna true se o bloco nunca retorna false ou nil para qualquer elemento passado a ele:

> arr.all? {|a| a.is_a? Integer} # verifica se todos os elementos da matriz são do tipo Inteiro 
=> True

> h.all? {|key, value| key.is_a? String} # verifica se todas as chaves do objeto Hash são do tipo String 
=> True


O none? método retorna true se o bloco nunca retorna true para qualquer elemento passado a ele:

> arr.none? {|a| a.nil?} # Verifica se nenhum dos elementos na matriz é do tipo nulo 
=> True

> h.none? {|key, value| value < 3} # verifica se todos os valores do objeto Hash são menores que 3 
=> False


O método find retorna o primeiro elemento para o qual o bloco não é false:

> arr.find {|a| a > 5} # retorna o primeiro elemento maior que 5 e `nil` se nenhum satisfizer a condição 
=> 6

> h.find {|key, value| key == "b"} # retorna um Array da primeira correspondência [chave, valor] que satisfaz a condição e nulo caso contrário 
=> ["b", 2]

Tarefa
Com base no que você aprendeu acima, conclua as funções declaradas em seu editor abaixo.


def func_any(hash)
   # Verifique e retorne verdadeiro se algum objeto-chave dentro do hash for do tipo Inteiro
    # Se não for encontrado, retorna falso.
    
    
end

def func_all(hash)
    
# Verifique e retorne verdadeiro se todos os valores dentro do hash forem inteiros e <10
    # Se nem todos os valores satisfazem isso, retorna falso.
end

def func_none(hash)
   # Verifique e retorne verdadeiro se nenhum dos valores dentro do hash for nulo
    # Se algum valor contiver nulo, retorna falso.
end

def func_find(hash)
   # Verifique e retorne o primeiro objeto que satisfaça uma das seguintes propriedades:
    # 1. Há um par [chave, valor] em que a chave e o valor são números inteiros e o valor é <20
    # 2. Há um par [chave, valor] em que a chave e o valor são Strings e o valor começa com `a`.
end





def func_any(hash)
    hash.any? {|key, value| key.is_a? Integer}
    hash.any? {|key,value| key.is_a? Fixnum}
end

def func_all(hash)
    # Check and return true if all the values within the hash are Integers and are < 10
    # If not all values satisfy this, return false.
    hash.all? {|key, value| value.is_a? Integer and value < 10}
    hash.all? {|key, value| value.is_a? Fixnum and value < 10}
end

def func_none(hash)
    # Check and return true if none of the values within the hash are nil
    # If any value contains nil, return false.
     hash.none? {|key, value| value.nil? }
     hash.none? {|key, value| value.nil? }
end

def func_find(hash)
    # Check and return the first object that satisfies either of the following properties:
    #   1. There is a [key, value] pair where the key and value are both Integers and the value is < 20 
    #   2. There is a [key, value] pair where the key and value are both Strings and the value starts with `a`.
    hash.find {|key, value| (key.is_a? Integer and value.is_a? Integer and value < 20) || (key.is_a? String and value.is_a? String and value.start_with? 'a')}
end