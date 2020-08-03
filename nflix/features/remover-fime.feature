#language: pt

Funcionalidade: Remover filme
    Para que eu posso manter o catálogo atualizado
    Sendo um gestor de catálogo que encontrou um titulo cancelado/indejesado ou que não teve uma boa aceitação pelo público
    Posso remover este intem

    @rm_movie
    Cenario: Confirmar exclusão
        Dado que "dbz" está no catálogo
        Quando eu solicito a exclusão 
        E eu confirmo a solicitação
        Então este item deve ser removido do catálogo

    @rm_movie_and_cancel
    Cenario: Cancelar exclusão
        Dado que "10_coisas" está no catálogo
        Quando eu solicito a exclusão 
        Mas cancelo a solicitação
        Então este item deve ser permanecer no catálogo