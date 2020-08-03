#language:pt

Funcionalidade: Login
    Para que eu possa gerenciar os filmes do catálogo NinjaFlix
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com o meu email e senha

@login_happy
    Cenario: Acesso 
        Quando eu faço login com "tony@stack.com" e "pwd123"
        Então devo ser autenticado
        E devo ver "Tony Stark" na área logada

@login_test
    Esquema do Cenario:  Login sem sucesso
         Quando eu faço login com <email> e <senha>
         Então não devo ser autenticado
         E devo ver a mensagem de alerta <mensagem>

         Exemplos:
         |email             |senha     |texto                           |
         | "tony@stack.com" | "111111" | "Usuario e/ou senha inválida"  |
         | "404@gmail.com"  | "abc123" | "Usuario e/ou senha inválida"  |
         | "             "  | "abc123" | "Opps.. Cadê o email?"         |
         | "404@gmail.com"  | " "      | "Opps.. Cadê o senha??"        |



    Cenario: Senha inválida
        Quando eu faço login com "tony@stack.com" e "111111"
        Então não devo ser autenticado
        E devo ver a mensagem de alerta "Usuario e/ou senha inválida"

    Cenario: Usuario não existe
        Quando faço login com "404@gmail.com" e "abc123"
        Então não devo ser autenticado
        E devo ver a mensgem de alerta "Usuario e/ou senha inválida"

    Cenario: Email não informado
        Quando faço login com "" e "abc123"
        Então não devo ser autenticado
        E devo ver a mensgem de alerta "Opps.. Cadê o email?"

    Cenario: Senha não informada
        Quando faço login com "404@gmail.com" e ""
        Então não devo ser autenticado
        E devo ver a mensgem de alerta "Opps.. Cadê o senha?"