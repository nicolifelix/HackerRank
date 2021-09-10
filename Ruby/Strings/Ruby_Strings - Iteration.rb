# Em nosso tutorial de codificação , aprendemos sobre as diferentes maneiras como Ruby 1.8 e Ruby 1.9 (e versões superiores) representam strings internamente. A principal diferença é uma ampla gama de suporte de codificação (não ascii) nas versões posteriores. Essa mudança, no entanto, também revisa a maneira como as strings foram iteradas entre as duas versões.

# No Ruby 1.8, há um único eachmétodo (lembra de Enumerable?) Que permitia iterar em linhas de dados. Embora possa parecer uma opção lógica, como alguém faria para iterar cada byte ou cada caractere? Acontece que não era tão limpo, e as pessoas tiveram que recorrer a truques para algumas dessas funcionalidades.

# Com o Ruby 1.9, eachfoi removido da Stringclasse e não é mais um Enumerable. Em vez disso, temos escolhas mais explícitas com base no que precisamos iterar - bytes, chars, linhas ou pontos de código.

# each_byte itera sequencialmente por meio de bytes individuais que constituem uma string;
# each_charitera os caracteres e é mais eficiente do que a []indexação de operador ou caractere;
# each_codepoint itera sobre os valores ordinais de caracteres na string;
# each_line itera as linhas.
# Por exemplo:

>  dinheiro  =  "¥ 1000" 
>  dinheiro . each_byte  { | x |  p  x }  #  primeiro  caractere  representado  por  dois  bytes 
194 
165 
49 
48 
48 
48 
>  dinheiro . each_char  { | x |  p  x }  #  imprime  cada  caractere 
"¥" 
"1" 
"0" 
"0" 
"0"

# Sem dúvida, Ruby 1.9 torna a iteração mais fácil de entender e implementar. Portanto, ficaremos com Ruby 1.9 e versões posteriores para os desafios atuais e outros (a menos que seja declarado de outra forma).

# Desafio: Escreva o método count_multibyte_char que recebe uma string como entrada e retorna o número de caracteres multibyte (tamanho do byte> 1) nele.

#Por exemplo:

>  count_multibyte_char ( '¥ 1000 ' ) 
1