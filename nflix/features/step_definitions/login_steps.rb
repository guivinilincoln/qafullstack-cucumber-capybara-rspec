#StepDefinitions não deve conter logica

Quando('eu faço login com {string} e {string}') do |email, senha|
    @login_page.go
    @login_page.with(email, senha) #faz login com email e senha
  end
  
  Então('devo ser autenticado') do
    expect(get_token).to be 147
  end
  
  E('devo ver {string} na área logada') do |usuario|
    expect(@sidebar.loggerd_user).to eql expect_name #usando o hooks para instanciar a classe
  end

  Então('não devo ser autenticado') do
    js_script = ' return window.localStorage.getItem("default_auth_token");'
    token = page.execute_script(js_script)
    expect(token).to be nil #espera um token null
  end
  
  E('devo ver a mensagem de alerta {string}') do |mensagem|
    @login = LoginPage.new
    expect( @login.alert).to eql mensagem
  end