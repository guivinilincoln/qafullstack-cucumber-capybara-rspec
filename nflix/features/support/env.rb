require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'os'

require_relative "helpers" 

World(Helpers) #faz com que eu possa acessar os helpers em qualquer lugar do porjeto

CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["ENV_TYPE"]}.yaml"))  # cria a variavel de ambiante do pc

case ENV["BROWSER"]
when "firefox"
    @driver= :selenium
when "chrome"
    @driver= :selenium_chrome
when "headless"
    @driver = :selenium_chrome_headless
else
    puts "Navegado invalido"
end 

Capybara.configure do |config|
    config.default_driver = @driver
    config.app_host = CONFIG["url"]
    # config.app_host = "http://localhost:8080/"
    config.default_max_wait_time = 5 #aumenta o timeout para achar elementos
end