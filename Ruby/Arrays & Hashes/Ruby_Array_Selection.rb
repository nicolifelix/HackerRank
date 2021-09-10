# A classe array também permite selecionar e retornar um subconjunto de um array com base em alguns critérios 
# definidos em um bloco (um bloco é um grupo de código dentro de {} que aceita uma variável e retorna um valor).

# Seleção de elementos que satisfaçam um determinado critério
# Rejeitar elementos que satisfaçam um determinado critério


> arr = [3, 4, 2, 1, 2, 3, 4, 5, 6]

> arr.select {|a| a > 2}
=> [3, 4, 3, 4, 5, 6]

> arr.reject {|a| a > 2}
=> [2, 1, 2]

> arr
=> [3, 4, 2, 1, 2, 3, 4, 5, 6]

> arr.drop_while {|a| a > 1} #remove elementos até que o bloco retorne falso pela primeira vez 
=> [1, 2, 3, 4, 5, 6]


# Como você pode ver, a matriz original permanece inalterada. Isso é chamado de seleção não destrutiva.

# Para comportamento destrutivo (mudança para a matriz original), Ruby fornece os seguintes métodos:

> arr = [3, 4, 2, 1, 2, 3, 4, 5, 6]  

> arr.delete_if {|a| a < 2}
 => [3, 4, 2, 2, 3, 4, 5, 6]  

> arr.keep_if {|a| a < 4}  
=> [3, 2, 2, 3]


# Observação

# Um elemento em um bloco é selecionado, rejeitado, excluído ou mantido com base no valor True ou False gerado por aquele bloco naquele elemento.
# Para um comportamento destrutivo para select e/ou reject ou qualquer método que se queira impor uma mudança na matriz original, um ! pode ser usado no final do método, ou seja, select! e reject!
# Neste desafio, você deve completar as funções abaixo usando a sintaxe explicada acima.


def select_arr(arr)
    # select and return all odd numbers from the Array variable `arr`
      arr.select { |a| a % 2 != 0}
  end
  
  def reject_arr(arr)
    # reject all elements which are divisible by 3
      arr.reject {|a| a % 3 == 0}
  end
  
  def delete_arr(arr)
    # delete all negative elements
      arr.delete_if { |a| a < 0 }
  end
  
  def keep_arr(arr)
    # keep all non negative elements ( >= 0)
      arr.keep_if { |a| a >= 0 }
  end