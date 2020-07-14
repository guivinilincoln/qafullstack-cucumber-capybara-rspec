Quando('eu faço login com {string} e {string}') do |email, senha|
    visit "/login"
    find("#emailId").set email # # = Id
    find("#passId").set senha
    click_button "Entrar"
  end
  
  Então('devo ser autenticado') do
    js_script = ' return window.localStorage.getItem("default_auth_token");'
    token = page.execute_script(js_script)
    expect(toke.length).to be 147
  end
  
  Então('devo ver {string} na área logada') do |usuario|
    user = find('.sidebar-wrapper .user .info span')
    expect(user.text).to eql expect_name
  end