    module Helpers
        def get_token
            2.times do #loop do Ruby
                js_script = ' return window.localStorage.getItem("default_auth_token");'
                @token = page.execute_script(js_script)
                break if @token != null
                sleep 1
             end
            @token
        end
    end