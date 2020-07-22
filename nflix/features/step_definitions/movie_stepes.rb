
Dado('que {string} é um novo filme') do |movie_code|
  file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/movies.yaml"))  #Dir.pwd pega a pasta raiz do projeto ruby
  # file = File.join(Dir.pwd, "features/support/fixtures/movies.yaml")
  #log file
  @movie = file[movie_code] #usado o ultimato: para filtrar as informações
  log @movie
  end
  
  Quando('eu faço o cadastro deste filme') do
   @movie_page.add
   @movie_page.create(@movie)
  end
  
  Então('devo ver o novo filme na lista') do
   
  end