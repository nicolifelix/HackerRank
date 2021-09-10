# Você viu a estrutura de controle each usada em uma matriz. Da mesma forma, também está disponível para a coleção Hash.

# Ativado Hash, funciona de duas maneiras.

# Considere o exemplo

user = {"viv" : 10, "simmy" : 20, "sp2hari" : 30}
Usando cada um, cada elemento pode ser iterado como

user.each do |key, value|
    # some code on individual key, value
end

# ou

user.each do |arr|
    # here arr[0] is the key and arr[1] is the value
end

# Sua tarefa é usar eache iterar através da coleção e imprimir o par de valores-chave em linhas separadas.

# Dica

puts key
puts value


#resposta

def iter_hash(hash)
    hash.each do |key, value|
        puts key
        puts value 
    end    
end

