
require 'capybara'
require 'capybara/cucumber'
require 'allure-cucumber'
require 'site_prism'

case ENV["BROWSER"]
when "firefox"
  @driver = :selenium
when "chrome"
  @driver = :selenium_chrome
when "fire_headless"
  @driver = :selenium_headless
when "chrome_headless"
  Capybara.register_driver :selenium_chrome_headless do |app|
    Capybara::Selenium::Driver.load_selenium
    browser_options = ::Selenium::WebDriver::Chrome::Options.new.tap do |opts|
      opts.args << "--headless"
      opts.args << "--disable-gpu"
      opts.args << "--disable-site-isolation-trials"
      opts.args << "--no-sandbox"
      opts.args << "--disable-dev-shm-usage"
    end
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: browser_options)
  end

  @driver = :selenium_chrome_headless
else
  raise "Navegador incorreto, variavel @driver está vazia :("
end

Capybara.configure do |config|
    config.default_driver = @driver
    config.app_host = 'https://aiqfome.com'
    config.default_max_wait_time = 15
end

Allure.configure do |config|
    config.results_directory = '/logs'
    config.clean_results_directory = true
end