class LoginPage
        include Capybara::DSL

    def go
        visit "/login"
    end


    def with(email, pass)
        find("#emailId").set email
        find("#passId").set pass
        click_button "Entrar"
    end


    def email
        find("#emailId")
    end

    def passaword
        find("#passId")
    end

    def sign_in_button
        click_button "Entrar"
    end

    def alert
        find('.alert').text
    end

end