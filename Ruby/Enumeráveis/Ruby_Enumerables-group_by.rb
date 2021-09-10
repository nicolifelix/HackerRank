Outra função frequentemente usada com coletas de dados é aquela que agrupa os elementos de acordo com algum resultado de avaliação.

Considere o seguinte exemplo. Digamos que você tenha uma lista de 100 inteiros e deseja agrupá-los de acordo com seus valores pares e ímpares.

Em Ruby, você pode fazer isso facilmente usando o group_by método fornecido pelo módulo Enumerable.

>  ( 1..5 ). group_by  { | x |  x % 2 } 
{ 1 => [ 1 , 3 , 5 ],  0 => [ 2 ,  4 ]}


Claro que este é um exemplo muito simples e seu uso pode ser muito complicado por natureza.

Neste desafio, sua tarefa é agrupar os alunos em duas categorias correspondentes às notas obtidas em um teste. A lista de alunos será fornecida em um hash marks com o nome do aluno como chave e as notas obtidas (em 100) como par de valores, juntamente com o pass_marks como argumento.

O método group_by_marks deve retornar um Hash contendo um array de alunos que passaram como valor para a chave Passed  e aqueles que falharam como valor para a chave Failed. Se uma determinada chave estiver vazia, não retorne essa chave.

Por exemplo,


> marks = {"Ramesh":23, "Vivek":40, "Harsh":88, "Mohammad":60}
> group_by_marks(marks, 30)
=> {"Failed"=>[["Ramesh", 23]], "Passed"=>[["Vivek", 40], ["Harsh", 88], ["Mohammad", 60]]}





def group_by_marks(marks, pass_marks)
    marks.group_by {|key, mark| mark > pass_marks ? "Passed" : "Failed"}
end