# Neste tutorial, aprenderemos sobre os métodos da classe String que nos ajudam a pesquisar e substituir partes da string com base em um texto ou padrão.

# String.include?(string)- Retorna true se str contém a string ou caractere fornecido. Muito simples!

> "hello".include? "lo"   #=> true  
> "hello".include? "ol"   #=> false  

# String.gsub(pattern, <hash|replacement>)- Retorna uma nova string com todas as ocorrências do padrão substituídas pelo segundo argumento:. O padrão é tipicamente um Regexp , mas uma string também pode ser usada.

    "hello".gsub(/[aeiou]/, '*')          
    => "h*ll*"

    "hello".gsub(/([aeiou])/, '')             
    => "hll"

# Qualquer um dos métodos dependerá do problema que você está tentando resolver e da natureza do comportamento de entrada-saída que você deseja.

# Neste desafio, sua tarefa é escrever os seguintes métodos:

# mask_article que acrescenta tags de strike em torno de certas palavras em um texto. O método leva 2 argumentos: uma string e um array de palavras . Em seguida, substitui todas as ocorrências de palavras no texto pela versão modificada.

# Um método auxiliar strike, dado uma string, anexa tags HTML tachadas ao redor dela. A tag HTML tachada é <strike></strike>.

# Por exemplo:

> strike("Meow!") 
=> "<strike>Meow!</strike>"

> strike("Foolan Barik")  
=> "<strike>Foolan Barik</strike>"

> mask_article("Hello World! This is crap!", ["crap"])
"Hello World! This is <strike>crap</strike>!"


# Aplique o método auxiliar para completar seu método principal.
def mask_article(str, arr)
    arr.each { |s| str.gsub!(/#{s}/, strike(s)) }
    str
end

def strike(str)
    "<strike>" + "#{str}" + "</strike>"
end