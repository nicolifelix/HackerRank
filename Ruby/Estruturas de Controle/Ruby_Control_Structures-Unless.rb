# Você atualizou a pontuação de cada usuário do HackerRank que participou de um concurso.
# Às vezes, os administradores do HackerRank também participam de um determinado concurso, 
# mas toma-se o cuidado de garantir que seus envios não recebam nenhuma pontuação e que sua 
# pontuação não seja atualizada.

# Como no desafio anterior, você recebe um método scoring com um array passado como argumento. 
# Cada elemento da matriz é de classe User.

# User tem dois métodos públicos is_admin? e update_score. Sua tarefa neste desafio é
# usar a estrutura de controle unless e atualizar todos os elementos do array que não o são admins.

# Dica

unless user.is_admin?
    user.update_score
end

# ou

user.update_score unless user.is_admin? 

# O código acima é um liner Ruby.

# Explicação

# unless é o equivalente lógico de if not

#você recebe um método scoring
def scoring(array)
   # update_score de cada usuário na matriz, a menos que o usuário seja admin
   #com um array passado como argumento, Cada elemento da matriz é de classe User
      array.each do |user|
          unless user.is_admin?
              user.update_score
          end
      end    
  end