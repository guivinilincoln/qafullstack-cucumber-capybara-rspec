#languange:pt 

Funcionalidade: Remover filme
    Para que eu posso manter o catálogo atualizado
    Sendo um gestor de catálogo que encontrou um titulo cancelado/indejesado ou que não teve uma boa aceitação pelo público
    Posso remover este intem

    Cenario: Excluir filme
        Dado que "Dragon Ball Evolution" faz parte do catálogo
        Quando eu solicito a exclusão 
        E eu confirmo a solicitação
        Então este item deve ser removido do catálogo

   Cenario: Desistir da exclusão
        Dado que "10 coisas que eu odeio em você" faz parte do catálogo
        Quando eu solicito a exclusão 
        Mas cancelo a solicitação
        Então este item deve ser permanecer no catálogo