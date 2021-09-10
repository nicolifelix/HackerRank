# Neste desafio, mostraremos maneiras pelas quais podemos adicionar pares de valores-chave a objetos
#  Hash, excluir chaves deles e retê-los com base em uma lógica.

# Considere o seguinte objeto Hash:

h = Hash.new
h.default = 0

# Um novo par de valores-chave pode ser adicionado usando ou o storemétodo

h [chave] = valor

ou

h.store(key, value)

# Uma chave existente pode ser excluída usando o método delete

h.delete (chave)

# Para seleção e exclusão destrutiva, podemos usar keep_if e delete_if como visto em Array-Selection

> h = {1 => 1, 2 => 4, 3 => 9, 4 => 16, 5 => 25}
 => {1 => 1, 2 => 4, 3 => 9, 4 => 16, 5 => 25}

> h.keep_if {|key, value| key % 2 == 0} # or h.delete_if {|key, value| key % 2 != 0}
 => {2 => 4, 4 => 16}

# Observação

# Para a selecção não destrutiva ou rejeição, podemos usar select, reject e drop_while semelhante para matriz-selecção

# Neste desafio, um objeto hash chamado hackerrankjá foi criado. Você tem que adicionar

# Um par de valores-chave [543121, 100] para o hackerrank objeto usando store
# Retenha todos os pares de valores-chave onde as chaves são inteiros (dica: is_a? Integer)
# Exclua todos os pares de valores-chave onde as chaves têm valores pares.


# Enter your code here
hackerrank.store(543121, 100)

hackerrank.keep_if do
    |key, value| key.is_a?(Integer) 
end

hackerrank.delete_if do 
    |key, value| key % 2 == 0 
end
