Feature: Buscar restaurantes próximos a minha residência 
  
   Como visitante quero efetuar uma busca por restaurantes e pratos 
   mais próximos a minha residência.

   Scenario Outline: Buscar restaurantes
   #dado que
   Given Eu acesso o ifood 
   #Quando
   When Eu busco pelo cep "<cep>"
   #E
   And Eu digito o numero  residêncial "<numero>"
   #entao
   Then Eu seleciono o primeiro restaurantes da lista.

   Examples:
   | cep | numero| 
   | 14800130 | 15|
   |13560180  | 55|
   |14085010  |100|
   |14406835  |78|

   








   