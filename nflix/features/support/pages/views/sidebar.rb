class SideBarView
    include Capybara::DSL

    def loggerd_user
        find('.sidebar-wrapper .user .info span').text
    end

end