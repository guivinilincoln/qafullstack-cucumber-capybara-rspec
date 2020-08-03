require "report_builder"
require "date"

Before do
    @login_page = LoginPage.new
    @movie_page = MoviePage.new
    @sidebar = SideBarView.new

    #page.driver.browser.manage.window.maximize deixa a tela full
    page.current_window.resize_to(1440, 900)

end

Before("@login")do
user = CONFIG["users"]["cat_manager"]
    @login_page.go
    @login_page.with(user["email00"], user["pass"]) 
end

After do |scenario|
    #if scenario.faild?
        temp_shot = page.save_screenshot("log/temp_shot.png")
        screenshot = Base64.encode64(File.open(temp_shot, "rb").read)
        embed(screenshot, "image/png", "Screenshot")
        
    #end
end 

d = DateTime.now
@corrent_date = d.to_s.tr(":", "-")

at_exit do
    ReportBuilder.configure do |config|
        config.input_path = "log/report.json"
        config.report_path = "log/" + @corrent_date
        config.report_types = [:html]
        config.report_title = "NinjaFlix - WebApp"
        config.compress_image = true
        config.additional_info = {"App" => "Web", "Data de execução" => @corrent_date}
        config.color = "indigo"
    end
    ReportBuilder.build_report
end