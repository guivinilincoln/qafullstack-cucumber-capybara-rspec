require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'os'

require_relative "helpers" 

World(Helpers) #faz com que eu possa acessar os helpers em qualquer ligar do porjeto


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "http://localhost:8080/"
    config.default_max_wait_time = 10 #aumenta o timeout para achar elementos
end

