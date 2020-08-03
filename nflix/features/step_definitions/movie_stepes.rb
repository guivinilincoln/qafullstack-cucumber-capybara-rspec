
Dado('que {string} é um novo filme') do |movie_code|
  file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/movies.yaml"))  #Dir.pwd pega a pasta raiz do projeto ruby
  # file = File.join(Dir.pwd, "features/support/fixtures/movies.yaml")
  #log file
  @movie = file[movie_code] #usado o ultimato: para filtrar as informações
  Database.new.delete_movie(@movie["title"])
  end
  
  Dado("este filme já existe no catálogo") do
    #@movie_page.add
   #@movie_page.create(@movie)
   Database.new.insert_movie(@movie)
  end

  Quando('eu faço o cadastro deste filme') do
   @movie_page.add
   @movie_page.create(@movie)
  end
  
  Então('devo ver o novo filme na lista') do
   result = @movie_page.movie_tr(@movie["title"])
   expect(result).to have_text @movie["title"]
   expect(result).to have_text @movie["status"]
  end


  Então('devo ver a notificação <texto>') do |expect_alert|
    expect(@movie_page.alert).to eql expect_alert
   end

   Dado('que {string} está no catálogo') do |movie_code| #dynamic steps, posso utilizar até dois steps
    steps %( 
      Dado que "#(movie_code)" é um novo filme
      E eu faço o cadastro deste filme
    )
  end
  
  Quando('eu solicito a exclusão') do
    @movie_page.remove(@movie["title"])
  end
  
  Quando('eu confirmo a solicitação') do
   @movie_page.confirmaExclusao
  end
  
  Então('este item deve ser removido do catálogo') do
    expect(@movie_page.naoExisteFilmeNaTela(@movie["title"])).to be true
  end


  Quando('cancelo a solicitação') do
    @movie_page.cancelaExclusao
  end
  
  Então('este item deve ser permanecer no catálogo') do
    expect(@movie_page.existeFilmeNaTela(@movie["title"])).to be false
  end