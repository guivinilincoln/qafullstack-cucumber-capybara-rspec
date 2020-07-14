#language: pt

Funcionalidade: Login
    Para que eu possa gerenciar os filmes do catálogo NinjaFlix
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com o meu email e senha

@login_happy
    Cenario: Acesso 
        Quando eu faço login com "tony@stack.com" e "pwd123"
        Então devo ser autenticado
        E devo ver "Tony Stark" na área logada


    Cenario: Acesso 
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