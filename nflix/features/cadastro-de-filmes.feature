#language:pt
@login
Funcionalidade: Cadastro de filmes
    Para que eu possa disponibilizar novos títulos no catálogo
    Sendo um gestor de catálogo
    Posso cadastrar um novo filme

    @new_movie
    Esquema do Cenario: Novo filme
        O gestor de catálogo cadastrar um novo filme através do formulário
        e um novo registro é inserido no catálogo Ninjaflix.

        Dado que <codigo> é um novo filme
        Quando eu faço o cadastro deste filme
        Então devo ver o novo filme na lista

        Exemplos:
            | codigo     |
            | "ultimato" |
            | "spider"   |
            | "jocker"   |

    @cadastro_invalido
    Esquema do Cenario: Campos obrigatórios
        O gestor de catálogo tenta cadastrar um novo filme, mas esquece
        de preencher um dos campos que são obrigatórios, em seguida, o sistema
        exibe um notificação para o usuário.


        Dado que <codigo> é um novo filme
        Quando eu faço o cadastro deste filme
        Então devo ver a notificação <texto>

        Exemplos:
            | codigo          | texto                                        |
            |"no_title"       |"Oops - Filme sem titulo. Pode isso Arnaldo?" |
            |"no-status"      |"Oops - O status deve ser informado!"         |
            |"no-year"        |"Oops - Faltou o ano de lançamento também!"   |
            |"no-release_date"|"Oops - Quase lá, só falta a data de estréia!"|


    @dup_movie
    Cenario: Duplicado
        O gestor de catálogo tenta cadastrar um filme, porem o titulo
        já foi cadastrado em outro momento e o sistema notifica o usuário
        informando que o titulo já existe.

        Dado que "existing_title" é um novo filme
        Quando eu faço o cadastro deste filme
        Então devo ver a notificação "Oops - Este titulo já existe no Ninjaflix."


