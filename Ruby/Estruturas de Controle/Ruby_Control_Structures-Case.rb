Esta é uma pergunta bônus. Sinta-se à vontade para pular para o próximo desafio.

HackerRank é escrito em RoR e temos várias classes definidas nele. Alguns deles são

Hacker
Submission
TestCase
Contest
etc.

Você recebeu uma função em que um objeto que pode ou não ser do tipo mencionado acima 
é enviado como um argumento. Você deve usar a caseestrutura de controle em Ruby para 
identificar a classe à qual o objeto pertence e imprimir a seguinte saída:

se Hacker, imprima "É um Hacker!"
se Submission, imprima "É uma submissão!"
if TestCase, imprima "É um TestCase!"
se Contest, imprima "É um concurso!"
para qualquer outro objeto, imprima "É um modelo desconhecido"
Observação

use case(instrução switch de Ruby)
usar putspara impressão
Ruby Docs no caso



def identify_class(obj)
    case obj
    when Hacker
    puts "It's a Hacker!"
    when Submission
    puts "It's a Submission!"
     when TestCase
    puts "It's a TestCase!"
     when Contest
    puts "It's a Contest!"
    else
    puts "It's an unknown model"
    end
end