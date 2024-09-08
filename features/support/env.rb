require 'capybara/cucumber'
require 'selenium-webdriver'

# Configura o driver padrão do Capybara para usar Selenium com Chrome
Capybara.default_driver = :selenium_chrome_headless

# Define o tempo máximo de espera para encontrar elementos
Capybara.default_max_wait_time = 5
