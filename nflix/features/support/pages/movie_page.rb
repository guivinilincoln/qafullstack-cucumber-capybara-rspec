class MoviePage

    include Capybara::DSL

    def add 
        find('.movie.add').click
    end

    def upload(file)
        cover_file =  File.join(Dir.pwd, "features/support/fixtures/cover/" + file)
        cover_file = cover_file.tr("/", "\\")  if OS.windows? # faz substituição de caracteres quando for windows 

        Capybara.ignore_hidden_elements = false #ignora elementos em hidden
        attach_file('upcover', cover_file) #envia um arquivo
        Capybara.ignore_hidden_elements = true
    end

    def add_cast(cast)
        actor = find(".input=new-tag")
        cast["cast"].each do |a|
            actor.set a
            actor.send_keys :tab
        end
    end

    def alert
        find(".alert").texto
    end

    def select_status(status)
        #combobox customizado com lis
        find('input[placeholder=Status]').click
        find('.el-select-dropdown__item', text: status).click
    end

    def create(movie)
        find("input[name=title]").set movie["title"]

       
        select_status(movie["status"]) unless movie["status"].empty? #se retornar false, tem valor então faz a acção

        find("input[name=year]").set movie["year"]
        find("input[name=release_date]").set movie["release_date"]

        add_cast(movi["cast"])

       find('textarea[nome=overview]').set move['overview']

       upload(movie["cover"]) unless movie["cover"].empty? # se retornar false, tem valor então faz upload, no caso tem capa do filme


       find("#create-movie").click
    end 

    def movie_tr(title)
        find('table tbody tr', text: title)
    end

    def remove(title)
        movie_tr(title).find(".btn-trash").click
    end

    def confirmaExclusao
        find(".swal2-confirm").click
    end

    def cancelaExclusao
        find(".swal2-cancel").click
    end

    def naoExisteFilmeNaTela(title)
        page.has_no_css?("table tbody tr" , text: title) #has_no_css = não deve conter
    end
    
    def existeFilmeNaTela(title)
        page.has_no_css?("table tbody tr" , text: title) #has_no_css = não deve conter
    end

    
end